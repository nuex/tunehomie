tune_homie
==========

Tune Homie is a distributed synthesizer that uses bitshifted data piped
to SoX to generate music.

## Steps

Create a config.mk file. Here is an example:

    NAME = "homeboy"

Run some commands to get going:

    brew install erlang
    brew install sox
    make
    make console

Add nodes:

    net_adm:ping('somebody@somewhere').
    net_adm:ping('someoneelse@somewhere').

Play music:

    tune_homie:play('somebody@somewhere', "tejeez").

## Inspiration

awk-music
http://kmkeen.com/awk-music/

Algorithmic symphonies from one line of code
http://countercomplex.blogspot.com/2011/10/algorithmic-symphonies-from-one-line-of.html
