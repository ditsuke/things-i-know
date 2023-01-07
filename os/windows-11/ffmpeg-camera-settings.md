[[ffmpeg]] can list media devices attached to a device and open their configuration menus.

Listing devices:
```sh
❯ ffmpeg -list_devices true -f dshow -i dummy -hide_banner  
[dshow @ 000001fd9ae81240] "Mirametrix Virtual Camera" (video)  
[dshow @ 000001fd9ae81240] Alternative name "@device_pnp_\\?\root#mmxvirtualcamera#0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\customcamerasource"  
[dshow @ 000001fd9ae81240] "LGE Camera" (video)  
[dshow @ 000001fd9ae81240] Alternative name "@device_pnp_\\?\usb#vid_30c9&pid_0084&mi_00#6&13bd9da6&0&0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global"  
[dshow @ 000001fd9ae81240] "OBS Virtual Camera" (video)  
[dshow @ 000001fd9ae81240] Alternative name "@device_sw_{860BB310-5D01-11D0-BD3B-00A0C911CE86}\{A3FCE0F5-3493-419F-958A-ABA1250EC20B}"  
[dshow @ 000001fd9ae81240] "Microphone Array (2- Intel® Smart Sound Technology for Digital Microphones)" (audio)  
[dshow @ 000001fd9ae81240] Alternative name "@device_cm_{33D9A762-90C8-11D0-BD43-00A0C911CE86}\wave_{F5D4DD82-D4B0-4D13-90F1-BE1A78A96B5C}"  
[dshow @ 000001fd9ae81240] "VoiceMeeter Output (VB-Audio VoiceMeeter VAIO)" (audio)  
[dshow @ 000001fd9ae81240] Alternative name "@device_cm_{33D9A762-90C8-11D0-BD43-00A0C911CE86}\wave_{7B87CFC3-41DA-42A7-A33E-37D546E037A4}"  
[dshow @ 000001fd9ae81240] "VoiceMeeter Aux Output (VB-Audio VoiceMeeter AUX VAIO)" (audio)  
[dshow @ 000001fd9ae81240] Alternative name "@device_cm_{33D9A762-90C8-11D0-BD43-00A0C911CE86}\wave_{95E26841-9DC7-4315-AFAB-EB57A0743203}"  
dummy: Immediate exit requested
```

Choose a video device and open menu:
```sh
ffmpeg -f dshow -show_video_device_dialog true -i video="LGE Camera"
```

![[windows-video-device-dialogue.png]]
