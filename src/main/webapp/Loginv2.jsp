<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Login</title>

<link rel="stylesheet" href="css/login-estilos.css" />

</head>
<body>
	<section class="Form my-4 ">
		<div id="cuadro" class="container">
			<div class="row no-gutters">
				<div class="col-lg-5">
					<img src="img/login_foto2.png" class="img-fluid" alt="" />
				</div>
				<div class="col-lg-7 px-5 pt-5">

					<img alt="" src="img/nuevo.png" width="140" height="80">

					<form action="crudcli" method="post">

						<div class="form-row">
							<div class="col-lg-7">
								<input type="email" class="form-control my-3 p-2"
									placeholder="Ingrese usuario " name="txtCorreo">
							</div>
						</div>

						<div class="form-row">
							<div class="col-lg-7">
								<input type="password" class="form-control my-3 p-2"
									placeholder="Ingrese contraseña" name="txtPassword">
									
								<br> ${mensajelog }
									
							</div>
						</div>
						

						<div class="form-row">
							<div class="col-lg-7">
								<button type="submit" class="btnL mt-3 mb-2" name="btnAccion"
									value="log">Ingresar</button>
							${mensaje }
							</div>
						</div>

						<p>
							¿No tiene una cuenta?
							<button type="button" class="btn btn-link" data-bs-toggle="modal"
								data-bs-target="#staticBackdrop">Registrese</button>
						</p>

					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- Modal -->

	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">Registro</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				
					<form action="crudcli?btnAccion=reglog" method="post">
						<div class="mb-3">
							<label for="InputCodigo" class="form-label">Codigo</label> <input
								name="txtCodigo" type="text" class="form-control"
								id="InputCodigo"
								placeholder="Ingrese codigo - ejemplo: C00001">
						</div>
						<div class="mb-3">
							<div class="row">
								<div class="col">
									<label for="InputNombre" class="form-label">Nombre</label> <input
										value="" type="text" class="form-control"
										name="txtNombre" id="InputNombre" placeholder="Ingrese nombre">
								</div>
								<div class="col">
									<label for="InputApellido" class="form-label">Apellido</label>
									<input value="" type="text" class="form-control"
										name="txtApellido" id="InputApellido"
										placeholder="Ingrese apellido">
								</div>
							</div>
						</div>
						<div class="mb-3">
							<label for="InputCorreo" class="form-label">Correo</label> <input
								value="" type="email" class="form-control"
								name="txtCorreo" id="InputCorreo" placeholder="Ingrese correo">
						</div>
						<div class="mb-3">
							<label for="InputPassword" class="form-label">Contraseña</label>
							<input value="" type="password"
								class="form-control" name="txtPassword" id="InputPassword"
								placeholder="Ingrese contraseña">
						</div>
						<div class="row">
							<div class="col">
								<label for="InputDireccion" class="form-label">Dirección</label>
								<input value="" type="text" class="form-control"
									name="txtDireccion" id="InputDireccion"
									placeholder="Ingrese dirección">
							</div>
							<div class="col">
								<label for="InputCelular" class="form-label">Celular</label> <input
									value="" type="tel" class="form-control"
									name="txtCelular" id="InputCelular"
									placeholder="Ingrese celular">
							</div>
						</div>
						<br> ${mensaje }

						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Cerrar</button>
							<button type="submit" class="btn btn-primary" id=""
								value="">Registrar</button>
						</div>

					</form>
				</div>

			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>