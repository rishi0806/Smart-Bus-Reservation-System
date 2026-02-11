<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Admin Dashboard</title>

			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

			<style>
				::-webkit-scrollbar {
				    display: none;
				}
			
				body {
					min-height: 100vh;
					font-family: 'Segoe UI', sans-serif;
					background-image: url("https://www.zf.com/products/media/automotive/cv/cv_campaigns/emea_1/bus/Header_Bus-Page_5_2_2048px.jpg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				.navbar {
					background: rgba(255, 255, 255, 0.25) !important;
					backdrop-filter: blur(12px);
					border-bottom: 1px solid rgba(255, 255, 255, 0.3);
				}

				.navbar-brand {
					font-size: 22px;
					letter-spacing: 1px;
					color: #2c3e50 !important;
				}

				.nav-link {
					font-weight: 600;
					color: #2c3e50 !important;
					transition: .3s;
				}

				.nav-link:hover {
					color: #0d6efd !important;
					transform: scale(1.08);
				}

				.dashboard-wrapper {
					background: rgba(255, 255, 255, 0.2);
					backdrop-filter: blur(8px);
					padding: 30px;
					border-radius: 20px;
					margin-top: 40px;
				}

				.dashboard-title {
					font-size: 32px;
					font-weight: 700;
					color: #2c3e50;
				}

				.dashboard-card {
					border-radius: 20px;
					background: rgba(255, 255, 255, 0.85);
					backdrop-filter: blur(10px);
					padding: 20px;
					transition: .3s;
				}

				.dashboard-card:hover {
					transform: translateY(-6px) scale(1.02);
					box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
				}

				.icon-circle {
					width: 80px;
					height: 80px;
					border-radius: 50%;
					display: flex;
					align-items: center;
					justify-content: center;
					margin: auto;
					font-size: 36px;
					color: white;
				}

				.routes-bg {
					background: linear-gradient(45deg, #2196f3, #42a5f5);
				}

				.bus-bg {
					background: linear-gradient(45deg, #4caf50, #66bb6a);
				}

				.res-bg {
					background: linear-gradient(45deg, #ff9800, #ffb74d);
				}

				.feed-bg {
					background: linear-gradient(45deg, #9c27b0, #ba68c8);
				}

				.card-title {
					font-size: 20px;
					font-weight: 600;
					margin-top: 15px;
				}

				.count-badge {
					font-size: 20px;
					padding: 8px 18px;
					border-radius: 50px;
				}

				.col-md-3 {
					width: 45%;
				}

				@media(max-width:768px) {
					.col-md-3 {
						width: 100%;
					}
				}

				.footer {
					margin-top: 60px;
					padding: 18px;
					text-align: center;
					font-weight: 600;
					color: white;
					background: rgba(0, 0, 0, 0.7);
				}
			</style>
		</head>

		<body>

			<nav class="navbar navbar-expand-lg shadow px-3">
				<div class="container-fluid">
					<span class="navbar-brand fw-bold">Smart Bus Reservation System</span>

					<ul class="navbar-nav ms-auto d-flex flex-row gap-4">
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/admin/reservations">
								<i class="bi bi-calendar-check"></i> Reservations
							</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/admin/feedback">
								<i class="bi bi-star"></i> Feedbacks
							</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/routedashboard">
								<i class="bi bi-map"></i> Routes
							</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/bus">
								<i class="bi bi-bus-front-fill"></i> Buses
							</a>
						</li>

						<li class="nav-item">
							<a class="nav-link text-danger fw-semibold"
								href="${pageContext.request.contextPath}/logout">
								<i class="bi bi-box-arrow-right"></i> Logout
							</a>
						</li>
					</ul>
				</div>
			</nav>

			<div class="container dashboard-wrapper">
				<h3 class="text-center dashboard-title mb-5">Admin Dashboard</h3>

				<div class="row g-4 justify-content-center">

					<div class="col-md-3">
						<div class="card dashboard-card border-0 shadow text-center">
							<div class="icon-circle routes-bg"><i class="bi bi-map"></i></div>
							<div class="card-title">Total Routes</div>
							<span class="badge bg-primary count-badge mt-2">${routecount}</span>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card dashboard-card border-0 shadow text-center">
							<div class="icon-circle bus-bg"><i class="bi bi-bus-front-fill"></i></div>
							<div class="card-title">Total Buses</div>
							<span class="badge bg-success count-badge mt-2">${buscount}</span>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card dashboard-card border-0 shadow text-center">
							<div class="icon-circle res-bg"><i class="bi bi-calendar-check"></i></div>
							<div class="card-title">Total Reservations</div>
							<span class="badge bg-warning text-dark count-badge mt-2">${ReservationsCount}</span>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card dashboard-card border-0 shadow text-center">
							<div class="icon-circle feed-bg"><i class="bi bi-star"></i></div>
							<div class="card-title">Total Feedback</div>
							<span class="badge bg-info text-dark count-badge mt-2">${feedbackCount}</span>
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