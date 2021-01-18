# foobar2k-artwork

foobar2k-artwork is a web interface built on top of [beefweb plugin](https://github.com/hyperblast/beefweb) APIs.

It can display current artwork with basic playback and volume controls.

When foobar2000 is not playing, foobar2k-artwork can display images of your selection.

Now YouTube Music is also supported. This project may be renamed soon.

## Demo

See it in action. `TO BE UPDATED - button action is removed.`

[![](http://img.youtube.com/vi/zbN08hwAtu0/0.jpg)](http://www.youtube.com/watch?v=zbN08hwAtu0 "")

## Installation

1. You need to have [foobar2000](https://www.foobar2000.org/) & [beefweb plugin](https://github.com/hyperblast/beefweb) installed and configured.

1. Clone the repository.

1. Put images inside `placeholders` folder, these images will be displayed when foobar2000 is not playing.

1. Modify the placeholder section inside `index.html`.

1. Modify the `beefweb_upstream` endpoint inside `nginx.conf`, pointing to your beefweb API ip.

1. `$ make build` to build a docker image.

1. `$ make run` to run the docker image.

1. `$ make stop` to stop the running docker image.

1. `# make enable` to enable the systemd unit file of the docker image.

1. Open the [web interface](http://locahost:8080) at your 8080 port.

## Usage

Setup your beefweb or ytmDesktop API server and modify API endpoints in `index.html` and then build & run the docker image.

## Miscellaneous

1. This project is a pure frontend webpage, it contains a nginx reverse proxy just to bypass the CORS limitation of web browsers.

1. [beefweb plugin](https://github.com/hyperblast/beefweb) provides authentication to protect it's web UI and APIs. It's not supported by foobar2k-artwork yet.

1. YouTube Music is support via [ytmDesktop](https://ytmdesktop.app/), enable the remote control server without password.

## License

Copyright © 2021 [Ash Wu](https://github.com/hSATAC).<br />
This project is [MIT](https://choosealicense.com/licenses/mit/) licensed.
