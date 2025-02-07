package org.fgjcdmx.Utils.Efirma;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Response;

import org.fgjcdmx.Utils.Entorno;
import org.json.JSONObject;

import com.google.gson.Gson;

/**
 *
 */
public class ObtFirma {

    // Variables en base 64 para verificar la firma
    private String password = "";
    private String bytekey = "";
    private String bytecer = "";
    // Cadena con datos del usuario
    private String cadena = "";

    public JSONObject ObtenerFirma(String certificado, String llave, String contrasena, String cadena) {
        // Instanciamos las clases para obtener los datos y poder firmar
        ObtToken obtenerToken = new ObtToken();
        ConvertBase64 conversiones = new ConvertBase64();

        // Obtención del Token
        String Token = obtenerToken.Ontenertoken();
        // Conversión de Certificado, Llave y contraseña a base64
        String bytecer = conversiones.converDoc(certificado);
        String bytekey = conversiones.converDoc(llave);

        if(bytecer.isEmpty() || bytekey.isEmpty()) return null;

        String password = conversiones.convertirTextoABase64(contrasena);

        String URLfinal = Entorno.getVariable("URL_EFIRMA");

        String selloObt = "";

        // json de retorno
        JSONObject jsonResponse = new JSONObject();

        try {
            Client clientfinal = ClientBuilder.newClient();
            WebTarget targetfinal = clientfinal.target(URLfinal + "eFirma");
            Invocation.Builder solicitudfinal = targetfinal.request();

            solicitudfinal.header("Authorization", Token);

            ObtFirma appfinal = new ObtFirma();

            appfinal.setPassword(password);
            appfinal.setCadena(
                    "||fechacap|15/11/2022 10:52:41 a. m.|cat_numformato|5314|conseformato|6|nombreformato||descfiscalia|FIAO|desc_agencia|AO-1|idorigen|1|ctrllave|18010320201210006500000000|usuariocap|999904|descperfil|MINISTERIAL||");
            appfinal.setBytekey(bytekey);
            appfinal.setBytecer(bytecer);

            Gson gsonfinal = new Gson();
            String jsonStringFinal = gsonfinal.toJson(appfinal);

            // se hace la peticion y devuelve una respuesta
            Response postfinal = solicitudfinal.post(Entity.json(jsonStringFinal));

            // Procesar la respuesta
            String responseJson = postfinal.readEntity(String.class);

            switch (postfinal.getStatus()) {
                // "siempre" lanza status 200
                case 200:
                    jsonResponse = new JSONObject(responseJson);
                    break;

                // En caso de haber otra respuesta
                case 1:
                    // obtener un valor del json respuesta
                    jsonResponse = new JSONObject(responseJson);
                    break;

                // en caso de que arroje un status diferente al 200
                default:
                    jsonResponse = new JSONObject(responseJson);
                    break;
            }

        } catch (Exception e) {
            // TODO: handle exception
        }

        return jsonResponse;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the bytekey
     */
    public String getBytekey() {
        return bytekey;
    }

    /**
     * @param bytekey the bytekey to set
     */
    public void setBytekey(String bytekey) {
        this.bytekey = bytekey;
    }

    /**
     * @return the bytecer
     */
    public String getBytecer() {
        return bytecer;
    }

    /**
     * @param bytecer the bytecer to set
     */
    public void setBytecer(String bytecer) {
        this.bytecer = bytecer;
    }

    /**
     * @return the cadena
     */
    public String getCadena() {
        return cadena;
    }

    /**
     * @param cadena the cadena to set
     */
    public void setCadena(String cadena) {
        this.cadena = cadena;
    }

}
