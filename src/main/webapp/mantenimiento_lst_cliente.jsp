<!-- Importacion de librerias para etiquetas -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Mantenimiento Cliente</title>

<link rel="stylesheet" href="css/estilos_m_cli.css" />
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img alt="" src="img/nuevo.png"
				width="120" height="60">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Transaccion</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Consulta </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="mantenimiento.jsp">Productos</a></li>
							<li><a class="dropdown-item" href="crudcli?btnAccion=lst">Clientes</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Trabajadores</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Mantenimiento </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="mantenimiento.jsp">Productos</a></li>
							<li><a class="dropdown-item"
								href="mantenimiento_cliente.jsp">Clientes</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Trabajadores</a></li>
						</ul></li>

				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Buscar"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Buscar</button>
				</form>
			</div>
		</div>
	</nav>

	<!-- Listado -->
	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Codigo</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Correo</th>
					<th>Celular</th>
					<th></th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${lstClientes }" var="c">
					<tr class="grilla_campo">
						<td>${c.getIde_cli() }</td>
						<td>${c.getNom_cli() }</td>
						<td>${c.getApe_cli() }</td>
						<td>${c.getMail_cli() }</td>
						<td>${c.getTelefo_cli() }</td>

						<td>
							<form action="crudcli" method="post">
								<input name="c" value="${c.ide_cli }" type="hidden">
								<button type="submit" name="btnAccion" value="q"
									class="btn btn-warning">Editar</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>

</html>