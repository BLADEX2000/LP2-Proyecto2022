package interfaces;

import java.util.List;

import models.Cliente;

public interface ClienteInterface {
	public int registrar(Cliente c);
	public int actualizar(Cliente c);
	public int eliminar(String ide_cli);
	public List<Cliente> listar();
	public Cliente buscar(String ide_cli);
	
	public List<Cliente> consultar(int categoria);
}
