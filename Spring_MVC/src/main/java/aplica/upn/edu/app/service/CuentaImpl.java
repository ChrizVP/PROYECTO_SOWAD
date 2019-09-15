package aplica.upn.edu.app.service;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.servlet.ModelAndView;

import aplica.upn.edu.app.dao.CuentaDao;

public class CuentaImpl implements CuentaDao {

	Conexion conexion =  new Conexion();
	JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conexion());
	
	
	@Override
	public List verificarAcceso(String email, String password) {
		
		List datos;
		ModelAndView mav = new ModelAndView();
		
		String sql = "SELECT dni, nombre FROM vendedor INNER JOIN cuenta ON vendedor.dni =(SELECT dniVendedor from cuenta WHERE email='"+email+"' AND password='"+password +"')";
		
		datos=  this.jdbcTemplate.queryForList(sql);
		
		
		if(datos.isEmpty()) {
			// datos erroneos!
			//mav = null;
			
			datos=null;
		}else {
			//datos correctos!
			//mav.addObject("lista", datos);
			
			
		}
		return datos;
	}
	
	
	
}
