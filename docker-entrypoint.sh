#!/bin/bash
set -e

yarn install
yarn $@
cp -r packages/** /dist