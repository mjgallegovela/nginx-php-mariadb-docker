#!/bin/bash

ifconfig lo0 alias 10.254.254.254

cp ./com.apgeca.local.alias.plist /Library/LaunchDaemons