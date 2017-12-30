#!/usr/bin/env bash

javac --patch-module java.base=src -d mypatches/java.base src/java.base/java/util/concurrent/ConcurrentHashMap.java

javac --patch-module java.base=mypatches/java.base --module-path mods -d mods/com.mypatch src/com.mypatch/module-info.java  src/com.mypatch/com/mypatch/Main.java
 
java --patch-module java.base=mypatches/java.base --module-path mods -m com.mypatch/com.mypatch.Main
