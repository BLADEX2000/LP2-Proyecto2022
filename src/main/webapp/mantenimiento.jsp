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

<style type="text/css">
body {
	background: white;
}

.gg {
	margin-top: 0px;
	width: 100%;
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	height: 500px;
	animation: gg 10s infinite;
	animation-direction: alternate;
}

.conte {
	width: 1200px;
	height: 800px;
	margin: 0 auto;
	padding-top: 20px;
	margin-top: 20px;
}

.p1 {
	text-align: center;
	color: red;
	font-size: 30px;
}

p {
	font-size: 20px;
	text-align: left;
}

.caj1 {
	width: 370px;
	height: 500px;
	background: white;
	display: inline-block;
	margin: 20px;
}

.caj2 {
	width: 370px;
	height: 500px;
	background: white;
	display: inline-block;
}

.caj3 {
	width: 370px;
	height: 500px;
	background: white;
	display: inline-block;
	margin: 20px;
}

.hfo {
	text-align: center;
	color: white;
	background: green;
	padding: 15px;
	margin: 0px;
}

.lik {
	text-decoration: none;
	color: blue;
}

.lk {
	background: red;
	text-align: center;
	color: white;
	padding: 5px;
	margin-left: 160px;
	text-decoration: none;
	border-radius: 20px;
}

.conte2 {
	width: 1550px;
	height: 320px;
	margin: 0 auto;
	background: pink;
	padding-top: 30px;
}

.t1 {
	text-align: center;
}

.imgg {
	margin: 20px;
	border: solid white;
	color: white;
	border-radius: 50px;
}

.xl {
	background: pink;
	width: 100%;
	height: 350px;
}

.conte3 {
	width: 1200px;
	margin: 0 auto;
	height: 400px;
}

.img2 {
	height: 280px;
	margin-left: 50px;
}

.a {
	  float:left;
   background: #3151AB;
   height: 48px;
   width: 550px;
 
   color: yellow;
   font-size: 30px
}

.usu {
  float: right;
  background: #00C8CB;
  margin-right: 100px;
  border-radius: 10px;
  border:solid #DA6C21 5px;
  height: 75px;
  width: 650px;
  padding: 10px;
}

.b {
	background: red;
	float: left;
}

.lo1 {
	margin-left: 40px;
}

.van {
	background: #3D70B9;
}
 strong {
	font-size: 30px;
	color: white;
	
	font-family: 'Fjalla One', sans-serif;
}

.final {
	background: black;
	width: 100%;
	height: 200px;
}

.ti {
	color: red;
	font-size: 50px;
	text-align: center;
}

body {
	background: #FAF2E0;
}

.cuerpo {
	background: pink;
	height: 500px;
	width: 305px;
	float: left;
	border: solid 5px;
	box-shadow: yellow 5px 5px;
}

.formulario {
	width: 800px;
	margin: 0 auto;
	background: #9FF3E5;
	padding: 10px;
	display: inline-block;
	margin-left: 240px;
	margin-top: 50px;
	margin-bottom: 100px;
}

.formulario h1 {
	color: red;
	text-align: center;
	font-family: 'Bebas Neue', cursive;
}

.final {
	background: black;
	width: 100%;
	height: 200px;
}

.loma li a {
	padding: 20px 30px;
	display: inline-block;
	text-decoration: none;
	width: 295px;
	font-family: 'Bebas Neue', cursive;
	color: #3481F6;
	font-size: 30px;
}

.loma li a:hover {
	background: #08AFD5;
	color: yellow;
}

.loma li a:active {
	background: #848484;
	text-decoration: underline;
	color: white;
}

.loma li a:focus {
	background: #848484;
}

.pi {
	width: 295px;
	background: #F8483C;
	height: 255px;
}


</style>




</head>
<body>
	<div class="van">
		<img class="lo1" alt="" src="img/nuevo.png" width=350px" >
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