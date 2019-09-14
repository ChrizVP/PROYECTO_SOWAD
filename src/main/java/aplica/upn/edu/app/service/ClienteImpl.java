package aplica.upn.edu.app.service;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.servlet.ModelAndView;

import aplica.upn.edu.app.dao.ClienteDao;
import aplica.upn.edu.app.model.Cliente;

public class ClienteImpl implements ClienteDao{

	
	Conexion conexion =  new Conexion();
	JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conexion());
	
	
	
	@Override
	public ModelAndView listarCliente() {
		
		List datos=null;
		String sql="select *from Cliente";
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
	public ModelAndView insertCliente(Cliente clienteDao) {
		
		
		ModelAndView mav = new ModelAndView();
		String sql="insert into cliente(dni, apellidos, nombre)values(?,?,?)";
		this.jdbcTemplate.update(sql, clienteDao.getDni(), clienteDao.getApellidos(), clienteDao.getNombre());
		mav.addObject(new Cliente());

		
		
		return mav;
	}

	@Override
	public List buscarCliente(String dni) {
		
		List datos;
		String sql = "select *from cliente where dni="+dni;
		datos=  this.jdbcTemplate.queryForList(sql);
		return datos;
		
	}

	@Override
	public boolean buscarClienteBool(String dni) {
		
		List datos;
		String sql = "select *from cliente where dni="+dni;
		datos=  this.jdbcTemplate.queryForList(sql);
		//System.out.println(datos.isEmpty());
		if(datos.isEmpty()) {
			return false;
		}else {
			return true;
		}
		
	}
	
	@Override
	public void editarCliente(Cliente clienteDao) {
		int dni = Integer.parseInt(clienteDao.getDni());
		//int dni = clienteDao.getDni();
		//System.out.println(clienteDao.getDni());
		String sql="update cliente set  apellidos=?, nombre=? where dni="+dni;
		this.jdbcTemplate.update(sql, clienteDao.getApellidos(),clienteDao.getNombre());
	}

	@Override
	public void eliminarCliente(String dni) {
		String sql = "delete from cliente where dni="+dni;
		this.jdbcTemplate.update(sql);
	}

	
	
	/*
	
	Conexion conexion =  new Conexion();
	JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conexion());
	
	
	public ModelAndView listarCliente() {

		List datos=null;
		String sql="select *from Cliente";
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
	
	
	public ModelAndView agregarCliente(Cliente c) {
		
		ModelAndView mav = new ModelAndView();
		String sql="insert into cliente(dni, apellidos, nombre)values(?,?,?)";
		this.jdbcTemplate.update(sql,c.getDni(), c.getApellidos(), c.getNombre());
		mav.addObject(new Cliente());
		return mav;
	}

	
	public List buscarCliente(String dni) {
		
		List datos;
		String sql = "select *from cliente where dni="+dni;
		datos=  this.jdbcTemplate.queryForList(sql);
		return datos;
	}

	public void editarCliente(Cliente c, int dni) {
		
		String sql="update cliente set  apellidos=?, nombre=? where dni="+dni;
		this.jdbcTemplate.update(sql, c.getApellidos(),c.getNombre());
	}
	

	public void deleteCliente(String dni) {
		
		String sql = "delete from cliente where dni="+dni;
		this.jdbcTemplate.update(sql);
		
	}
	
	*/

	
}