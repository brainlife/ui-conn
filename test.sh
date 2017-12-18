
docker stop test
docker rm test

nvidia-docker run --name test \
	-e X11VNC_PASSWORD=whatever \
	-e LD_LIBRARY_PATH=/usr/lib/nvidia-384 \
	-v /usr/lib/nvidia-384:/usr/lib/nvidia-384:ro \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-p 5900:5900 \
	-d soichih/ui-conn

