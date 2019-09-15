package aplica.upn.edu.app.controller;


import javax.servlet.http.HttpServletRequest;


import java.util.List;



import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import aplica.upn.edu.app.model.Cliente;
import aplica.upn.edu.app.service.ClienteImpl;
import aplica.upn.edu.app.service.Conexion;



@Controller
public class ClienteController {
	
	
	
	Conexion conexion =  new Conexion();
	JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conexion());
	ModelAndView mav=new ModelAndView();
	
	/*
	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView goHome() {
		
		return mav;
	}
	*/
	@RequestMapping(value="index",method=RequestMethod.GET)
	public ModelAndView inicio( ModelAndView modelAndView) {
		
		
		modelAndView.setViewName("index");
		return modelAndView;
	}
	
	
	@RequestMapping(value="listarCliente",method=RequestMethod.GET)
	public ModelAndView Listar() {
		
		ClienteImpl clienteImpl = new ClienteImpl();
		mav = clienteImpl.listarCliente();
		mav.setViewName("listarCliente");
		return mav;
	}
	
	//=================================================================================
	
	@RequestMapping(value = "agregarCliente",method=RequestMethod.GET)
	public ModelAndView agregarCliente() {
		
		mav.addObject(new Cliente());
		mav.setViewName("agregarCliente");
		return mav;
	}
	
	
	@RequestMapping(value = "agregarCliente",method=RequestMethod.POST)
	public ModelAndView agregarCliente( Cliente c ) {
		
		
		ClienteImpl clienteImpl = new ClienteImpl();
		boolean comprobar = clienteImpl.buscarClienteBool(c.getDni());
			
		//System.out.println(comprobar);
		
		if(comprobar==true) {	
			return new ModelAndView("redirect:/agregarCliente");
		}else {
			mav = clienteImpl.insertCliente(c);
			mav.setViewName("agregarCliente");
		return new ModelAndView("redirect:/listarCliente");
		
		}
	}
	
	//=============================================================================
	
	@RequestMapping(value="editarCliente", method = RequestMethod.GET )
	public ModelAndView EditarCliente(HttpServletRequest request) {
		
		ClienteImpl clienteImpl = new ClienteImpl();
		List list = clienteImpl.buscarCliente(request.getParameter("dni"));
		mav.addObject("lista",list);
		mav.setViewName("editarCliente");
		
		return mav;
		
	}
	
	
	
	@RequestMapping(value="editarCliente", method = RequestMethod.POST)
	public ModelAndView EditarCliente(Cliente c) {
		
		//System.out.println(c.getApellidos());
		ClienteImpl clienteImpl = new ClienteImpl();
		clienteImpl.editarCliente(c);
		return new ModelAndView("redirect:/listarCliente");
	}
	
	
	
	
	//============================================================================
	
	@RequestMapping(value="deleteCliente")
	public ModelAndView DeleteCliente(HttpServletRequest request) {
		
		ClienteImpl clienteImpl = new ClienteImpl();
		clienteImpl.eliminarCliente(request.getParameter("dni"));
		return new ModelAndView("redirect:/listarCliente");
		
	}
		
}
