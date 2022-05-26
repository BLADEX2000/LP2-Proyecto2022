<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/menu3.css">
<link rel="stylesheet" href="cssfg/estilos.css">
<link rel="stylesheet" href="cssfg/font-awesome.css">
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/main.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Importar estilos -->
<link rel="stylesheet" href="css/estilos_comun.css" />


</head>
<body>
	<div class="van">
		<img class="lo1" alt="" src="img/nuevo.png" width=350px >
		<div class="usu">
			<img class="b" alt="" src="img/person.png" height="50px">
			<p class="a">
				Bienvenido : <strong>Cristian Orizano Huyhua</strong>
			</p>
		</div>

	</div>

	<div id='cssmenu'>
		<ul>
			<li class='active'><a href='principal.jsp'><span>Inicio</span></a></li>
			<li class='active'><a href='mantenimiento.jsp'
				style="background: red"><span>Mantenimiento</span></a></li>
			<li><a href='Consultas.jsp'><span>Consultas</span></a></li>
			<li class='active'><a href='PrinTran.jsp'><span>Transacion</span></a></li>
		</ul>
	</div>
	<div class="slideshow">
		<ul class="slider">
			<li><img src="img/9.jpg" alt="">
				<section class="caption"></section></li>
			<li><img src="img/9.jpg" alt="">
				<section class="caption"></section></li>
			<li><img src="img/9.jpg" alt="">
				<section class="caption"></section></li>

		</ul>

		<ol class="pagination">

		</ol>

		<div class="left">
			<span class="fa fa-chevron-left"></span>
		</div>

		<div class="right">
			<span class="fa fa-chevron-right"></span>
		</div>

	</div>
	<div class="cuerpo">
		<div class="pi">
			<ul class="loma">
				<li><a href="">Productos</a></li>
				<li><a href="">Clientes</a></li>
				<li><a href="">Trabajador</a></li>

			</ul>
		</div>
		<img class="ik" src="img/ele.jpg" width="295px" height="235px">

	</div>
	<div class="formulario">
		<h1>Mantenimiento de Electrodomesticos</h1>
		<form method="post" action="Crudprod">
			<div class="form-group">
				<label for="InputPassword1">Codigo del Producto :</label> <input
					name="txtCodigo" value="${pa.getIdprod()}" type="text"
					class="form-control" id="InputEmail1"
					placeholder="Ingrese su codigo">
			</div>
			<div class="form-group">
				<label for="InputPassword1">Descripcion :</label> <input
					name="txtDescripcion" value="${pa.getDescripcion()}" type="text"
					class="form-control" id="InputPassword"
					placeholder="Ingrese nombre o descripcion del producto">
			</div>
			<div class="row">
				<div class="col">
					<label for="InputPassword">Stock :</label> <input
						value="${pa.getStock()}" type="number" name="txtStoc" min="1"
						class="form-control" id="InputUsuario" placeholder="0">
				</div>

				<div class="col">
					<label for="InputPassword">Precio :</label> <input type="number"
						name="txtprecio" value="${pa.getPrecio()}" step="0.01" min="0"
						class="form-control" id="InputUsuario" placeholder="0.00">
				</div>

			</div>
			<br>
			<div class="row">
				<div class="form-group col-md-6">

					<label for="InputPassword1">Categoria :</label> <select
						name="cboCategoria" class="form-control"
						id="exampleFormControlSelect1">
						<option value="-1">Seleccione..</option>


					</select>

				</div>
				<div class="col">

					<label for="InputPassword1">Estado :</label> <select
						name="cboEstado" class="form-control"
						id="exampleFormControlSelect1">
						<option value="-1">Seleccione..</option>
						<option value="1">Activo</option>
						<option value="0">Descontinuado</option>

					</select>
				</div>
			</div>
			<br>
			<button type="submit" class="btn btn-primary" name="btnMOMO"
				value="reg">Registrar</button>
			<button type="submit" class="btn btn-primary" name="btnMOMO"
				value="act">Actualizar</button>
			<button type="submit" class="btn btn-danger" name="btnMOMO"
				value="Eli">Eliminar</button>
			<button type="submit" class="btn btn-warning" name="btnMOMO"
				value="Lis">Listado</button>
			<br> <br>
		</form>
		${mensaje }
	</div>
	<div class="final"></div>

</body>
</html>