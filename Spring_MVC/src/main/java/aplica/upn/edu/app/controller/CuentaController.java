package aplica.upn.edu.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.bcel.internal.generic.NEWARRAY;

import aplica.upn.edu.app.service.CuentaImpl;


@Controller
public class CuentaController {

	
	ModelAndView informacionVendedor = new ModelAndView();
	
	@RequestMapping(value="/"/*, method = RequestMethod.GET*/)
	public ModelAndView goHome() {
		ModelAndView mav  = new ModelAndView();
		
		mav.setViewName("login");
		return mav;
	}
	
	
	@RequestMapping(value="verificarAcceso" /*,method=RequestMethod.GET*/ )
	public ModelAndView verificarAcceso(HttpServletRequest request) throws ServletException, IOException {
		
		ModelMap model= new ModelMap();
		ModelAndView mav=new ModelAndView();
		List list;
		CuentaImpl cuentaImpl = new CuentaImpl();
		ClienteController clienteController = new ClienteController();
		

		
		list = cuentaImpl.verificarAcceso(request.getParameter("email"), request.getParameter("password"));
		
		
			if(list == null) {
				mav = goHome();
				
				return mav;
				
			}else {
				
				
				model.put("lista",list);
				
				//return clienteController.inicio(informacionVendedor);		
				//System.out.println("si son los datos");
				//System.out.println(list);
				//return  clienteController.inicio(informacionVendedor);
				return new ModelAndView("index","lista",list);
				
				//return new ModelAndView("redirect:/index", model);
				
				
				}
	}
	
	

	
	/* @RequestMapping(value="" ,method=RequestMethod.GET )
	public ModelAndView salirCuenta(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		
		ModelAndView mav=new ModelAndView();
		CuentaImpl cuentaImpl = new CuentaImpl();
		ClienteController clienteController = new ClienteController();
		
		mav = cuentaImpl.verificarAcceso(request.getParameter("email"), request.getParameter("password"));
			if(mav == null) {
				mav = goHome();
				return mav;
			}else {
				
				return clienteController.inicio( mav);		
			}
		
	}
	
	*/
	
	@RequestMapping(value="cerrarSecion")
	public void salirCuenta(HttpServletRequest request) {
		
		
		
	}
	
	
	
	
}
