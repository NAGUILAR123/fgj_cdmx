package org.fgjcdmx.Exceptions;

import jakarta.validation.ConstraintViolationException;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class ExcepcionesGloables {

    /**
     * Errores con el acceso de datos en la Base de Datos
     * @param e
     * @return
     */
    @ExceptionHandler(DataAccessException.class)
    public ResponseEntity<Map<String, String>> handleDataAccessException(DataAccessException e) {
        Map<String, String> message = new HashMap<>();
        message.put("error: ", e.getMostSpecificCause().getMessage());
        message.put("type error: ", "DataAccessException");
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(message);
    }

    /**
     * Errores especificos de SQL ya sea en la conexion o consultas
     * @param e
     * @return
     */
    @ExceptionHandler(SQLException.class)
    public ResponseEntity<Map<String, String>> handleSQLException(SQLException e) {
        Map<String, String> message = new HashMap<>();
        message.put("error: ", e.getLocalizedMessage());
        message.put("type error: ", "SQLException");
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(message);
    }

    /**
     * Errores de violacion de la integridad de datos en la Base de Datos
     * @param e
     * @return
     */
    @ExceptionHandler(DataIntegrityViolationException.class)
    public ResponseEntity<Map<String, String>> handleDataIntegrityViolationException(DataIntegrityViolationException e) {
        Map<String, String> message = new HashMap<>();
        message.put("error : ", e.getMostSpecificCause().getLocalizedMessage());
        message.put("type error: ", "DataIntegrityViolationException");
        return ResponseEntity.status(HttpStatus.CONFLICT).body(message);
    }

    /**
     * Problemas de entrada y salida de datos como lectura o escritura de archivos
     * @param e
     * @return
     */
    @ExceptionHandler(IOException.class)
    public ResponseEntity<Map<String, String>> handleIOException(IOException e) {
        Map<String, String> message = new HashMap<>();
        message.put("error: ", e.getLocalizedMessage());
        message.put("type error: ", "IOException");

        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(message);
    }

    /**
     * Excepciones en tiempos de ejecucion en la logica de negocio
     * @param e
     * @return
     */
    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<Map<String, String>> handleRuntimeException(RuntimeException e) {
        Map<String, String> message = new HashMap<>();
        message.put("error: ", e.toString());
        message.put("type error: ", "RuntimeException");
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(message);
    }

    /**
     * Cuando trae datos vacios de las consultas sql con jdbc
     * @param e
     * @return
     */
    @ExceptionHandler(EmptyResultDataAccessException.class)
    public ResponseEntity<String> handleEmptyResultDataAccessException(EmptyResultDataAccessException e) {
        return ResponseEntity.status(404).build();
    }

    // ---------------- VALIDACIONES (Jakarta.validatios) ----------------
    @ExceptionHandler(ConstraintViolationException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResponseEntity<?> handleConstraintViolationException(ConstraintViolationException e) {
        Map<String, String> errors = new HashMap<>();

        e.getConstraintViolations().forEach(ex -> {
            String propiedadMensaje = ex.getPropertyPath().toString();
            String mensaje = ex.getMessage();
            errors.put(propiedadMensaje, mensaje);
        });

        return ResponseEntity.badRequest().body(errors);
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResponseEntity<?> handleMethodArgumentNotValidException(MethodArgumentNotValidException e) {
        Map<String, String> errors = new HashMap<>();

        e.getBindingResult().getAllErrors().forEach(error -> {
            String propiedadMensaje = ((FieldError) error).getField();
            String mensaje = error.getDefaultMessage();
            errors.put(propiedadMensaje, mensaje);
        });

        return ResponseEntity.badRequest().body(errors);
    }
}
