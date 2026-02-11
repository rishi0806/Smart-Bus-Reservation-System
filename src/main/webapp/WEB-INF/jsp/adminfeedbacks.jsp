<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>All Feedbacks (Admin)</title>
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
					font-family: 'Segoe UI', sans-serif;
					background-image: url("https://static.vecteezy.com/system/resources/thumbnails/046/603/373/small_2x/green-energy-bus-powered-by-biofuel-in-a-lush-cityscape-emphasizing-eco-friendly-urban-mobility-suitable-for-sustainable-transport-and-eco-initiatives-sustainable-carbon-reduction-photo.jpeg");
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

				.card-header-custom {
					background: linear-gradient(45deg, #2196f3, #42a5f5);
					color: white;
					font-size: 20px;
					font-weight: 600;
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

				td,
				th {
					vertical-align: middle !important;
					font-size: 15px;
				}

				.comments-cell {
					max-width: 220px;
				}

				.footer {
					padding: 18px;
					text-align: center;
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
						<h3 class="page-title">All Feedbacks</h3>
						<a href="${pageContext.request.contextPath}/dashboard" class="btn btn-primary back-btn shadow">←
							Back to Dashboard</a>
					</div>

					<div class="glass-card">
						<div class="card-header-custom">Feedback Overview</div>

						<div class="card-body">
							<div class="table-responsive">

								<table class="table table-bordered align-middle mb-0 text-center">

									<thead>
										<tr>
											<th>ID</th>
											<th>User</th>
											<th>Bus</th>
											<th>Reservation ID</th>
											<th>Driver Rating</th>
											<th>Service Rating</th>
											<th>Overall Rating</th>
											<th>Comments</th>
											<th>Date</th>
											<th>Time</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="feedback" items="${feedbacks}">
											<tr>
												<td>${feedback.id}</td>
												<td class="fw-semibold">${feedback.user.username}</td>
												<td>${feedback.bus.busName}</td>
												<td>${feedback.reservation.id}</td>
												<td>${feedback.driverRating}</td>
												<td>${feedback.serviceRating}</td>
												<td class="fw-bold">${feedback.overallRating}</td>
												<td class="text-start comments-cell">${feedback.comments}</td>
												<td>${feedback.feedbackDate}</td>
												<td>${feedback.submittedAt}</td>
											</tr>
										</c:forEach>
									</tbody>

								</table>

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