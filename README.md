# CPD-to-HDD 🚔

This is a quick couple of scripts put together that allow recording of audio from a Baofeng UV-5R handheld field radio over the LAN. 

*Streamer.sh: Code to stream audio
  ✔️The first script, "Streamer", is what consumes the audio output from the radio via a USB audio capture device (DIGITNOW! USB 2.0 Digital Audio Capture Card - $16(ish)). Then VLC does the work of streaming the audio over the local area network.

*Recorder.sh: Code for recording audio input
  ✔️The second script, "Recorder", is just that. A recorder. It splits the audio into separate .wav files based on the record time parameter (recording_length=1800)


*Note: The "2" in "plughw:2" for the Streamer.sh script may need to be adjusted in order for this script to process correctly depending on which USB port is utilized on your device. 

![alt text](https://github.com/buf0rd/CPD-to-HDD/blob/main/cpd-to-hdd.png?raw=true)
