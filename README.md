# hw2txt
A script on Windows, Linux, and macOS to output your hardware information to .txt file. 
This can help you if you want to share your PC specs to others.
# Notes 
- This was made so it doesn't required any dependency.
- Can use Linux file the same as macOS due to similarity to each others.
- Please run root/sudo if you are on Linux
- Please issues any problem found in my scripts since this is my first project
# Output file (output specs.txt as of v0.1)
```
OS:
OS Version:
CPU:
Architecture:
RAM:
GPU:
```
This is my laptop running Arch Linux output (I will fix bugs later):
```
OS: Linux
OS Version: 6.16.2-arch1-1
Architecture: x86_64
CPU:                               Intel(R) Pentium(R) Silver N5000 CPU @ 1.10GHz
RAM: 7.5Gi
GPU: 00:02.0 VGA compatible controller: Intel Corporation GeminiLake [UHD Graphics 605] (rev 03)
```
# How to use it
1. Depend what OS are you on which is
- Windows
- MacOS
- Linux
## For Windows
- 2.1 Download script from the [here](https://github.com/namthejumper/hw2txt/releases/download/v0.1/Windowshw2txt.zip)
- 2.2 Extract it (you can do it right?)
- 2.3 Enter the folders then run hw2txt.bat (Windows will prompt defender, there is nothing wrong about it)
- 2.4 Output as specs.txt

## For Linux and MacOS
- 3.1 Download script from the [here](https://github.com/namthejumper/hw2txt/releases/download/v0.1/hw2txt.sh)
- 3.2 Open your prefer terminal then bash it with sudo like
```
sudo bash hw2txt.sh
```
- 3.3 Output as specs.txt
