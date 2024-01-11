#!/bin/bash

# Usage:
#
# ig_add_profile [profile_name]

# TODO: Add profile_name into ig_profile_args.sh

# Process account to add latest timestamp
instaloader --latest-stamps ./photos/latest-timestamps.ini --no-caption --no-compress-json --no-metadata-json --no-pictures --no-profile-pic --no-resume --no-videos --no-video-thumbnails --dirname-pattern=./photos/{profile} +ig_login_args.txt +ig_profile_args.txt