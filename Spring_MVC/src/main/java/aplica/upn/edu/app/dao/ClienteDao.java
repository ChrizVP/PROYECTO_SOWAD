package aplica.upn.edu.app.dao;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import aplica.upn.edu.app.model.Cliente;

public interface ClienteDao {

		public ModelAndView listarCliente();
		
		public ModelAndView insertCliente(Cliente clienteDao);

		public List buscarCliente(String dni);
		
		public boolean buscarClienteBool(String dni);
		
		public void editarCliente(Cliente clienteDao);
		
		public void eliminarCliente(String dni);
}
