/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;

/**
 *
 * @author JOSE
 */
public class Reservas implements Serializable {

    private long idreserva;
    private String detalle;
    private String nombreusuario;
    private String correo;
    
    private String fecha;
 

    public Reservas() {
        idreserva = 0;
        detalle = "";
        nombreusuario = "";
        correo = "";
    
        
    }

 
    public long getIdreserva() {
        return idreserva;
    }

    public void setIdreserva(long idreserva) {
        this.idreserva = idreserva;
    }

    public String getNombreusuario() {
        return nombreusuario;
    }

    public void setNombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
    }

    

//    public void setFecha(Date fecha) {
//        this.fecha = fecha;
//    }  

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
   
 

  

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

}
