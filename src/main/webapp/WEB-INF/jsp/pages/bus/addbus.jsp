<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<style>
			.addbus-wrapper {
				display: flex;
				flex-direction: column;
				align-items: center;
				padding: 30px;
			}

			.addbus-title {
				font-size: 28px;
				font-weight: 700;
				color: #2c3e50;
				margin-bottom: 20px;
			}

			.addbus-card {
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

			.submit-btn {
				border-radius: 30px;
				font-weight: 700;
				padding: 10px;
				background: linear-gradient(45deg, #2196f3, #42a5f5);
				border: none;
				color: white;
			}
		</style>

		<div class="addbus-wrapper">
			<h3 class="addbus-title">Add Bus</h3>

			<form action="${PageContext.request.contextPath}/savebus" method="POST" class="addbus-card">

				<div class="mb-3 form-floating">
					<input class="form-control" id="bus" type="text" name="busName" placeholder="Bus">
					<label for="bus">Bus</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" id="busType" type="text" name="busType" placeholder="Bus Type">
					<label for="busType">Bus Type</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" id="driverName" type="text" name="driverName" placeholder="Driver Name">
					<label for="driverName">Driver Name</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" id="seats" type="number" name="seats" placeholder="Seats">
					<label for="seats">Seats</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" id="availableSeats" type="number" name="availableSeats"
						placeholder="Available Seats">
					<label for="availableSeats">Available Seats</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" type="time" id="arrivalTime" name="arrivalTime">
					<label for="arrivalTime">Arrival Time</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" type="time" id="departureTime" name="departureTime">
					<label for="departureTime">Departure Time</label>
				</div>

				<div class="mb-3 form-floating">
					<input class="form-control" type="number" id="price" name="price" placeholder="Price">
					<label for="price">Price</label>
				</div>

				<div class="mb-3 form-floating">
					<select id="route" class="form-control" name="routeId">
						<c:forEach var="route" items="${routes}">
							<option value="${route.id}">${route.routeFrom}-${route.routeTo}</option>
						</c:forEach>
					</select>
					<label for="route">Route</label>
				</div>

				<input type="submit" class="btn submit-btn w-100" value="Add Bus">

			</form>
		</div>