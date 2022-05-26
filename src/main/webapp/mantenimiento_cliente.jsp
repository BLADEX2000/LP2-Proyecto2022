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
							<li><a class="dropdown-item" href="mantenimiento_cliente.jsp">Clientes</a></li>
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

	<!-- Carrusel -->

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/b1.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/b2.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/b3.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<!-- Formulario -->
	<div id="formulario">
		<h1>Mantenimiento de Clientes</h1>
		<form action="crudcli" method="post">
			<div class="mb-3">
				<label for="InputCodigo" class="form-label">Codigo</label> <input
					name="txtCodigo" type="text" class="form-control" id="InputCodigo" value="${c.ide_cli }"
					placeholder="Ingrese codigo - ejemplo: C00001">
			</div>
			<div class="mb-3">
				<div class="row">
					<div class="col">
						<label for="InputNombre" class="form-label">Nombre</label> 
						<input value="${c.nom_cli }"
							type="text" class="form-control" name="txtNombre"
							id="InputNombre" placeholder="Ingrese nombre">
					</div>
					<div class="col">
						<label for="InputApellido" class="form-label">Apellido</label> 
						<input value="${c.ape_cli }"
							type="text" class="form-control" name="txtApellido"
							id="InputApellido" placeholder="Ingrese apellido">
					</div>
				</div>
			</div>
			<div class="mb-3">
				<label for="InputCorreo" class="form-label">Correo</label> 
				<input value="${c.mail_cli }"
					type="email" class="form-control" name="txtCorreo" id="InputCorreo"
					placeholder="Ingrese correo">
			</div>
			<div class="mb-3">
				<label for="InputPassword" class="form-label">Contraseña</label> 
				<input value="${c.contra_cli }"
					type="password" class="form-control" name="txtPassword"
					id="InputPassword" placeholder="Ingrese contraseña">
			</div>
			<div class="row">
				<div class="col">
					<label for="InputDireccion" class="form-label">Dirección</label> 
					<input value="${c.dire_cli }"
						type="text" class="form-control" name="txtDireccion"
						id="InputDireccion" placeholder="Ingrese dirección">
				</div>
				<div class="col">
					<label for="InputCelular" class="form-label">Celular</label> 
					<input value="${c.telefo_cli }"
						type="tel" class="form-control" name="txtCelular"
						id="InputCelular" placeholder="Ingrese celular">
				</div>
			</div>
			<br>
			<button type="submit" class="btn btn-primary" name="btnAccion"
				value="reg">Registrar</button>
			<button type="submit" class="btn btn-primary" name="btnAccion"
				value="act">Actualizar</button>
			<button type="submit" class="btn btn-primary" name="btnAccion"
				value="lst">Listado</button>
		</form>
		<br> ${mensaje }
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>

</html>