# Audio Engineer `A1`

## Overview

### Description

Operates the sound system during performances, including mixing audio and playing back samples and pre-recorded music.

### Location

- Front of House

### Equipment

- **Mixing Console**: DiGiCo SD12 or similar
- **Monitoring Headphones**
- **Computer**: Mac Studio or similar
- **Dante Software**: Dante Via, Dante Controller, Dante Virtual Soundcard
- **Song Library**: Spotify or similar
- **QLab**: Most up-to-date version
- **Digital Audio Workstation (DAW)**: ProTools, Reaper, Ableton Live, or similar

## Workflow 3.1.1: QLab Audio

### What is QLab?

QLab is a software application for macOS that allows you to design and run complex audio, video, and lighting cues.

### Setup

1. **Create a New Workspace**
   - Go to `File` > `New Workspace`.

2. **Set Up Audio and Video Outputs**
   - Configure settings under `Workspace` > `Settings` > `Audio` and `Video`.

3. **Save Your Project**
   - Go to `File` > `Save Project As...`
   - Save workspace and media to a new project folder, e.g., `Documents` > `[YYYY] Show Files` > `[YYMMDD Event]`.

### Create

1. **Add an Audio Cue**
   - Click the `+` button and choose `Audio` from the list.
   - Import audio files by dragging them into the cue’s inspector window.

2. **Add a Video Cue**
   - Choose `Video` and import video files similarly.

3. **Create Sequences**
   - Group related cues together by selecting them and choosing `Group` from the context menu.

### Playback

1. **Start Playback**
   - Use the `Go` button to start playback of cues and sequences.

2. **Automate Cue Transitions**
   - Use triggers and conditions to automate cue changes.

3. **Set Up Automatic Cue Changes**
   - Configure automatic cue changes based on time or other triggers.

## Workflow 3.1.2: Recording With A DAW

### What is a DAW?

A Digital Audio Workstation (DAW) is software used for recording, editing, mixing, and producing audio files.

### Setup

1. **Open the DAW**
   - Launch the software and create a new project.

2. **Adjust Project Settings**
   - Go to `File` > `Project Settings` to adjust sample rate, bit depth, and other project-specific settings (e.g., Stereo WAV file, Bitrate 48kHz, Bitdepth: 24).

3. **Save Your Project**
   - Go to `File` > `Save Project As...`
   - Save to an external hard drive, e.g., `External Harddrive` > `Show Audio` > `[YYMMDD] NMU [Event]_RAW.wav`.

### Record

1. **Arm Tracks for Recording**
   - Select the red arm recording button next to each channel.

2. **Start Recording**
   - Click the global record and play buttons.

3. **Stop and Save**
   - Stop the recording at the end of the event and hit save.

### Deliver

1. **Export the Recording**
   - Post-event, export the recording to the desired hardware or software drive.

2. **Deliver the File**
   - Deliver the file to the Press Manager, either by handoff or online.
---
## Workflow 3.1.2
### Gain Stage

1. **Have the Musician Play**
   - Have the musician play their instrument at a healthy forte (loud) dynamic.

2. **Set Fader to 0dB**
   - Set the fader to 0dB.

3. **Adjust Gain**
   - Slowly increase the gain from -∞ until the audio meters read an average peak between -18dB and -6dB.
   - The sound should be full and loud but not overpowering or causing unwanted distortion.

4. **Importance**
   - This step is crucial for ensuring that your signal has enough presence for plugins and effects to work properly without risking distortion or clipping later on.

### Bandpass Filter & EQ (Equalization)

*What is EQ?* EQ (Equalization) is the process of adjusting the balance between frequency components within an audio signal.

### Filtering & EQ
- The order of applying filters and EQ is important. Handling low frequencies earlier in the process can avoid the need for drastic adjustments later.
- The High Cut filter is often part of the EQ section but should be considered as part of the Bandpass Filter for a more refined approach.
- Use your ears and adjust settings as needed for the specific sound and context.

1. **Low Cut (High Pass) Filter**
   - **Start**: Set the Low Cut (High Pass) filter at 30Hz for bass instruments.
   - **Adjust**: Gradually increase it up to around 250Hz, depending on the range of the instrument, voice, or sound effect.
   - **Purpose**: Helps eliminate unwanted low frequencies and provides clarity, reducing the need for further adjustments to high frequencies.

2. **High Cut (Low Pass) Filter**
   - **Start**: Set the High Cut (Low Pass) filter initially at 18kHz.
   - **Adjust**: Lower it to around 5kHz as needed.
   - **Purpose**: Helps eliminate unwanted high frequencies, avoids clashes between high-frequency and low-frequency instruments, provides more headroom, and reduces feedback and resonant issues.

3. **Adjust Lows**
   - Shape the low-end to ensure clarity and impact.
   - Typically boost frequencies right before the low cut starts using a shelf.

4. **Adjust Highs**
   - Enhance or reduce high-frequency content.
   - Typically boost frequencies right before the high cut starts using a shelf.

5. **Adjust Mids**
   - Fine-tune mid-range frequencies to balance the mix.
   - Use subtle bands to help bring out the voice's characteristic tone.

6. **Notch Out Problem Frequencies**
   - Eliminate unwanted resonances or feedback using narrow bands or steep notches.
   - A Graphic EQ is best for this purpose.
   - Be careful not to create a strange combing effect.

![Alt_text](architecture/diagrams/basic_eq.png)

### Dynamics

*What are Dynamics?* Dynamics refer to the variations in loudness and the overall range of audio signals. They are managed using various tools and settings to ensure audio levels are consistent and balanced.

### Compressor

- **Control the Dynamic Range**: A compressor controls the dynamic range of audio signals to ensure consistent audio levels and avoid distortion or unwanted variations.

  - **Input Gain**: Adjust the input loudness to optimize the compressor’s effect.
  
  - **Threshold**: Determine the level at which compression starts. Signals above this level will be compressed.
  
  - **Attack**: Adjust how quickly the compressor responds to incoming signals once they exceed the threshold.
  
  - **Decay**: Set how quickly the compressor returns to normal after the signal drops below the threshold.
  
  - **Output Gain**: Adjust the final level after compression to ensure the output level matches the desired volume.

### Sends

#### Aux Sends
- Adjust how much signal from this channel will be sent to the respective mix group or plugin, allowing for effects processing and routing.

#### Panning
- Position audio sources in the stereo field (Left vs Right) to create a sense of space and dimension in the mix.

#### Fader
- Adjust the overall volume level of each channel to balance the mix and ensure all elements are appropriately heard.
---
## Suggestions for Advancement

Once you feel comfortable with the above content, you may want to start researching the following items:

- **Audio Console Routing**: Learn about routing techniques, groups, and VCA's to manage complex audio setups.

- **Controlling Audio Feedback**: Understand methods to prevent and manage audio feedback during live performances.

- **Monitor Mixing**: Explore techniques for mixing audio specifically for monitoring purposes.

- **Automating Audio**: Investigate automation processes for controlling various audio parameters dynamically during playback.

- **Etc.**: Continue exploring other advanced audio topics and techniques as needed.
