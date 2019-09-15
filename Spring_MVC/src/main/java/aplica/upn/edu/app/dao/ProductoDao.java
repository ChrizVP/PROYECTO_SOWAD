package aplica.upn.edu.app.dao;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import aplica.upn.edu.app.model.Producto;

public interface ProductoDao {

	public ModelAndView listarProducto();
	
	public ModelAndView insertProducto(Producto producto);

	public List buscarProducto(int idProducto);
	
	public boolean buscarProductoBool(int idProducto);
	
	public void editarProducto(Producto producto);
	
	public void eliminarProducto(int idProducto);
	
}
