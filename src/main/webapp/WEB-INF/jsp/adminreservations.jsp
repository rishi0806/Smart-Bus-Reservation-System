<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>All Reservations</title>
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
					background-image: url("https://static.vecteezy.com/system/resources/thumbnails/052/073/439/small_2x/a-sleek-modern-bus-navigates-a-brightly-lit-expressway-at-dusk-with-vibrant-colors-enhancing-the-thrill-of-fastpaced-transport-through-a-lively-urban-landscape-full-of-life-and-activity-photo.jpg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				.page-content {
					flex: 1;
					background: rgba(0, 0, 0, 0.55);
				}

				.page-title {
					font-size: 30px;
					font-weight: 700;
					color: white;
				}

				.glass-card {
					background: rgba(255, 255, 255, 0.92);
					backdrop-filter: blur(12px);
					border-radius: 18px;
					box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
					overflow: hidden;
				}

				.header-gradient {
					background: linear-gradient(45deg, #2196f3, #42a5f5);
					color: white;
					font-weight: 600;
					font-size: 20px;
					padding: 18px;
				}

				.back-btn {
					border-radius: 30px;
					font-weight: 600;
					padding: 8px 20px;
				}

				.table thead {
					background: #0d6efd;
					color: white;
				}

				.table tbody tr:hover {
					background: #f1f7ff;
				}

				.badge-status {
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

				<div class="container mt-5">

					<div class="d-flex justify-content-between align-items-center mb-4">
						<h3 class="page-title">All Reservations</h3>
						<a href="${pageContext.request.contextPath}/dashboard" class="btn btn-primary back-btn shadow">←
							Back to Dashboard</a>
					</div>

					<div class="glass-card">
						<div class="header-gradient">Reservations Overview</div>

						<div class="table-responsive">
							<table class="table table-bordered align-middle mb-0 text-center">
								<thead>
									<tr>
										<th>ID</th>
										<th>User</th>
										<th>Status</th>
										<th>Amount</th>
										<th>Date</th>
										<th>Time</th>
										<th>From</th>
										<th>To</th>
										<th>Bus</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="reservation" items="${reservations}">
										<tr>
											<td>${reservation.id}</td>
											<td class="fw-semibold">${reservation.user.username}</td>
											<td><span
													class="badge bg-success badge-status">${reservation.reservationStatus}</span>
											</td>
											<td>₹${reservation.reservationAmount}</td>
											<td>${reservation.reservationDate}</td>
											<td>${reservation.reservationTime}</td>
											<td>${reservation.source}</td>
											<td>${reservation.destination}</td>
											<td class="fw-semibold">${reservation.bus.busName}</td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
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