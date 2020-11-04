#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/jyj/myslam/src/turtlebot3_teleop"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/jyj/myslam/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/jyj/myslam/install/lib/python2.7/dist-packages:/home/jyj/myslam/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/jyj/myslam/build" \
    "/usr/bin/python2" \
    "/home/jyj/myslam/src/turtlebot3_teleop/setup.py" \
     \
    build --build-base "/home/jyj/myslam/build/turtlebot3_teleop" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/jyj/myslam/install" --install-scripts="/home/jyj/myslam/install/bin"
