package aplica.upn.edu.app.dao;


import java.util.List;

import org.springframework.web.servlet.ModelAndView;

public interface CuentaDao {

	public  List verificarAcceso(String email, String password);
	
}
