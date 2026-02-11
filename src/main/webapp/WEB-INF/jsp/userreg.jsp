<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>User Register</title>
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
				background-image: url("https://punetours.com/wp-content/uploads/2024/12/frontrow-view-tourist-buses-shining-summer-light_153608-93009.jpg");
				background-size: cover;
				background-position: center;
				background-repeat: no-repeat;
			}

			.page-content {
				flex: 1;
				display: flex;
				justify-content: flex-end;
				align-items: center;
				padding-right: 8%;
				background: rgba(0, 0, 0, 0.45);
			}

			.register-card {
				background: rgba(255, 255, 255, 0.92);
				backdrop-filter: blur(12px);
				border-radius: 22px;
				box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
				width: 340px;
				padding: 22px;
			}

			.form-control {
				border-radius: 10px;
				padding: 8px;
				font-size: 14px;
			}

			.submit-btn {
				border-radius: 25px;
				font-weight: 700;
				padding: 8px;
				background: linear-gradient(45deg, #2196f3, #42a5f5);
				border: none;
				color: white;
			}

			.login-btn {
				border-radius: 25px;
				font-weight: 600;
				padding: 6px;
			}

			.footer {
				text-align: center;
				padding: 14px;
				font-weight: 600;
				color: white;
				background: rgba(0, 0, 0, 0.6);
			}
		</style>
	</head>

	<body>

		<div class="page-content">

			<form class="card register-card border-0" action="${PageContext.request.contextPath}/user/reg"
				method="POST">

				<h4 class="fw-bold text-center mb-3">Create Account</h4>

				<div class="mb-2">
					<label class="form-label small">First Name</label>
					<input class="form-control" type="text" name="firstName">
				</div>

				<div class="mb-2">
					<label class="form-label small">Last Name</label>
					<input class="form-control" type="text" name="lastName">
				</div>

				<div class="mb-2">
					<label class="form-label small">Email</label>
					<input class="form-control" type="text" name="email">
				</div>

				<div class="mb-2">
					<label class="form-label small">Username</label>
					<input class="form-control" type="text" name="username">
				</div>

				<div class="mb-2">
					<label class="form-label small">Password</label>
					<input class="form-control" type="password" name="password">
				</div>

				<div class="mb-3">
					<label class="form-label small">Contact</label>
					<input class="form-control" type="number" name="contact">
				</div>

				<input type="submit" class="btn submit-btn w-100 mb-2" value="Sign Up">

				<div class="text-center">
					<span class="small text-muted">Already have an account?</span>
					<a href="${pageContext.request.contextPath}/user/login"
						class="btn btn-outline-primary login-btn w-100 mt-2">
						Login Here
					</a>
				</div>

			</form>

		</div>

		<footer class="footer">
			© 2026 Smart Bus Reservation System • All Rights Reserved
		</footer>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	</body>

	</html>