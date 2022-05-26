<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<!-- Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
.gradient-custom {
	/* fallback for old browsers */
	background: #6a11cb;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1))
}
</style>
</head>
<body>


	<section class="vh-100 gradient-custom">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-dark text-white" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">

							<div class="mb-md-5 mt-md-4 pb-5">

								<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
								<p class="text-white-50 mb-5">Please enter your login and
									password!</p>

								<div class="form-outline form-white mb-4">
									<input type="email" id="typeEmailX"
										class="form-control form-control-lg"
										placeholder="Ingrese Usuario"> <label
										class="form-label" for="typeEmailX">Correo</label>
								</div>

								<div class="form-outline form-white mb-4">
									<input type="password" id="typePasswordX"
										class="form-control form-control-lg" /> <label
										class="form-label" for="typePasswordX">Contrase�a</label>
								</div>

								<p class="small mb-5 pb-lg-2">
									<a class="text-white-50" href="#!">Forgot password?</a>
								</p>

								<button class="btn btn-outline-light btn-lg px-5" type="submit">Ingresar</button>

								<!-- 
								<div class="d-flex justify-content-center text-center mt-4 pt-1">
									<a href="#!" class="text-white"><i
										class="fab fa-facebook-f fa-lg"></i></a> <a href="#!"
										class="text-white"><i
										class="fab fa-twitter fa-lg mx-4 px-2"></i></a> <a href="#!"
										class="text-white"><i class="fab fa-google fa-lg"></i></a>
								</div>
								 -->
								

							</div>

							<div>
								<p class="mb-0">
									�No tiene una cuenta?
									<button type="button" class="btn btn-link"
										data-bs-toggle="modal" data-bs-target="#staticBackdrop">Registrese
									</button>
								</p>
							</div>

										</div>
									</div>
								</div>
							</div>

						</div>

	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>