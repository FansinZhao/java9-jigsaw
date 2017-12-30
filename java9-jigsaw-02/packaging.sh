#!/usr/bin/env bash

mkdir mlib

jar --create --file=mlib/org.astro@1.0.jar         --module-version=1.0 -C mods/org.astro .

jar --create --file=mlib/com.greetings.jar         --main-class=com.greetings.Main -C mods/com.greetings .

ls mlib

jar --describe-module --file=mlib/org.astro@1.0.jar

