# Media Tools Dockerfile

A docker container with:

  - [Ffmpeg][1]
  - [MediaInfo][2]
  - [RTMPDump][3]
  - [GraphicsMagick][4]
  - [gstreamer1.0][5]

## How to use
-----------

1. Build container

    `$ docker build -t media-tools .`

2. Use it

    `$ docker run --rm media-tools bash`

    `$ docker run --rm media-tools ffmpeg -version`

    `$ docker run --rm media-tools mediainfo --version`

    `$ docker run --rm media-tools rtmpdump --version`

    `$ docker run --rm media-tools convert --version`

    `$ docker run --rm media-tools gst-inspect-1.0 --version`

## Contributing

1. Fork it
2. Checkout the develop branch (`git checkout -b develop`)
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## License

This application is distributed under the [MIT License][6].

[1]: http://ffmpeg.org
[2]: https://mediaarea.net/MediaInfo
[3]: https://rtmpdump.mplayerhq.hu
[4]: http://www.graphicsmagick.org
[5]: http://gstreamer.freedesktop.org
[6]: https://en.wikipedia.org/wiki/MIT_License
