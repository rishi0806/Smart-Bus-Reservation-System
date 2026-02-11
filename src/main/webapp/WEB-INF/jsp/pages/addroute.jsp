<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<style>
		.addroute-wrapper {
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

		.route-card {
			background: rgba(255, 255, 255, 0.85);
			backdrop-filter: blur(12px);
			border-radius: 22px;
			box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
			padding: 25px;
			width: 50%;
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

	<div class="addroute-wrapper">

		<h3 class="page-title">Add Route</h3>

		<form action="${pageContext.request.contextPath}/route/add" method="POST" class="route-card">

			<div class="mb-3 form-floating">
				<input type="text" id="from" class="form-control" name="routeFrom" placeholder="From">
				<label for="from">From</label>
			</div>

			<div class="mb-3 form-floating">
				<input type="text" id="to" class="form-control" name="routeTo" placeholder="To">
				<label for="to">To</label>
			</div>

			<div class="mb-4 form-floating">
				<input type="number" id="distance" name="distance" class="form-control" placeholder="Distance">
				<label for="distance">Distance (km)</label>
			</div>

			<input class="btn submit-btn w-50 mx-auto d-block" type="submit" value="Add Route">

		</form>
	</div>