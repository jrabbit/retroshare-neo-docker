# retroshare-neo-docker
run retroshare on debian or other problematic compilation targets

# run retroshare gui

`docker run --rm -it -v ~/.retroshare/:/home/user/.retroshare -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY jrabbit/retroshare:stable RetroShare06`

or

`docker run --rm -it -v ~/.retroshare/:/home/user/.retroshare -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY jrabbit/retroshare:unstable RetroShare06`
