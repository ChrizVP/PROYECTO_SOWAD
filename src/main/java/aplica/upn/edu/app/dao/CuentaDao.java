package aplica.upn.edu.app.dao;


import org.springframework.web.servlet.ModelAndView;

public interface CuentaDao {

	public  ModelAndView verificarAcceso(String email, String password);
	
}
