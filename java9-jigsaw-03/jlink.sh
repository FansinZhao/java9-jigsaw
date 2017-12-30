#!/usr/bin/env bash

rm -rf mlib

mkdir mlib


jar --create --file=mlib/com.socket@1.0.jar --module-version=1.0 -C mods/com.socket .

jar --create --file=mlib/org.fastsocket@1.0.jar --module-version=1.0 -C mods/org.fastsocket .

jar --create --file=mlib/com.greetings.jar --main-class=com.greetings.Main -C mods/com.greetings .

rm -rf greetingsapp

jlink --module-path ${JAVA_HOME}/jmods:mlib --add-modules com.greetings --launcher greetingsapp=com.greetings/com.greetings.Main --output greetingsapp 

greetingsapp/bin/java --list-modules

greetingsapp/bin/java -m com.greetings/com.greetings.Main

greetingsapp/bin/greetingsapp

