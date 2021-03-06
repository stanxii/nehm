# nehm change log

## 4.0
* Added `sync` command. More in README [#11](https://github.com/bogem/nehm/pull/11). Thanks for [Snake4life](https://github.com/snake4life) for idea!
* Got rid of `curl` dependency. Now you don't have to install even `curl`
for working `nehm`! [#15](https://github.com/bogem/nehm/issues/15)
* Added the ability to access more than 270 likes [#17](https://github.com/bogem/nehm/issues/17)
* Delete the offset flag as we use now linked partitioning instead of offset-based pagination. More in commit description: [29cb18c](https://github.com/bogem/nehm/commit/29cb18cc4c702fb8cd3157eda58e44d6ec35f088)
* Major performance and memory consumption improvements
* Made a lot of refactoring so code is much cleaner now
* Many minor improvements

## 3.2
* Add errors stack after the downloading if there were errors
* Add "ERROR: " and "WARNING: " prefixes for errors and warnings respectively
* Return warnings in cases, if you didn't set dlFolder and itunesPlaylist
* nehm will not colorize messages, if output isn't STDOUT
* Minor performance, stability and binary size improvements

## 3.1
* If you didn't set dlFolder, `nehm` will download tracks to home directory implicitly
* If you didn't set itunesPlaylist, `nehm` will not add tracks to iTunes implicitly
* If there is any error in config, you will be notified before the showing of
tracks menu
* Minor performance improvements

## 3.0.4
* Now variables in config file are written in camel case, i.e.
`dl_folder` now is `dlFolder` and `itunes_playlist` now is `itunesPlaylist`.
* Less binary size, performance improvements and bug fixes

## 3.0.3
* Minor performance improvements

## 3.0.2
* Fixed `list` and `offset` flags (they didn't work earlier at all)

## 3.0.1
* Fixed https://github.com/bogem/nehm/issues/5. Thanks [redwards510](https://github.com/redwards510) for report
* Now tracks are downloaded with not so strict permissions (0766)

## 3.0
* **Rewritten in Go: faster, less memory usage, more stable, easier to install (no need to install `Taglib`)**
* `nehm` can't download posts, because of changes in SoundCloud API :(
* `nehm` command used to show list of likes, not help as earlier
* Removed `configure` command. Now you should configure `nehm` in configure file (more in README)
* ... and some other improvements

## 2.2.3
* Fix https://github.com/bogem/nehm/issues/3. Thanks `galaris` for report

## 2.2.2
* If you input in `to` option non-existing directory, you can create it from `nehm`

## 2.2.1
* Small improvements

## 2.2
* Rename `select` command to `list`
* Some prettifying things in `help`
* Small bug fixes

## 2.1.5
* Remove `Getting information about tracks(s)` message in `get` and `dl` commands
* Handle more errors

## 2.1.4
* Fix bug `wrong number of arguments (1 for 0)` in `configure` command or in first initialization

## 2.1.3
* Fix bug, when `nehm` couldn't be initialized if you enter no command
* More detailed error description if there is no query in `search` command
* Fix `select` and `search` help

## 2.1.2
* Fix infinite loop in `select` and `search` commands if there are no tracks

## 2.1.1
* Add `dl yes` option to `select` and `search` commands

## 2.1
* `search` command
  * Use dash-options *(see help)*
  * Remove `offset` option
* Show duration of track in `search` and `select` commands
* Remove message bar in `search` and `select` commands

## 2.0.1
* Make gem size smaller

## 2.0
* Add 'select' and 'search' commands *(more info in README and `nehm help`)*
* Many performance improvements *(changes in application structure)*
* More stable *(Many bug fixes and error handling)*
* Less dependencies *(Remove 4 dependencies)*
* Prettier README

## 1.6.1
* Fix nehm's fails when download tracks from url

## 1.6
* Rewritten about 90% of code to make it more comfortable to read (improve code climate from 2.9 to 3.6)
* Add newlines before and after downloading track
* Clearer 'help' command

## 1.5.6.2
* Excluding space and dash from removing in track's file name

## 1.5.6.1
* Fix: "execution error: iTunes got an error: file "..." doesn’t understand the “add” message. (-1708)" (thanks to [galaris](https://github.com/galaris) for reporting)
* Fix: nehm fails if track's title has some special characters (thanks to [galaris](https://github.com/galaris) for reporting)

## 1.5.5.2
* Fix wrong detection of artist in title name of song

## 1.5.5.1
* Fix bug with `nil` in user class

## 1.5.5
* Add `version` command
* Some bug fixes for Linux users
* Edit some output messages
* Minor optimizations

## 1.5.4
* Add availability to get/dl 300+ likes and posts
* More convenient CLI
* Fix: nehm fails if you try to get/dl playlist
* Fix: nehm fails if you try to get/dl unstreamable track
* Minor optimizations and bug fixes

## 1.5.3
* Fix bugs, associated with special characters in track's name
* Minor improvements

## 1.5.2
* Binary now works if you use nehm from source
* Minor improvements

## 1.5.1
* Update `nehm help`
  * Fix some descriptions
  * Add `url` option to `dl` and `get`

## 1.5
* Add support for Ruby 1.9.3
* Edit application structure
  * Improve performance when adding tracks to iTunes library
  * Remove useless iTunes path logic
* Prettify `nehm help`

## 1.4.2
* Fix: app fails if you didn't set up playlist (again)
* Reduce gem size

## 1.4.1
* Fix: app fails if you didn't set up playlist

## 1.4
* Now nehm can automatically add track to iTunes playlist. Enter `nehm configure` to set it up
* Also you can download tracks with custom iTunes playlist with `playlist PLAYLIST` feature. See the 'Usage' for instructions
* Handle more errors
* Update `nehm help` command:
  * Add 'Summary' article
  * Convenient read improvements
* Edit warning messages
* Minor improvements and fixes

## 1.3.3
* Add `to current` feature

## 1.3.2
* Add check for no user's posts/likes

## 1.3.1.1
* Minor changes

## 1.3.1
* Edit looped configure menu

## 1.3
* Now you can type short paths to download and iTunes paths while configuring nehm (e.g. ~/Music)
* Configure menu doesn't automatically exit after choose
* nehm doesn't ask for iTunes path by first run

## 1.2.2
* Tracks has got now year tag

## 1.2.1
* Minor technical update

## 1.2
* Add `to PARHTODIRECTORY` feature. See the 'Usage' for instructions
* Improve readability of help
* Add some error checks

## 1.1
* Add `from PERMALINK` feature. See the 'Usage' for instructions

## 1.0.7.1
* Remove useless dependency :)

## 1.0.7
* Add paint dependency

## 1.0.6.1
* Edit gem description
* Edit dependencies

## 1.0.6
* Add check for invalid number of likes/posts
* Add `CHANGELOG.md`
* Use `OPTIONS` instead of `[options]` in help

## 1.0.5
* Fix bundler development dependency

## 1.0.4
* Edit summary in gemspec

## 1.0.3
* Change description of nehm

## 1.0.2
* Edit path to nehm version in Rakefile
* Fix: nehm fails, then setting tags to track

## 1.0.1
* Rakefile:
  * Add push (push to rubygems.org) task
  * Modify tasks
* Edit required Ruby version
* Fix: if you type invalid argument in `nehm get`, then app fails

## 1.0
* First release!
