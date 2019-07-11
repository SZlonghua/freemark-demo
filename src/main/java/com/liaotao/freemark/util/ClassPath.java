package com.liaotao.freemark.util;

import java.net.URL;

public class ClassPath {

    public static URL getClassPath(){
        return Thread.currentThread().getContextClassLoader ().getResource("");
    }
    public static String getPath(){
        return getClassPath().getPath().toString();
    }
}
