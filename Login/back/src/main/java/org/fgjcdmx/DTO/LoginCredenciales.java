package org.fgjcdmx.DTO;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;

public class LoginCredenciales {
    @NotNull
    private Long numEmpl;
    @NotEmpty
    private String password;
    private String rfc;
    private int status;

    public LoginCredenciales() {}

    public LoginCredenciales(Long numEmpl, String password, String rfc, Integer status) {
        this.numEmpl = numEmpl;
        this.password = password;
        this.rfc = rfc;
        this.status = status;
    }

    public Long getNumEmpl() {
        return numEmpl;
    }

    public void setNumEmpl(Long numEmpl) {
        this.numEmpl = numEmpl;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String toString() {
        return String.format("numEmpl: %d\n" +
                            "contraseña: %s\n" +
                            "RFC: %s\n" +
                            "status: %d\n"
                            , numEmpl, password, rfc, status);
    }
}
