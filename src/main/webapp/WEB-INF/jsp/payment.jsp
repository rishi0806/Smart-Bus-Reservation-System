<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Reservation</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

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
					background-image: url("https://urbanworks.in/wp-content/uploads/2023/12/Blog-Headers-7.jpg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				.page-content {
					flex: 1;
					background: rgba(0, 0, 0, 0.55);
				}

				.payment-card {
					background: rgba(255, 255, 255, 0.92);
					backdrop-filter: blur(12px);
					border-radius: 22px;
					box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
				}

				.header-gradient {
					background: linear-gradient(45deg, #2196f3, #42a5f5);
					border-top-left-radius: 22px !important;
					border-top-right-radius: 22px !important;
					font-size: 20px;
				}

				.pay-btn {
					border-radius: 30px;
					font-weight: 700;
					padding: 10px;
					background: linear-gradient(45deg, #4caf50, #66bb6a);
					border: none;
				}

				.summary-badge {
					font-size: 14px;
					padding: 6px 12px;
					border-radius: 20px;
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

				<div class="container d-flex justify-content-center mt-5 pt-4">

					<form class="w-50" action="${pageContext.request.contextPath}/user/payment" method="POST">

						<div class="card payment-card border-0 mb-4">
							<div class="card-header header-gradient text-white fw-bold text-center py-3">
								<i class="bi bi-wallet2"></i> Payment Summary
							</div>

							<div class="card-body px-4">
								<h5 class="fw-bold text-dark mb-3">
									<i class="bi bi-bus-front-fill text-primary"></i> ${bus.busName}
								</h5>

								<div class="mb-2">
									<strong>Route :</strong>
									<span class="ms-1">${bus.route.routeFrom} → ${bus.route.routeTo}</span>
								</div>

								<div class="mb-2">
									<strong>Seats Requested :</strong>
									<span class="badge bg-success summary-badge ms-1">${seatsrequested}</span>
								</div>

								<div class="mb-3">
									<strong>Date :</strong>
									<span class="badge bg-info summary-badge ms-1">${date}</span>
								</div>

								<hr>

								<div class="d-flex justify-content-between align-items-center mt-3">
									<h6 class="fw-bold">Total Amount :</h6>
									<h4 class="fw-bold text-primary">₹ ${bus.price * seatsrequested}</h4>
								</div>

							</div>
						</div>

						<div class="d-flex justify-content-center">
							<input type="submit" class="btn text-white pay-btn w-75" value="Proceed to Pay" />
						</div>

						<input type="hidden" name="seats" value="${seatsrequested}" />
						<input type="hidden" name="busId" value="${bus.id}" />
						<input type="hidden" name="source" value="${bus.route.routeFrom}" />
						<input type="hidden" name="destination" value="${bus.route.routeTo}" />
						<input type="hidden" name="reservationDate" value="${date}" />
						<input type="hidden" name="reservationAmount" value="${bus.price * seatsrequested}" />

					</form>
				</div>

			</div>

			<footer class="footer">
				© 2026 Smart Bus Reservation System • All Rights Reserved
			</footer>

			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		</body>

		</html>