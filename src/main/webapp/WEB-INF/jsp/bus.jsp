<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Layout</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

			<style>
				::-webkit-scrollbar {
				    display: none;
				}
			
				html,
				body {
					height: 100%;
				}

				body {
					display: flex;
					flex-direction: column;
					min-height: 100vh;
					background: linear-gradient(135deg, #e3f2fd, #fce4ec, #e8f5e9);
					font-family: 'Segoe UI', sans-serif;
				}

				.page-content {
					flex: 1;
					background-image: url("https://upload.wikimedia.org/wikipedia/commons/8/84/LTZ1328-19-20241030-160332.jpg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				.sidebar {
					background: rgba(255, 255, 255, 0.75);
					backdrop-filter: blur(12px);
					height: 100vh;
					border-right: 1px solid rgba(255, 255, 255, 0.4);
					box-shadow: 5px 0 20px rgba(0, 0, 0, 0.08);
					background-image: url("https://upload.wikimedia.org/wikipedia/commons/8/84/LTZ1328-19-20241030-160332.jpg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				.main-panel {
					padding: 20px;
					height: 95vh;
					overflow-y: auto;
				}

				.footer {
					text-align: center;
					padding: 18px;
					font-weight: 600;
					color: #2c3e50;
					background: rgba(255, 255, 255, 0.6);
					backdrop-filter: blur(10px);
					border-top: 1px solid rgba(255, 255, 255, 0.4);
				}
			</style>
		</head>

		<body>

			<div class="page-content">

				<div class="container-fluid p-0 m-0">
					<div class="row m-0">

						<div class="col-3 p-0 sidebar">
							<jsp:include page="busmenu.jsp"></jsp:include>
						</div>

						<div class="col-9 main-panel">
							<jsp:include page="${page}"></jsp:include>
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