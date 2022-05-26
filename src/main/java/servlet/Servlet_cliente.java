package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.GestionClientes;
import models.Cliente;


@WebServlet(name = "crudcli", description = "crud de clientes", urlPatterns = { "/crudcli" })
public class Servlet_cliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Servlet_cliente() {
        super();
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String accion=request.getParameter("btnAccion");
		
		System.out.println("Accion: "+accion+"\n");
		
		switch (accion) {
		case "reg": registrar(request, response); break;
		case "act": actualizar(request, response); break;
		case "eli": eliminar(request, response); break;
		case "lst": listar(request, response); break;
		case "q" : buscar(request,response);break;
		case "f": filtro(request,response);break;
		case "log": login(request,response);break;
		default:
			
		}
	}


	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String mail, clave;
		
		mail = request.getParameter("txtCorreo");
		clave = request.getParameter("txtPassword");
				
		System.out.println("Su usuario es: " + mail + "\n" + "Su clave es: " + clave);
		

		
		Cliente c=new GestionClientes().validar(mail, clave);
		
		/*if (c != null ) {
			//request.setAttribute("c", c); 				//<-- a nivel de request
			//request.getSession().setAttribute("c", c);	//	<-- a nivel de sesion
			
			response.sendRedirect("mantenimiento_cliente.jsp");
			//request.getRequestDispatcher("principal.jsp").forward(request, response);
		}
			
		else {				
			//request.setAttribute("mensaje", 
				//	"<div class='alert alert-danger' role='alert'> Usuario incorrecto </div>");
			
			request.getRequestDispatcher("Loginv2.jsp").forward(request, response);

		}*/
		
				if (mail.equals("marco@gmail.com") && clave.equals("123145") )
			
			response.sendRedirect("mantenimiento_cliente.jsp");
			
		else {				
			request.setAttribute("mensaje", 
					"<div class='alert alert-danger' role='alert'> Usuario incorrecto </div>");
			
			request.getRequestDispatcher("Loginv2.jsp").forward(request, response);

		}
		
	}


	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String ide_cli=request.getParameter("txtCodigo");
		String nom_cli=request.getParameter("txtNombre");
		String ape_cli=request.getParameter("txtApellido");
		String mail_cli=request.getParameter("txtCorreo");
		String contra_cli=request.getParameter("txtPassword");
		String dire_cli=request.getParameter("txtDireccion");
		int telefono_cli=Integer.parseInt(request.getParameter("txtCelular"));
				
		Cliente c=new Cliente(ide_cli, nom_cli, ape_cli, mail_cli, contra_cli, dire_cli, telefono_cli);
		
		GestionClientes gc=new GestionClientes();
		
		int ok = gc.registrar(c);
	
		if (ok==0) {
			request.setAttribute("mensaje", 
					"<div class='alert alert-danger alert-dismissible fade show' role='alert'>"
					+ "  <strong>Error al registrar</strong> Revisa que los campos sean correctos"
					+ "  <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>"
					+ "</div>");
					
					
			request.setAttribute("c", c);
		}else {
			request.setAttribute("mensaje", 
					"<div class='alert alert-success alert-dismissible fade show' role='alert'>"
							+ "  <strong>Cliente registrado exitosamente</strong>"
							+ "  <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>"
							+ "</div>");
		}
		
		request.getRequestDispatcher("mantenimiento_cliente.jsp").forward(request, response);
		
	}


	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ide_cli=request.getParameter("txtCodigo");
		String nom_cli=request.getParameter("txtNombre");
		String ape_cli=request.getParameter("txtApellido");
		String mail_cli=request.getParameter("txtCorreo");
		String contra_cli=request.getParameter("txtPassword");
		String dire_cli=request.getParameter("txtDireccion");
		int telefono_cli=Integer.parseInt(request.getParameter("txtCelular"));
				
		Cliente c=new Cliente(ide_cli, nom_cli, ape_cli, mail_cli, contra_cli, dire_cli, telefono_cli);
		
		GestionClientes gc=new GestionClientes();
		
		int ok = gc.actualizar(c);
	
		if (ok==0) {
			request.setAttribute("mensaje", 
					"<div class='alert alert-danger alert-dismissible fade show' role='alert'>"
					+ "  <strong>Error al actualizar</strong> Revisa que los campos sean correctos"
					+ "  <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>"
					+ "</div>");
					
					
			request.setAttribute("c", c);
		}else {
			request.setAttribute("mensaje", 
					"<div class='alert alert-success alert-dismissible fade show' role='alert'>"
							+ "  <strong>Cliente actualizado exitosamente</strong>"
							+ "  <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>"
							+ "</div>");
		}
		
		request.getRequestDispatcher("mantenimiento_cliente.jsp").forward(request, response);
	}


	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	}


	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		GestionClientes gc=new GestionClientes();
		List<Cliente> lstClientes=gc.listar();
		
		request.setAttribute("lstClientes", lstClientes);
		
		request.getRequestDispatcher("mantenimiento_lst_cliente.jsp").forward(request, response);
	}


	private void buscar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ide_cli=request.getParameter("c"); // form o del href
		
		Cliente c=new GestionClientes().buscar(ide_cli);
		
		
		request.setAttribute("c", c); // Envía el obj p de tipo Producto como un atributo al jsp
		
		request.getRequestDispatcher("mantenimiento_cliente.jsp").forward(request, response);
		
	}


	private void filtro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

}
