package org.fgjcdmx.Utils.Efirma;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import org.apache.commons.codec.binary.Base64;
import org.fgjcdmx.Services.LoginCredencialesService;

/**
 * clase que convierte los documentos necesarios para firmar, en base 64
 */
public class ConvertBase64 {
    LoginCredencialesService loginService = new LoginCredencialesService();

    /**
     * Metodo que convierte un archivo en Base64
     * @param route Ruta donde se encuentra el archivo a convertir.
     * @return cadena en base64
     */
    public String converDoc(String route){

        Base64 base64 = new Base64();

        File file = new File(route);
        byte[] fileArray = new byte[(int) file.length()];
        InputStream inputStream;



        String encodedFile = "";
        try {
            inputStream = new FileInputStream(file);
            inputStream.read(fileArray);
            encodedFile = base64.encodeToString(fileArray);
            inputStream.close();
        } catch (Exception e) {
            return "";
        }
        return encodedFile;
    }

    /**
     * Metodo que convierte un texto en base64
     * @param texto Texto a convertir
     * @return cadena en base64
     */
    public String convertirTextoABase64(String texto) {

        String contraBase = "";

        Base64 base64 = new Base64();

        String cadena = texto;
        contraBase = base64.encodeToString(cadena.getBytes());

        return contraBase;
    }
}

