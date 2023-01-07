[[ffmpeg]] handily converts just about anything to just about anything else.

## The Ways
1. Simple:
	`ffmpeg -i input.webm -pix_fmt rgb24 out.gif`

2. However, the GIF we get out of `1.` _may_ have color conversion issues. To get a better (yet beefier result):
  ```sh
  # create a png color palette
  ffmpeg -y -i input.webm -vf palettegen palette.png
  # use palette in GIF generation
  ffmpeg -y -i input.webm -i palette.png -filter_complex paletteuse -r 10 output.gif
  ```

## Conclusion

For most quick conversions, the first method is good and produces a smaller result.

However, the chunkier method should be good for sources with richer colors (like a clip snip):

```bash
function webm2gif() {
    ffmpeg -y -i "$1" -vf palettegen _tmp_palette.png
    ffmpeg -y -i "$1" -i _tmp_palette.png -filter_complex paletteuse -r 10  "${1%.webm}.gif"
    rm _tmp_palette.png
}
```


## Footnotes
- Combine with [[trim-a-video-with-ffmpeg]] etc for extra gains.
- Reference: [How to do I convert an webm (video) to a (animated) gif on the command line?](https://askubuntu.com/questions/506670/how-to-do-i-convert-an-webm-video-to-a-animated-gif-on-the-command-line)
