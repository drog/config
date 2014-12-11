#! /bin/bash

cd /mnt/datos/Games/wow_4.3.4/wow/

WINEDEBUG=-all __GL_THREADED_OPTIMIZATIONS=1 primusrun wine Wow.exe -opengl $> /dev/null
