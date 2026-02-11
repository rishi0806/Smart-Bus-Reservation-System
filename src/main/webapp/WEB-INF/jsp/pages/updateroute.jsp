<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<style>
		.updateroute-wrapper {
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

		.update-btn {
			border-radius: 30px;
			font-weight: 700;
			padding: 10px;
			background: linear-gradient(45deg, #2196f3, #42a5f5);
			border: none;
			color: white;
		}
	</style>

	<div class="updateroute-wrapper">

		<h3 class="page-title">Update Route</h3>

		<form action="${pageContext.request.contextPath}/route/update/${route.id}" method="POST" class="update-card">

			<div class="mb-3 form-floating">
				<input type="text" class="form-control" name="routeFrom" value="${route.routeFrom}" placeholder="From">
				<label>From</label>
			</div>

			<div class="mb-3 form-floating">
				<input type="text" class="form-control" name="routeTo" value="${route.routeTo}" placeholder="To">
				<label>To</label>
			</div>

			<div class="mb-4 form-floating">
				<input type="number" class="form-control" name="distance" value="${route.distance}"
					placeholder="Distance">
				<label>Distance</label>
			</div>

			<input class="btn update-btn w-50 mx-auto d-block" type="submit" value="Update Route">

		</form>

	</div>