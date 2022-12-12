#! /bin/bash

# Stop the Home Assistant Instance
docker stop homeassistant

# Remove the Home Assistant Install
docker rm homeassistant

# Pull down the latest Home Assistant Version
docker pull ghcr.io/home-assistant/home-assistant:stable

# Create a new Home Assistant instance, with the latest version of software
docker run -d \
--name homeassistant \
--privileged \
--restart=unless-stopped \
-v /opt/homeassistant:/config \
--network=host \
ghcr.io/home-assistant/home-assistant:stable
