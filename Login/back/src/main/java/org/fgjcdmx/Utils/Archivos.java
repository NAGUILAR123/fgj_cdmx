package org.fgjcdmx.Utils;

import org.springframework.mock.web.MockMultipartFile;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.stream.ImageOutputStream;
import java.awt.image.BufferedImage;
import java.io.*;

public class Archivos {

    /**
     * Crear una carpeta
     * @param ruta (String) Ruta del archivo
     * @return (Integer) (0 hubo error, 1 todo normal)
     */
    public static Integer crearCarpeta(String ruta)  {
        File carpeta = new File(ruta);
        boolean creada;
        int count = 0;
        final int RETARDO = 1;

        if(!carpeta.exists()) {
            creada = carpeta.mkdirs();
            while(!creada) {
//                System.out.println("No se pudo crear la carpeta");
                delay(RETARDO);
                creada = carpeta.mkdirs();
                count++;
                if(count == 5) {
                    Thread.currentThread().interrupt();
                    return 0;
                }
            }
        }
        delay(.5);
        return 1;
    }

    /**
     * Almacenar el archivo para procesarlo
     * @param archivo (MultipartFile) archivo a procesar
     * @param ruta (String) Ruta a almacenar el archivo
     * @return (String) Ruta donde se almaceno el archivo
     * @throws IOException
     */
    public static String almacenarArchivo(MultipartFile archivo, String ruta) throws IOException {
        String rutaArchivo = ruta  + File.separator + archivo.getOriginalFilename();

        File destino = new File(rutaArchivo);
        archivo.transferTo(destino);

        rutaArchivo = destino.getAbsolutePath();
        return rutaArchivo;
    }

    /**
     * Eliminar el archivo una vez usado
     * @param rutaArchivo (String) ruta del archivo a eliminar
     * @return (Integer) (1 bien, 2 mal)
     */
    public static Integer eliminarArchivo(String rutaArchivo) {
        File archivo = new File(rutaArchivo);

        if (archivo.exists()) {
            boolean eliminada = archivo.delete();
            int count = 0;

            while (!eliminada && count < 5) {
                delay(1);
                eliminada = archivo.delete();
                count++;
            }
            return eliminada ? 1 : 0;
        }
        return 1;
    }

    /**
     * Convierte una imagen a formato WebP.
     * @param img (MultipartFile) Imagen
     * @return (MultipartFile) Imagen convertida a webp
     * @throws IOException
     */
    public static MultipartFile converitImagenAWebp(MultipartFile img, String nuevoNombre) throws IOException {
        // Convert MultipartFile to BufferedImage
        BufferedImage bufferedImage = ImageIO.read(img.getInputStream());

        // Convert BufferedImage to WebP
        ByteArrayOutputStream webpOutputStream = new ByteArrayOutputStream();
        try (ImageOutputStream ios = ImageIO.createImageOutputStream(webpOutputStream)) {
            ImageWriter writer = ImageIO.getImageWritersByFormatName("webp").next();
            writer.setOutput(ios);
            ImageWriteParam writeParam = writer.getDefaultWriteParam();
            writer.write(null, new IIOImage(bufferedImage, null, null), writeParam);
        }

        // Convert ByteArrayOutputStream to MultipartFile
        byte[] webpBytes = webpOutputStream.toByteArray();
        InputStream webpInputStream = new ByteArrayInputStream(webpBytes);
        return new MockMultipartFile(nuevoNombre, img.getOriginalFilename() + ".webp", "image/webp", webpInputStream);
    }

    /**
     * Dar un retardo "delay"
     * @param seg (double) ingresar tiempo en milisegundos
     */
    private static void delay(double seg) {
        long milis = (long) (seg * 1000);

        try {
            Thread.sleep(milis);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
