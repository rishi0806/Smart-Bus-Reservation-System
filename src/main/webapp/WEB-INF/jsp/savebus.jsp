<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Login</title>
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
				background-image: url("https://www.visitlondon.com/-/media/images/london/visit/traveller-information/getting-around/bus/london-bus-related-1920x1080.jpg?mw=800&rev=a43da6ae7efe4baea5504aa67f262c75&hash=FC256B5014E1D104827B6D7476C257F0");
				background-size: cover;
				background-position: center;
				background-repeat: no-repeat;
			}

			.page-content {
				flex: 1;
				background: rgba(0, 0, 0, 0.55);
			}

			.center-box {
				background: rgba(255, 255, 255, 0.92);
				backdrop-filter: blur(12px);
				border-radius: 22px;
				box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
				padding: 40px;
				text-align: center;
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

		<div class="page-content d-flex justify-content-center align-items-center">
			<div class="center-box">
				<h3 class="fw-bold mb-2">Smart Bus Reservation System</h3>
				<p class="text-muted">Authentication Page</p>
			</div>
		</div>

		<footer class="footer">
			© 2026 Smart Bus Reservation System • All Rights Reserved
		</footer>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	</body>

	</html>