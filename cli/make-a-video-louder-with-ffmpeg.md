---
Aliases: # Increase volume in video using ffmpeg
---
[[ffmpeg]] can make any video with audio louder. At its simplest, using volume filters ([ref](https://ffmpeg.org/ffmpeg-filters.html#volume)):

```sh
ffmpeg -i input.mkv -filter:a "volume=2.0" output.mkv
```
