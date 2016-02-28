## Configure Sound Output on Debian
Getting simple audio playback working on CHIP is pretty easy, once you install the correct packages and enable audio output. In the code examples below, we've inserted the && characters at the end of lines so you can copy and paste the entire block into a terminal window and execute each line in series.
If you are using CHIP OS, sound output is already configured and working. However, you may be running a simple version of Debian or buildroot, so these instructions will help you get sound working on CHIP.

### Requirements
  * CHIP
  * A [SSH or serial connection to CHIP](#headless-chip) or
  * Monitor and keyboard
  * Headphones or powered speakers connected to CHIP a/v jack
  * A [Connection to the internet](#connecting-c-h-i-p-to-wi-fi-with-nmcli)

### Setup CHIP
Update your apt repository list if you haven't done so recently:

```shell
  sudo apt-get update
```
  
Then install ALSA:

```shell
  sudo apt-get install libasound2 alsa-utils
```

This will install alsa and some utilities for playing sound from the command line. Once those have installed, you'll need to make the outputs active for sound

```shell
  alsamixer
```

will open up a simple interface. Use the left and right arrow keys on your keyboard to select among the items, and use the up/down keys to change the options:

  * DAC Output - set to Direct
  * Left Mixer - set to Left
  * PA - set to desired volume
  * Right Mixer - set to Right

![alsamixer interface](images/alsamixer.jpg)

### Play a Sound
Change to the root media directory:

```shell
  cd /media
```

Alternatively, you could download a sound into chip's home directory:

```shell
  mkdir /home/chip/Media && cd /home/chip/Media
```

Use `wget` to download a sound of piano chords to the file test.wav:

```shell
  wget -O test.wav https://upload.wikimedia.org/wikipedia/commons/d/db/Descending_thirds.wav
```

If wget returns command not found you can install it:

```shell
  sudo apt-get install wget
```

We can finally play the sound and hear it over CHIP's headphone jack:

```shell
  aplay test.wav
```

If you want to play mp3 or ogg files, you can install mplayer:

```shell
  sudo apt-get install mplayer
```

Then try an ogg file:

```shell
  wget -O test.ogg https://upload.wikimedia.org/wikipedia/commons/e/e7/Agogo.ogg &&
  mplayer test.ogg
```

And mp3 file:

```shell
  wget -O test.mp3 http://www.freesound.org/data/previews/315/315618_2050105-lq.mp3 &&
  mplayer test.mp3
```

### Record A Sound
If you want to try the audio input, you need to connect audio input to [header U14, pins 06 & 12](#pin-headers) or [modify CHIP](#microphone-and-audio-input) to use audio in on the TRRS connector.
Once you have an audio signal going into CHIP, you can test it out by recording a three second (`-d 3`) WAV file with arecord:

```shell
arecord -f cd -d 3 -D hw:0,0 chipaudioin.wav
```

### More Packages
Developers that want to use sound will probably want to download these packages:

```shell
sudo apt-get install portaudio19-dev &&
sudo apt-get install swig &&
sudo apt-get install python-setup-tools &&
sudo apt-get install python-dev
```

