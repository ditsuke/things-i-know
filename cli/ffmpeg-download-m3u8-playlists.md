#ffmpeg

`ffmpeg -protocol_whitelist https,http,file,crypto,tls,tcp -i /path/to/some.m3u8 outfile.ex`

Here's a little bash function written by [[ChatGPT]]:
```bash
function download_m3u8 {
  # $1 is the URL of the m3u8 playlist
  # $2 is the output file name

  # Check if the URL and output file name are provided
  if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: download_m3u8 <URL of m3u8 playlist> <output file name>"
    return
  fi

  # Download the m3u8 playlist using ffmpeg with the protocol whitelist flag
  ffmpeg -protocol_whitelist "file,http,https,tcp,tls,crypto" -i $1 -c copy -bsf:a aac_adtstoasc $2
}
```
