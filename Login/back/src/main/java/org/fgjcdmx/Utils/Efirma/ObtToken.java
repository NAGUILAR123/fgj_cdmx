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
 * Clase que es la encargada de obtener el token para la autenticacion de la
 * firma electronica
 */
public class ObtToken {

    /**
     * Variables de clase utilizadas para usar el servicio
     */
    private String Username;
    private String Password;

    /**
     * Metodo que Obtiene el Token que se requiere para poder usar el servicio de la
     * Firma (paso 1 para la obtención de la efirma)
     *
     * @param username Otorgado para el servicio
     * @param Password Otorgado para el servicio
     * @return
     */
    public String Ontenertoken() {
        String Token = "";
        String URL = Entorno.getVariable("URL_EFIRMA");
        String res = "";
        try {
            // Creamos el cliente de conexión al API Restful
            Client cliente = ClientBuilder.newClient();
            // Creamos el target lo cuál es nuestra URL junto con el nombre del método a
            // llamar
            WebTarget target = cliente.target(URL + "autenticar");
            // Creamos nuestra solicitud que realizará el request
            Invocation.Builder solicitud = target.request();
            // Creamos y Llenamos nuestro objeto BaseReq con los datos que solicita el API
            ObtToken req = new ObtToken();
            req.setUsername(Entorno.getVariable("USERNAME_SAT"));
            req.setPassword(Entorno.getVariable("PASSWORD_SAT"));
            // Convertimos el objeto req a un json
            Gson gson = new Gson();
            String jsonString = gson.toJson(req);
            // Enviamos nuestro json vía post al API Restful
            Response post = solicitud.post(Entity.json(jsonString));
            // Recibimos la respuesta y la leemos en una clase de tipo String, en caso de
            // que el json sea tipo json y no string, debemos usar la clase de tipo
            // JsonObject.class en lugar de String.class
            String responseJson = post.readEntity(String.class);
            res = responseJson;

            // actuar dependiendo el status
            switch (post.getStatus()) {
                // Aun faltan codigos de error
                /**
                 * 503 – Error interno del servidor 404 – página no encontrada
                 */
                case 200:
                    res = responseJson;
                    /**
                     * obtener un valor del json respuesta
                     **/
                    JSONObject objetoJson = new JSONObject(responseJson);

                    try {
                        Token = objetoJson.getString("Token");
                    } catch (Exception e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }
                    break;
                default:
                    res = "Error";
                    break;
            }
        } catch (Exception e) {
            // En caso de un error en la solicitud, llenaremos res con la exceptión para
            // verificar que sucedió
            res = e.toString();
        }

        return Token;
    }

    /**
     * Seters and Geters
     */
    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }
}