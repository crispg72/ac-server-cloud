FROM ubuntu:20.04

RUN dpkg --add-architecture i386 && apt update

RUN apt install -y curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd

