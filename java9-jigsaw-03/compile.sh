#!/usr/bin/env bash

rm -rf mods

mkdir mods

#javac -d mods --module-source-path src $(find src -name "*.java")

javac -d mods --module-source-path src $(find . -path "*socket*.java")

javac -d mods/com.greetings/ -p mods $(find src/com.greetings/ -name "*.java")


java -p mods -m com.greetings/com.greetings.Main
