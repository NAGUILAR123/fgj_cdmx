package org.fgjcdmx.Utils;

import de.mkammerer.argon2.Argon2;
import de.mkammerer.argon2.Argon2Factory;
import org.springframework.stereotype.Service;

@Service
public class Encriptar {

    /**
     * Encriptar la contraseña
     * @param password (String) Contraseña
     * @return (String) Contraseña encriptada
     */
    public static String encriptarPassword(String password) {
//        Argon2PasswordEncoder encoder = new Argon2PasswordEncoder(16, 32, 2, 1 << 13, 6);
        Argon2 a2 = Argon2Factory.create();

        String hash = a2.hash(6, 8192, 2, password.toCharArray());
        a2.wipeArray(password.toCharArray());

        return hash;
    }

    public static boolean validarPassword(String password, String hash) {
        Argon2 a2 = Argon2Factory.create();
        return a2.verify(hash, password.toCharArray());
    }
}
