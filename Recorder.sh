#!/bin/bash

# Define the URL to stream from
stream_url="[ip-address-of-streaming-device]/police.wav"

# Define the directory to save the recordings in
output_dir="police"

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Define the length of each recording in seconds
recording_length=1800

# Start an infinite loop to continuously record audio
while true; do
  # Get the current time
  current_time=$(date +%Y-%m-%d_%H-%M-%S)

  # Construct the output file path
  output_file="$output_dir/$current_time.wav"

  # Record the audio stream
  ffmpeg -i "$stream_url" -t "$recording_length" "$output_file"

  # Wait for the duration of one recording before starting the next
  sleep "$recording_length"
done
