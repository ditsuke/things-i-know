[[ffmpeg]] can be used to trim a video. At its simplest (trimming portion from 00:01:00 to 00:05:05)
```sh
ffmpeg -i input.mkv -ss 00:01:00 -to 00:05:05 -c copy output.mkv
```

More information on StackOverflow: https://stackoverflow.com/q/18444194
