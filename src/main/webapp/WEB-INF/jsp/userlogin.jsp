<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>User Login</title>
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

				/* BUS BACKGROUND IMAGE */
				background-image: url("https://images.unsplash.com/photo-1544620347-c4fd4a3d5957");
				background-size: cover;
				background-position: center;
				background-repeat: no-repeat;
			}

			.page-content {
				flex: 1;
				display: flex;
				justify-content: center;
				align-items: center;

				/* Dark overlay for readability */
				background: rgba(0, 0, 0, 0.45);
			}

			.login-card {
				background: rgba(255, 255, 255, 0.92);
				backdrop-filter: blur(12px);
				border-radius: 22px;
				box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
			}

			.form-control {
				border-radius: 12px;
				padding: 12px;
			}

			.form-control:focus {
				box-shadow: 0 0 0 2px rgba(13, 110, 253, 0.2);
				border-color: #0d6efd;
			}

			.login-btn {
				border-radius: 30px;
				font-weight: 700;
				padding: 10px;
				background: linear-gradient(45deg, #2196f3, #42a5f5);
				border: none;
				color: white;
			}

			.register-btn {
				border-radius: 30px;
				font-weight: 600;
				padding: 8px;
			}

			.footer {
				text-align: center;
				padding: 18px;
				font-weight: 600;
				color: white;
				background: rgba(0, 0, 0, 0.6);
			}
		</style>
	</head>

	<body>

		<div class="page-content">

			<div class="card login-card p-4 border-0" style="width:360px;">
				<h3 class="text-center mb-4 fw-bold">User Login</h3>

				<form action="${pageContext.request.contextPath}/user/login" method="POST">

					<div class="form-floating mb-3">
						<input class="form-control" type="text" name="username" id="username" placeholder="Username"
							required>
						<label for="username">Username</label>
					</div>

					<div class="form-floating mb-4">
						<input class="form-control" name="password" id="password" type="password" placeholder="Password"
							required>
						<label for="password">Password</label>
					</div>

					<div class="d-flex justify-content-center mb-3">
						<input type="submit" value="Login" class="btn login-btn w-75">
					</div>

					<div class="text-center">
						<span class="text-muted">Don't have an account?</span>
						<a href="${pageContext.request.contextPath}/user/reg"
							class="btn btn-outline-primary register-btn w-75 mt-2">
							Create Account
						</a>
					</div>

				</form>
			</div>

		</div>

		<footer class="footer">
			© 2026 Smart Bus Reservation System • All Rights Reserved
		</footer>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	</body>

	</html>