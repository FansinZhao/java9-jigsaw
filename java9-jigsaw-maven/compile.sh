#!/usr/bin/env bash

rm mods -rf
mkdir mods

javac --module-path mods -d mods/java9.jigsaw.maven $(find src -path "src*main*" -name "*.java")

java --module-path mods -m java9.jigsaw.maven/com.fansin.java9.App
