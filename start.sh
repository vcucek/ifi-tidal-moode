#!/bin/bash

export LD_LIBRARY_PATH=$PWD/lib
DEVICE="USB Audio: - (hw:2,0)"
./bin/tidal_connect_application \
	--tc-certificate-path "./id_certificate/IfiAudio_ZenStream.dat" \
	--netif-for-deviceid eth0 \
	-f "Moode Streamer" \
	--codec-mpegh true \
	--codec-mqa true \
	--model-name "iFi Streamer" \
	--disable-app-security false \
	--disable-web-security false \
	--enable-mqa-passthrough false \
	--playback-device "$DEVICE" \
	--log-level 1 
