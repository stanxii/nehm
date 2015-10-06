require 'nehm/artwork'

module Nehm

  ##
  # Artwork objects contains all information of track's artwork

  class Artwork

    def initialize(track)
      @track = track
    end

    def file_path
      File.join('/tmp', "#{@track.id}.jpg")
    end

    def suicide
      File.delete(file_path)
    end

    def url
      hash = @track.hash
      url =
        if hash['artwork_url'].nil?
          hash['user']['avatar_url']
        else
          hash['artwork_url']
        end
      url.sub('large', 't500x500')
    end

  end
end
