#!/bin/bash

echo "Converting all .odt in the current folder files to .pdf's. Please wait, this might take a while."
time libreoffice --convert-to pdf *.odt
echo "Done :)"
