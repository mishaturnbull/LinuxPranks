#!/bin/bash

touch ~/.password_capture
echo ".password_capture: No such file or directory" > ~/.password_capture
chmod 444 ~/.password_capture

echo "Done!"
