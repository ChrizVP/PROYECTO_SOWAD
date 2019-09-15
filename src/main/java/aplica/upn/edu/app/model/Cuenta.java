package aplica.upn.edu.app.model;

import java.util.Date;

public class Cuenta {

	
	private int idCuenta;
	private String email;
	private Date fechaCreacion;
	private String password;
	private int dniVendedor;
	
	
	public int getIdCuenta() {
		return idCuenta;
	}
	public void setIdCuenta(int idCuenta) {
		this.idCuenta = idCuenta;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getFechaCreacion() {
		return fechaCreacion;
	}
	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getDniVendedor() {
		return dniVendedor;
	}
	public void setDniVendedor(int dniVendedor) {
		this.dniVendedor = dniVendedor;
	}
	
	
	
	
	
}
