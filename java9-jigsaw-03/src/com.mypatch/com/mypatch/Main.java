package com.mypatch;

    import java.util.concurrent.ConcurrentHashMap;

    public class Main {
        public static void main(String[] args) {
            ConcurrentHashMap map = new ConcurrentHashMap<String,String>();
            System.out.println(map.print());
        }
    }
