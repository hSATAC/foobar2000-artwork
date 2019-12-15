# foobar2k-artwork

foobar2k-artwork is a web interface built on top of [beefweb plugin](https://github.com/hyperblast/beefweb) APIs.

It can display current artwork with basic playback and volume controls.

When foobar2000 is not playing, foobar2k-artwork can display images of your selection.

## Installation

1. You need to have [foobar2000](https://www.foobar2000.org/) & [beefweb plugin](https://github.com/hyperblast/beefweb) installed and configured.

1. Clone the repository.

1. Put images inside `placeholders` folder, these images will be displayed when foobar2000 is not playing.

1. Modify the placeholder section inside `index.html`.

1. Modify the `beefweb_upstream` endpoint inside `nginx.conf`, pointing to your beefweb API ip.

1. `$ make build` to build a docker image.

1. `$ make run` to run the docker images.

1. Open the [web interface](http://locahost:8080) at your 8080 port.

## Usage

- Press `q` to play previous track.
- Press `w` to play/pause the player.
- Press `e` to play next track.
- Press `a` to turn the volume down.
- Press `s` to mute/unmute.
- Press `d` to turn the volume up.

## Miscellaneous

1. This project is a pure frontend webpage, it contains a nginx reverse proxy just to bypass the CORS limitation of web browsers.

1. [beefweb plugin](https://github.com/hyperblast/beefweb) provides authentication to protect it's web UI and APIs. It's not supported by foobar2k-artwork yet.

## License

Copyright © 2019 [Ash Wu](https://github.com/hSATAC).<br />
This project is [MIT](https://choosealicense.com/licenses/mit/) licensed.
