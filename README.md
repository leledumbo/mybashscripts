# mybashscripts
Collection of self written bash scripts to ease everyday life mainly in Linux environment

# Available Scripts (sorted alphabetically)

## audiotoblackvideo.sh

### Brief

Convert audio file into a video file with black frames.

### Dependencies

* ffmpeg

## bpm-count

### Brief

Count BPM (Beats Per Minute) in a given audio file.

### Dependencies

* sox
* bpm-tools

## check-package-integrity.sh

### Brief

In the event of catasthropic storage failure, your filesystem might lose some installed files that pacman still holds information for. This will help checking which files are missing for a given package.

### Dependencies

* pacman

## check-pacman-integrity.sh

### Brief

Do integrity check for all packages matching given filter.

### Dependencies

* pacman

## encode-with-nvenc.sh

### Brief

Fast transcoding videos using Nvidia GPU encoder.

### Dependencies

* ffmpeg

## encode-with-vaapi.sh

### Brief

Fast transcoding videos using Intel VA API.

### Dependencies

* ffmpeg

## fix-jpeg-orientation.sh

### Brief

Loops over all .jpg in current directory then sets its orientation right based on its EXIF data. Some Android camera softwares have this problem where photo orientation is correct when viewed using the gallery app, but is incorrect when viewed elsewhere, such as after being transferred to a computer.

### Dependencies

* ImageMagick

## list-unused-modules.sh

### Brief

List installed kernel modules that are not currently in use.

### Dependencies

* hwdetect
* awk

## merge-2-videos-horizontal.sh

### Brief

Merge 2 videos into 1, with horizontal left and right layout.

### Dependencies

* ffmpeg

## merge-2-videos-vertical.sh

### Brief

Merge 2 videos into 1, with vertical top and bottom layout.

### Dependencies

* ffmpeg

## reinstall-aur.sh

### Brief

Reinstall all packages previously built by yay.

### Dependencies

* pacman

## restart-pipewire.sh

### Brief

Single command to restart all 3 pipewire user services.

### Dependencies

* pipewire

## top-10-cpu-process.sh

### Brief

Behave like a mini top, useful as a desktop widget where you don't want too many informations.

### Dependencies

* procps-ng

