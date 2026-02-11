<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<style>
			.updatebus-wrapper {
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

			.update-card {
				background: rgba(255, 255, 255, 0.85);
				backdrop-filter: blur(12px);
				border-radius: 22px;
				box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
				padding: 25px;
				width: 75%;
			}

			.form-control {
				border-radius: 12px;
				padding: 12px;
			}

			.form-control:focus {
				box-shadow: 0 0 0 2px rgba(13, 110, 253, 0.2);
				border-color: #0d6efd;
			}

			.update-btn {
				border-radius: 30px;
				font-weight: 700;
				padding: 10px;
				background: linear-gradient(45deg, #2196f3, #42a5f5);
				border: none;
				color: white;
			}
		</style>

		<div class="updatebus-wrapper">
			<h3 class="page-title">Update Bus</h3>

			<form action="${PageContext.request.contextPath}/updatebus" method="POST" class="update-card">

				<input type="hidden" name="id" value="${bus.id}">

				<div class="mb-3 form-floating">
					<input class="form-control" id="bus" type="text" name="busName" value="${bus.busName}"
						placeholder="Bus">
					<label for="bus">Bus</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" id="busType" type="text" name="busType" value="${bus.busType}"
						placeholder="Bus Type">
					<label for="busType">Bus Type</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" id="driverName" type="text" name="driverName" value="${bus.driverName}"
						placeholder="Driver Name">
					<label for="driverName">Driver Name</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" id="seats" type="number" name="seats" value="${bus.seats}"
						placeholder="Seats">
					<label for="seats">Seats</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" id="availableSeats" type="number" name="availableSeats"
						value="${bus.availableSeats}" placeholder="Available Seats">
					<label for="availableSeats">Available Seats</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" type="time" id="arrivalTime" name="arrivalTime"
						value="${bus.arrivalTime}">
					<label for="arrivalTime">Arrival Time</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" type="time" id="departureTime" name="departureTime"
						value="${bus.departureTime}">
					<label for="departureTime">Departure Time</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" type="number" id="price" name="price" value="${bus.price}"
						placeholder="Price">
					<label for="price">Price</label>
				</div>

				<div class="mb-3 form-floating">
					<select id="route" class="form-control" name="routeId">
						<c:forEach var="route" items="${routes}">
							<option value="${route.id}" ${bus !=null && bus.route !=null &&
								bus.route.id==route.id?'selected="selected"':''}>
${route.routeFrom}-${route.routeTo}
</option>
</c:forEach>
</select>
<label for="route">Route</label>
</div>

<div class="d-flex justify-content-center">
<input type="submit" class="btn update-btn w-50" value="Update">
</div>

</form>
</div>