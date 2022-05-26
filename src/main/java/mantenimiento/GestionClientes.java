package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import interfaces.ClienteInterface;
import models.Cliente;
import utils.MySQLConexion8;

public class GestionClientes implements ClienteInterface{

	@Override
	public int registrar(Cliente c) {
		int rs=0;
		//PLANTILLA DE BD
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con=MySQLConexion8.getConexion();
			String sql="insert into tb_cliente values (?,?,?,?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1, c.getIde_cli());
			pst.setString(2, c.getNom_cli());
			pst.setString(3, c.getApe_cli());
			pst.setString(4, c.getMail_cli());
			pst.setString(5, c.getContra_cli());
			pst.setString(6, c.getDire_cli());
			pst.setInt(7, c.getTelefo_cli());
			
			rs=pst.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Error al registrar cliente: "+e.getMessage());
		}finally {
			MySQLConexion8.closeConexion(con);
		}
		return rs;
	}

	@Override
	public int actualizar(Cliente c) {
		int rs=0;
		//PLANTILLA DE BD
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con=MySQLConexion8.getConexion();
			String sql="update tb_cliente set nom_cli=?,ape_cli=?,mail_cli=?,contra_cli=?,dire_cli=?,telefo_cli=? where ide_cli=?";
			pst=con.prepareStatement(sql);
			

			pst.setString(1, c.getNom_cli());
			pst.setString(2, c.getApe_cli());
			pst.setString(3, c.getMail_cli());
			pst.setString(4, c.getContra_cli());
			pst.setString(5, c.getDire_cli());
			pst.setInt(6, c.getTelefo_cli());
			pst.setString(7, c.getIde_cli());
			
			rs=pst.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Error al actualizar cliente: "+e.getMessage());
		}finally {
			MySQLConexion8.closeConexion(con);
		}
		return rs;
	}

	@Override
	public int eliminar(String ide_cli) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Cliente> listar() {
		List<Cliente> lista=null;
		
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs= null;
		
		try {
			con=MySQLConexion8.getConexion();
			String sql="select * from tb_cliente";
			pst=con.prepareStatement(sql);		
			rs=pst.executeQuery();
			
			lista=new ArrayList<Cliente>();
			while(rs.next()) {
				lista.add(new Cliente(rs.getString(1), rs.getString(2), rs.getString(3),
										rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7)));
			}
			
		} catch (Exception e) {
			System.out.println("Error al listar clientes: "+e.getMessage());
		}finally {
			MySQLConexion8.closeConexion(con);
		}
		
		return lista;
	}

	@Override
	public Cliente buscar(String ide_cli) {
		Cliente c= null;

		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs= null;
		
		try {
			con=MySQLConexion8.getConexion();
			String sql="select * from tb_cliente where ide_cli=?";
			pst=con.prepareStatement(sql);
			

			pst.setString(1, ide_cli);
			
			rs=pst.executeQuery();
			
			if(rs.next()) {
				c = new Cliente(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
			}
			
		} catch (Exception e) {
			System.out.println("Error al buscar cliente: "+e.getMessage());
		}finally {
			MySQLConexion8.closeConexion(con);
		}
		
		return c;
	}

	@Override
	public List<Cliente> consultar(int categoria) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cliente validar(String usuario, String clave) {
		Cliente c=null;
		// Plantilla de BD
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs= null;
		
		try {
			con=MySQLConexion8.getConexion();
			String sql="select * from tb_cliente where mail_cli=? and contra_cli=?";
			pst=con.prepareStatement(sql);
			
			//Ya que hay un parametro, lo seteamos
			pst.setString(1, usuario);
			pst.setString(2, clave);
			
			rs=pst.executeQuery();
			
			//
			if (rs.next()) {
				c = new Cliente(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
				
			}
			
		} catch (Exception e) {
			System.out.println("Error al logear: "+e.getMessage());
		}finally {
			MySQLConexion8.closeConexion(con);
		}
		return c;
	}

}
