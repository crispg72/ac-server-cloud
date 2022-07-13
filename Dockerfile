FROM ubuntu:20.04

RUN dpkg --add-architecture i386 && apt update

