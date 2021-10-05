#!/bin/sh

systemctl --user restart pipewire
sleep 1
systemctl --user restart pipewire-pulse
sleep 1
systemctl --user restart pipewire-media-session

