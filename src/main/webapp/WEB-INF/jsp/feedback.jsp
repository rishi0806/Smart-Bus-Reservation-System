<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Feedback</title>
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
					background-image: url("https://images.pexels.com/photos/210182/pexels-photo-210182.jpeg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				.page-content {
					flex: 1;
					background: rgba(0, 0, 0, 0.55);
				}

				.feedback-card {
					background: rgba(255, 255, 255, 0.92);
					backdrop-filter: blur(12px);
					border-radius: 20px;
					box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
				}

				.card-header {
					background: linear-gradient(45deg, #2196f3, #42a5f5) !important;
					border-top-left-radius: 20px !important;
					border-top-right-radius: 20px !important;
					font-size: 20px;
				}

				.form-control {
					border-radius: 12px;
					padding: 10px;
				}

				.submit-btn {
					border-radius: 30px;
					background: linear-gradient(45deg, #4caf50, #66bb6a);
					border: none;
					font-weight: 600;
					padding: 8px 18px;
				}

				.back-btn {
					border-radius: 30px;
					font-weight: 600;
					padding: 8px 18px;
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

				<div class="container d-flex justify-content-center mt-5">
					<div class="card feedback-card shadow-lg" style="width:28rem;">

						<div class="card-header text-white text-center fw-bold">
							Provide Feedback
						</div>

						<div class="card-body">

							<form action="${pageContext.request.contextPath}/user/feedback" method="post">
								<input type="hidden" name="reservationId" value="${id}">

								<div class="mb-3">
									<label class="form-label">Driver Rating (1-5)</label>
									<input type="number" name="driverRating" min="1" max="5" class="form-control"
										required>
								</div>

								<div class="mb-3">
									<label class="form-label">Service Rating (1-5)</label>
									<input type="number" name="serviceRating" min="1" max="5" class="form-control"
										required>
								</div>

								<div class="mb-3">
									<label class="form-label">Overall Rating (1-5)</label>
									<input type="number" name="overallRating" min="1" max="5" class="form-control"
										required>
								</div>

								<div class="mb-3">
									<label class="form-label">Comments</label>
									<textarea name="comments" rows="3" class="form-control"
										placeholder="Write your feedback..."></textarea>
								</div>

								<div class="d-flex justify-content-between">
									<a href="${pageContext.request.contextPath}/user"
										class="btn btn-outline-secondary back-btn">Back</a>
									<button type="submit" class="btn text-white submit-btn">Submit Feedback</button>
								</div>

							</form>

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