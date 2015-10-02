require 'certifi'
require 'faraday'
require 'json'
require 'soundcloud'

module Nehm
  # Client module contains all SC API interaction
  module Client
    # Set a SSL certificate file path for SC API
    ENV['SSL_CERT_FILE'] = Certifi.where

    # SoundCloud API client ID
    CLIENT_ID = '11a37feb6ccc034d5975f3f803928a32'

    # SoundCloud client object
    SC_CLIENT = Soundcloud.new(client_id: CLIENT_ID)

    # Max limit of tracks for correct SoundCloud requests
    TRACKS_LIMIT = 200

    def self.tracks(count, type, user_id)
      abort "Invalid number of #{type}".red if count == 0

      iterations = count.to_f / TRACKS_LIMIT
      iterations = iterations.ceil

      tracks = []
      rejected_count = 0
      iterations.times do |i|
        limit = count < TRACKS_LIMIT ? count : TRACKS_LIMIT
        count -= TRACKS_LIMIT

        tracks +=
          case type
          when 'likes'
            likes = likes(limit, i * TRACKS_LIMIT, user_id)
            likes.map! { |hash| Track.new(hash) }
          when 'posts'
            posts = posts(limit, i * TRACKS_LIMIT, user_id)

            rejected = tracks.reject! { |hash| hash['type'] == 'playlist' }
            rejected_count += rejected.length if rejected

            posts.map! { |hash| Track.new(hash['track']) }
          end
      end

      abort "There are no #{type} yet".red if tracks.empty?

      puts "Was skipped #{rejected_count} playlist(s) (nehm doesn't download playlists)".yellow if rejected_count > 0

      tracks
    end

    def self.user(permalink)
      SC_CLIENT.get('/resolve', url: "https://soundcloud.com/#{permalink}")
      rescue SoundCloud::ResponseError => e
        return nil if e.message =~ /404/
    end

    module_function

    def likes(limit, offset, user_id)
      SC_CLIENT.get("/users/#{user_id}/favorites?limit=#{limit}&offset=#{offset}")
    end

    def posts(limit, offset, user_id)
      conn = Faraday.new(url: 'https://api-v2.soundcloud.com/')
      response = conn.get("/profile/soundcloud:users:#{user_id}?limit=#{limit}&offset=#{offset}")
      parsed = JSON.parse(response.body)
      parsed['collection']
    end
  end
end
