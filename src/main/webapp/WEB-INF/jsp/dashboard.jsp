<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>User Dashboard</title>
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

					/* BUS HERO IMAGE */
					background-image: url("https://static.vecteezy.com/system/resources/thumbnails/070/849/748/small_2x/comfortable-blue-leather-seats-on-a-bus-during-sunset-photo.jpg");
					background-size: cover;
					background-position: center;
					background-repeat: no-repeat;
				}

				/* Dark overlay */
				.page-content {
					flex: 1;
					background: rgba(0, 0, 0, 0.55);
				}

				.navbar {
					background: rgba(255, 255, 255, 0.2) !important;
					backdrop-filter: blur(12px);
				}

				.nav-link,
				.navbar-brand {
					color: white !important;
					font-weight: 600;
				}

				.nav-link:hover {
					color: #90caf9 !important;
				}

				.search-card {
					background: rgba(255, 255, 255, 0.9);
					backdrop-filter: blur(12px);
					border-radius: 20px;
					box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
				}

				.bus-card {
					border-radius: 18px;
					background: rgba(255, 255, 255, 0.95);
					transition: .3s;
				}

				.bus-card:hover {
					transform: translateY(-6px);
					box-shadow: 0 15px 30px rgba(0, 0, 0, 0.25);
				}

				.book-btn {
					border-radius: 30px;
					font-weight: 600;
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

				<nav class="navbar navbar-expand-lg shadow">
					<div class="container-fluid">
						<div class="d-flex align-items-center gap-3">
							<span class="navbar-brand">Smart Bus Reservation System</span>
						</div>

						<ul class="navbar-nav">
							<li class="navbar-item"><a class="nav-link"
									href="/user/reservations">My Reservations</a></li>
							<li class="navbar-item"><a class="nav-link"
									href="${PageContext.request.contextPath}/user/reg">Register</a></li>
							<li class="navbar-item"><a class="nav-link" href=${isAuthenticated ?'/logout'
									: '/user/login' }>${isAuthenticated ?"Logout" :"Login"}</a></li>
						</ul>
					</div>
				</nav>

				<div class="container py-5 d-flex justify-content-center">
					<div class="search-card card p-4 border-0" style="width:350px;">

						<form action="${PageContext.request.contextPath}/user/bus/get">
							<div class="mb-3">
								<label class="form-label fw-semibold">From</label>
								<input type="text" class="form-control" name="routeFrom" placeholder="Source" required>
							</div>

							<div class="mb-4">
								<label class="form-label fw-semibold">To</label>
								<input type="text" class="form-control" name="routeTo" placeholder="Destination" required>
							</div>

							<input type="submit" value="Search Buses" class="btn book-btn text-white w-100">
						</form>

					</div>
				</div>

				<c:if test="${not empty buses}">
					<div class="container mt-3">
						<div class="row g-4">
							<c:forEach var="bus" items="${buses}">
								<div class="col-md-4 col-sm-6">
									<div class="card bus-card p-3 border-0 shadow-sm">
										<h5 class="fw-bold">${bus.busName}</h5>
										<p>${bus.route.routeFrom} → ${bus.route.routeTo}</p>
										<p>Arrival: ${bus.arrivalTime}</p>
										<p>Departure: ${bus.departureTime}</p>
										<p>Seats: ${bus.availableSeats} / ${bus.seats}</p>
										<a href="${pageContext.request.contextPath}/user/reserve?id=${bus.id}"
											class="btn book-btn text-white w-100">Book Now</a>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</c:if>

			</div>

			<footer class="footer">
				© 2026 Smart Bus Reservation System • All Rights Reserved
			</footer>

			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		</body>

		</html>