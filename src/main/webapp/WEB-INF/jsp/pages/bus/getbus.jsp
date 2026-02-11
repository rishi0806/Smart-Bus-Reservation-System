<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<style>
			.bus-table-wrapper {
				display: flex;
				flex-direction: column;
				align-items: center;
				padding: 30px;
			}

			.page-title {
				font-size: 28px;
				font-weight: 700;
				color: #2c3e50;
				margin-bottom: 20px;
			}

			.glass-table {
				background: rgba(255, 255, 255, 0.85);
				backdrop-filter: blur(12px);
				border-radius: 18px;
				box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
				padding: 20px;
				width: 100%;
			}

			.table thead {
				background: #0d6efd;
				color: white;
			}

			.table tbody tr {
				transition: .2s;
			}

			.table tbody tr:hover {
				background: #f1f7ff;
				transform: scale(1.002);
			}

			.modify-btn {
				border-radius: 25px;
				font-weight: 600;
				padding: 5px 12px;
				background: linear-gradient(45deg, #2196f3, #42a5f5);
				border: none;
				color: white;
			}

			.delete-btn {
				border-radius: 25px;
				font-weight: 600;
				padding: 5px 12px;
				background: linear-gradient(45deg, #f44336, #e57373);
				border: none;
				color: white;
			}
		</style>

		<div class="bus-table-wrapper">
			<h3 class="page-title">Available Buses</h3>

			<div class="glass-table">
				<table class="table table-bordered text-center align-middle">

					<thead>
						<tr>
							<th>Bus</th>
							<th>Bus Type</th>
							<th>Driver</th>
							<th>Seats</th>
							<th>Available</th>
							<th>Arrival</th>
							<th>Departure</th>
							<th>Price</th>
							<th>Route</th>
							<th>Modify</th>
							<th>Delete</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="bus" items="${buses}">
							<tr>
								<td>${bus.busName}</td>
								<td>${bus.busType}</td>
								<td>${bus.driverName}</td>
								<td>${bus.seats}</td>
								<td>${bus.availableSeats}</td>
								<td>${bus.arrivalTime}</td>
								<td>${bus.departureTime}</td>
								<td>₹${bus.price}</td>
								<td>${bus.route.routeFrom} → ${bus.route.routeTo}</td>
								<td><a class="btn modify-btn" href="bus?page=updatebus&id=${bus.id}">Modify</a></td>
								<td><a class="btn delete-btn" href="bus/delete?id=${bus.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>
		</div>