package org.fgjcdmx.Utils;

import io.github.cdimascio.dotenv.Dotenv;

public class Entorno {
    private static final Dotenv dotenv = Dotenv.load();

    public static String getVariable(String key) {
        return dotenv.get(key);
    }
}
