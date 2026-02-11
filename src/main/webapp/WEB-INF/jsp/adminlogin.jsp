<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Admin Login</title>

			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

			<style>
				html,
				body {
					height: 100%;
				}

				body {
					display: flex;
					flex-direction: column;
					min-height: 100vh;
					font-family: 'Segoe UI', sans-serif;

					/* BUS IMAGE */
					background-image: url("https://static.vecteezy.com/system/resources/thumbnails/047/373/362/small_2x/empty-bus-interior-photo.jpeg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				.page-content {
					flex: 1;
					background: rgba(0, 0, 0, 0.55);
				}

				.login-card {
					border-radius: 20px;
					background: rgba(255, 255, 255, 0.92);
					backdrop-filter: blur(12px);
					box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
					padding: 10px;
				}

				.login-title {
					font-size: 28px;
					font-weight: 700;
					color: #2c3e50;
				}

				.form-control {
					border-radius: 12px;
					padding: 12px;
				}

				.login-btn {
					border-radius: 30px;
					padding: 10px;
					font-weight: 600;
					background: linear-gradient(45deg, #2196f3, #42a5f5);
					border: none;
					color: white;
				}

				.alert {
					border-radius: 30px;
					width: 350px;
					margin: auto;
				}

				.footer {
					text-align: center;
					padding: 18px;
					font-weight: 600;
					color: white;
					background: rgba(0, 0, 0, 0.7);
				}
			</style>
		</head>

		<body>

			<div class="page-content">

				<c:if test="${not empty error}">
					<div class="alert alert-danger text-center mt-4">
						${error}
					</div>
				</c:if>

				<div class="container mt-5">
					<div class="row justify-content-center">
						<div class="col-md-4">
							<div class="card login-card border-0">

								<div class="card-body">
									<h3 class="text-center mb-4 login-title">Admin Login</h3>

									<form action="${pageContext.request.contextPath}/login" method="POST">
										<div class="mb-3">
											<input class="form-control" type="text" value="Admin" name="userName"
												readonly="readonly" />
										</div>

										<div class="mb-4">
											<input class="form-control" name="password" type="password"
												placeholder="Enter Password" required />
										</div>

										<input type="submit" value="Login" class="form-control login-btn" />
									</form>

								</div>

							</div>
						</div>
					</div>
				</div>

			</div>

			<footer class="footer">
				© 2026 Smart Bus Reservation System • All Rights Reserved
			</footer>

			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		</body>

		</html>