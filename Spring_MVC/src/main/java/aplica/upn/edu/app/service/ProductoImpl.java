package aplica.upn.edu.app.service;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.servlet.ModelAndView;

import aplica.upn.edu.app.dao.ProductoDao;
import aplica.upn.edu.app.model.Producto;

public class ProductoImpl implements ProductoDao{

	
	Conexion conexion =  new Conexion();
	JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conexion());

	
	@Override
	public ModelAndView listarProducto() {
		
		List datos=null;
		String sql="select *from Producto";
		datos=  this.jdbcTemplate.queryForList(sql);
		ModelAndView mav = new ModelAndView();
	
		try {
			if(datos!=null) {	
				mav.addObject("lista", datos);
			}	
		}catch(Exception e){
			
		}
		return mav;	
	}

	@Override
	public ModelAndView insertProducto(Producto producto) {
		
		ModelAndView mav = new ModelAndView();
		String sql="insert into Producto(idProducto, nombre, color, precio, cantidad)values(?,?,?,?,?)";
		this.jdbcTemplate.update(sql, producto.getIdProducto(), producto.getNombre(), producto.getColor(), 
								producto.getPrecio(), producto.getCantidad());
		mav.addObject(new Producto());
		return mav;
	}

	@Override
	public List buscarProducto(int idProducto) {
		List datos;
		String sql = "select *from Producto where idProducto="+idProducto;
		datos=  this.jdbcTemplate.queryForList(sql);
		return datos;
	}

	@Override
	public boolean buscarProductoBool(int idProducto) {
		
		List datos;
		String sql = "select *from Producto where idProducto="+idProducto;
		datos=  this.jdbcTemplate.queryForList(sql);
		if(datos.isEmpty()) {
			return false;
		}else {
			return true;
		}
	}

	@Override
	public void editarProducto(Producto producto) {
		
		//int dni = Integer.parseInt(producto.getDni());
		
		String sql="update Producto set  idProducto=?, nombre=?, color=?, precio=?, cantidad=? where idProducto="+producto.getIdProducto();
		this.jdbcTemplate.update(sql, producto.getIdProducto(), producto.getNombre(), producto.getColor(), 
								producto.getPrecio(), producto.getCantidad());
		
	}

	@Override
	public void eliminarProducto(int idProducto) {
		
		String sql = "delete from Producto where idProducto="+idProducto;
		this.jdbcTemplate.update(sql);
	}

}
