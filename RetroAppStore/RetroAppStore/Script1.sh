#!/bin/sh

#  Script1.sh
#  RetroAppStore
#
#  Created by Ford on 4/30/20.
#  Copyright © 2020 fordApps. All rights reserved.

cp /Applications/App\ Store.app/Contents/Info.plist /tmp/RetroAppStore.app/Contents
mv /tmp/RetroAppStore.app /Applications/HS\ App\ Store.app
codesign --force --deep --sign - /Applications/HS\ App\ Store.app
