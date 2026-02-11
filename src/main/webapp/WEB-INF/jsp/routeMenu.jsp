<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<style>
		.route-menu {
			background: rgba(255, 255, 255, 0.75);
			backdrop-filter: blur(12px);
			min-height: 100vh;
			border-right: 1px solid rgba(255, 255, 255, 0.4);
			box-shadow: 5px 0 20px rgba(0, 0, 0, 0.08);
		}

		.menu-title {
			font-size: 22px;
			font-weight: 700;
			color: #2c3e50;
		}

		.menu-item {
			border: none !important;
			margin: 8px 15px;
			border-radius: 12px !important;
			padding: 12px 18px !important;
			font-weight: 600;
			background: transparent !important;
			color: #2c3e50 !important;
			transition: .2s;
		}

		.menu-item:hover {
			background: #eef5ff !important;
			transform: translateX(4px);
		}

		.menu-active {
			background: linear-gradient(45deg, #2196f3, #42a5f5) !important;
			color: white !important;
			box-shadow: 0 5px 15px rgba(0, 0, 0, 0.15);
		}

		.menu-disabled {
			opacity: .5;
		}
	</style>

	<div class="route-menu py-4">

		<h4 class="text-center mb-4 menu-title">Route Menu</h4>

		<ul class="list-group list-group-flush">

			<li class="list-group-item menu-item">
				<a href="${pageContext.request.contextPath}/dashboard"
					class="text-decoration-none text-dark">Dashboard</a>
			</li>

			<li class="list-group-item menu-item ${page eq 'pages/getroutes.jsp' ? 'menu-active' : ''}">
				<a class="text-decoration-none ${page eq 'pages/getroutes.jsp' ? 'text-white' : 'text-dark'}"
					href="routedashboard?page=getroutes">Routes</a>
			</li>

			<li class="list-group-item menu-item ${page eq 'pages/addroute.jsp' ? 'menu-active' : ''}">
				<a class="text-decoration-none ${page eq 'pages/addroute.jsp' ? 'text-white' : 'text-dark'}"
					href="routedashboard?page=addroute">Add</a>
			</li>

			<li class="list-group-item menu-item menu-disabled ${page eq 'pages/updateroute.jsp' ? 'menu-active' : ''}">
				Modify
			</li>

		</ul>
	</div>