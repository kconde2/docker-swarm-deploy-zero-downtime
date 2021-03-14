#!/usr/bin/env bash

#make registry
make build
make tag
make push
make deploy
make monitor
