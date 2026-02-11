<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Payment Success</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

			<style>
				::-webkit-scrollbar{
					overflow: hidden;
				}
			
				html,
				body {
					height: 100%;
				}

				body {
					display: flex;
					flex-direction: column;
					min-height: 100vh;
					font-family: 'Segoe UI', sans-serif;
					background-image: url("https://www.daimlertruck.com/fileadmin/_processed_/5/6/csm_eb24002_df02ac14be.jpg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				.page-content {
					flex: 1;
					background: rgba(0, 0, 0, 0.55);
				}

				.success-card {
					background: rgba(255, 255, 255, 0.92);
					backdrop-filter: blur(12px);
					border-radius: 24px;
					box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
				}

				.success-icon {
					font-size: 60px;
					color: #4caf50;
				}

				.dashboard-btn {
					border-radius: 30px;
					font-weight: 700;
					padding: 10px;
					background: linear-gradient(45deg, #2196f3, #42a5f5);
					border: none;
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

				<div class="container d-flex justify-content-center align-items-center vh-100">
					<div class="card success-card border-0 p-4 text-center" style="width:28rem;">

						<div class="mb-3">
							<i class="bi bi-check-circle-fill success-icon"></i>
						</div>

						<h3 class="fw-bold text-success">Payment Successful</h3>
						<p class="text-muted">Your reservation has been confirmed</p>

						<hr>

						<div class="text-start px-2">
							<p><strong>Status:</strong> ${reservation.reservationStatus}</p>
							<p><strong>Amount Paid:</strong> ₹${reservation.reservationAmount}</p>
							<p><strong>Date:</strong> ${reservation.reservationDate}</p>
							<p><strong>Time:</strong> ${reservation.reservationTime}</p>
							<p><strong>From:</strong> ${reservation.source}</p>
							<p><strong>To:</strong> ${reservation.destination}</p>
							<p><strong>User:</strong> ${reservation.user.username}</p>
							<p><strong>Bus:</strong> ${reservation.bus.busName}</p>
						</div>

						<a href="/user" class="btn text-white dashboard-btn w-100 mt-3">Go to Dashboard</a>

					</div>
				</div>

			</div>

			<footer class="footer">
				© 2026 Smart Bus Reservation System • All Rights Reserved
			</footer>

			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		</body>

		</html>