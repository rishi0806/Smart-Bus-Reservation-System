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
					background-image: url("https://static.vecteezy.com/system/resources/thumbnails/040/171/979/small/ai-generated-luxury-coach-bus-on-highway-at-sunset-road-trip-travel-concept-photo.jpeg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				.page-content {
					flex: 1;
					background: rgba(0, 0, 0, 0.55);
				}

				.reserve-card {
					background: rgba(255, 255, 255, 0.92);
					backdrop-filter: blur(12px);
					border-radius: 22px;
					box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
				}

				.header-gradient {
					background: linear-gradient(45deg, #2196f3, #42a5f5);
					border-top-left-radius: 22px !important;
					border-top-right-radius: 22px !important;
				}

				.form-control {
					border-radius: 12px;
					padding: 12px;
				}

				.proceed-btn {
					border-radius: 30px;
					font-weight: 700;
					padding: 10px;
					background: linear-gradient(45deg, #4caf50, #66bb6a);
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

				<div class="container d-flex justify-content-center mt-5 pt-4">

					<form class="w-50" action="${PageContext.request.contextPath}/user/payment" method="GET">

						<div class="card reserve-card border-0 mb-4">
							<div class="card-header header-gradient text-white fw-bold text-center">Bus Details</div>

							<div class="card-body">
								<h5 class="fw-bold mb-3">
									<i class="bi bi-bus-front-fill text-primary"></i> ${bus.busName}
								</h5>

								<p><strong>Route :</strong> ${bus.route.routeFrom} → ${bus.route.routeTo}</p>
								<p><strong>Available Seats :</strong> <span class="badge bg-success">${bus.seats}</span>
								</p>
								<p><strong>Price :</strong> <span class="fw-bold text-primary">₹ ${bus.price}</span></p>
							</div>
						</div>

						<input type="hidden" name="id" value="${bus.id}" />
						<input type="hidden" name="source" value="${bus.route.routeFrom}" />
						<input type="hidden" name="destination" value="${bus.route.routeTo}" />

						<div class="form-floating mb-3">
							<input type="date" id="date" class="form-control" name="reservationDate" required>
							<label for="date">Select Travel Date</label>
						</div>

						<div class="form-floating mb-4">
							<input type="number" id="seats" class="form-control" name="seats" min="1" required>
							<label for="seats">Seats Requested</label>
						</div>

						<div class="d-flex justify-content-center">
							<input type="submit" class="btn text-white proceed-btn w-75"
								value="Proceed To Payment Page">
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