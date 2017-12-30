#!/usr/bin/env bash
mkdir mods

javac -d mods --module-source-path src $(find src -name "*.java")

find mods -type f

