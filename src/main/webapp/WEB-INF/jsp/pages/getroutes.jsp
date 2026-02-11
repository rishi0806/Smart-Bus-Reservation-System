<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<style>
			.routes-wrapper {
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

		<div class="routes-wrapper">
			<h3 class="page-title">Routes</h3>

			<div class="glass-table">
				<table class="table table-bordered text-center align-middle">

					<thead>
						<tr>
							<th>From</th>
							<th>To</th>
							<th>Distance (km)</th>
							<th>Modify</th>
							<th>Delete</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="route" items="${routes}">
							<tr>
								<td>${route.routeFrom}</td>
								<td>${route.routeTo}</td>
								<td>${route.distance}</td>
								<td>
									<a href="${pageContext.request.contextPath}/routedashboard?page=updateroute&id=${route.id}"
										class="btn modify-btn btn-sm">Modify</a>
								</td>
								<td>
									<a href="${pageContext.request.contextPath}/route/delete/${route.id}"
										class="btn delete-btn btn-sm">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>
		</div>