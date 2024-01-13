#!/bin/bash

# Usage:
#
# ./ig-add-profile [profile_name]

# TODO: Add profile_name into ig-profile-args.sh

# Process account to add latest timestamp
instaloader --latest-stamps ./ig-latest-timestamps.ini --no-caption --no-compress-json --no-metadata-json --no-pictures --no-profile-pic --no-resume --no-videos --no-video-thumbnails --dirname-pattern=./photos/{profile} +ig-login-args.txt +ig-profile-args.txt