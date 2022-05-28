<p align="center"><img src="https://i.ibb.co/kx3R2b2/APK-Bundle-Installer.png" width="200"></a>
<h1 align="center"><b>APK Bundle Installer</b></h1>
<h4 align="center">Batch Script that allow you to install APK Bundles/Split APKs</h4>
<br />

<p align="center">
<a href="https://forum.xda-developers.com/t/tool-windows-apk-bundle-installer.4449651/" alt="XDA Thread"><img src="https://img.shields.io/badge/XDA-Thread-orange.svg"></a>
<a href="" alt="Latest Release"><img src="https://img.shields.io/github/v/release/K3V1991/APK-Bundle-Installer?color=blueviolet&label=Latest%20Release"></a>
<a href="" alt="Downloads"><img src="https://img.shields.io/github/downloads/K3V1991/APK-Bundle-Installer/total?color=green&label=Downloads"></a>
<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=HW8B98TVDLKWA" alt="Donate-PayPal"><img src="https://img.shields.io/badge/Donate-PayPal-blue"></a>
<a href="https://github.com/K3V1991/Donate-Crypto/blob/main/README.md" alt="Donate-Crypto"><img src="https://img.shields.io/badge/Donate-Crypto-yellow"></a>
</p>
<hr>
<br />

## NFO:
* Split APK Installer to install APK Bundles/Split APKs
* Portable
* Android Debug Bridge v1.0.41 (Version 33.0.0-8141338, March 2022)
* Full functional ADB (Android Debug Bridge) & Fastboot
* Double click the CMD.bat to easily open a Command Prompt
* Only 7.47MB (compressed 3.45MB)

## Requirements:
* Windows OS
* USB Driver for your Device or Universal ADB Driver

## Enable Developer Options & USB Debugging:
1. Install the USB Driver for your Phone or Universal Adb Driver
2. On your Phone, go to Settings > About Phone. Find the Build Number and tap on it 7 times to enable Developer Options
3. Now enter System > Developer Options and find "USB debugging" and enable it
4. Plug your Phone into the Computer and change it from "Charge only" to "File Transfer" Mode
5. On your Computer, browse to the Directory where you extracted the APK Bundle Installer Zip
6. Launch a Command Prompt with Open CMD.bat
7. Once you’re in the Command Prompt, enter the following Command:
```
adb devices
```
8. System is starting the ADB Daemon (If this is your first Time running ADB, you will see a Prompt on your Phone asking you to authorize a Connection with the Computer. Click OK.)
9. Succesful enabled USB Debugging

## Unable to connect to ADB:
1. AMD Bug - [XDA Thread](https://forum.xda-developers.com/t/fix-fastboot-issues-on-ryzen-based-pcs.4186321/)
2. Switch Device from "Charging" to "File Transfer" Mode
3. Install the latest Device Driver or Universal USB Driver
4. Try another USB Cable
5. Use another USB Port (USB 3.0 Port to USB 2.0)
6. Try to execute Fastboot Command without connecting your Phone, and once it says "waiting for device" plug in your USB Cable
7. Windows: Click "Change advanced power setting" on your chosen Plan and expand "USB Settings". Under "USB Settings" Section, expand "USB selective suspend setting" and change it to "Disabled" for On Battery and Plugged In
8. Try another PC

## Usage:
1. Download latest Release
2. Extract the Zip Archive
3. Place the APKs in the APKs Folder
3. Double click on APK Bundle Installer.bat
4. Type: y and hit Enter to start Streamed Install
5. You shoud see Success after Installation
<br />

## Screenshots:
<img src="https://i.ibb.co/g7RwMYY/Main.png"></a>
<br />
<br />
<img src="https://i.ibb.co/gj0W4DM/Stream.png"></a>
<br />
<br />
<img src="https://i.ibb.co/VQNtvGP/Success.png"></a>
