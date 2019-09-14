package aplica.upn.edu.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import aplica.upn.edu.app.model.Producto;
import aplica.upn.edu.app.service.Conexion;
import aplica.upn.edu.app.service.ProductoImpl;

@Controller
public class ProductoController {

	Conexion conexion =  new Conexion();
	JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conexion());
	ModelAndView mav=new ModelAndView();
	
	
	@RequestMapping(value="listarProducto",method=RequestMethod.GET)
	public ModelAndView ListarProducto() {
		
		ProductoImpl productoImpl = new ProductoImpl();
		mav = productoImpl.listarProducto();
		mav.setViewName("listarProducto");
		return mav;
	}
	
	//=================================================================================
	
		@RequestMapping(value = "agregarProducto",method=RequestMethod.GET)
		public ModelAndView agregarProducto() {
			
			mav.addObject(new Producto());
			mav.setViewName("agregarProducto");
			return mav;
		}
		
		
		@RequestMapping(value = "agregarProducto",method=RequestMethod.POST)
		public ModelAndView agregarProducto( Producto producto ) {
			
			
			ProductoImpl productoImpl = new ProductoImpl();
			boolean comprobar = productoImpl.buscarProductoBool(producto.getIdProducto());

			
			if(comprobar==true) {	
				return new ModelAndView("redirect:/agregarProducto");
			}else {
				mav = productoImpl.insertProducto(producto);
				mav.setViewName("agregarProducto");
			return new ModelAndView("redirect:/listarProducto");
			
			}
		}

		
		//=============================================================================
		
		@RequestMapping(value="editarProducto", method = RequestMethod.GET )
		public ModelAndView EditarProducto(HttpServletRequest request) {
			
			ProductoImpl productoImpl = new ProductoImpl();
			List list = productoImpl.buscarProducto(Integer.parseInt(request.getParameter("idProducto")));
			mav.addObject("lista",list);
			mav.setViewName("editarProducto");
			
			return mav;
			
		}
		
		
		@RequestMapping(value="editarProducto", method = RequestMethod.POST)
		public ModelAndView EditarProducto(Producto producto) {
			
			ProductoImpl productoImpl = new ProductoImpl();
			productoImpl.editarProducto(producto);
			return new ModelAndView("redirect:/listarProducto");
		}
		
		

		//============================================================================
		
		@RequestMapping(value="deleteProducto")
		public ModelAndView DeleteProducto(HttpServletRequest request) {
			
			ProductoImpl productoImpl = new ProductoImpl();
			System.out.println(request.getParameter("idProducto"));
			productoImpl.eliminarProducto(Integer.parseInt(request.getParameter("idProducto")));
			return new ModelAndView("redirect:/listarProducto");
			
		}
	
}
