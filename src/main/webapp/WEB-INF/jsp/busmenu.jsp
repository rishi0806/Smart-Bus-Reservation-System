<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.menu-wrapper{
background:rgba(255,255,255,0.75);
backdrop-filter:blur(12px);
min-height:100vh;
border-right:1px solid rgba(255,255,255,0.4);
box-shadow:5px 0 20px rgba(0,0,0,0.08);
}

.menu-title{
font-size:22px;
font-weight:700;
color:#2c3e50;
}

.menu-item{
border:none !important;
margin:8px 15px;
border-radius:12px !important;
padding:12px 18px !important;
font-weight:600;
background:transparent !important;
color:#2c3e50 !important;
transition:.2s;
}

.menu-item:hover{
background:#eef5ff !important;
transform:translateX(4px);
}

.menu-active{
background:linear-gradient(45deg,#2196f3,#42a5f5) !important;
color:white !important;
box-shadow:0 5px 15px rgba(0,0,0,0.15);
}

.menu-disabled{
opacity:.5;
}
</style>

<div class="menu-wrapper py-4">

	<h4 class="text-center mb-4 menu-title">Bus Menu</h4>

	<ul class="list-group list-group-flush">

		<li class="list-group-item menu-item ${page eq 'admindashboard.jsp' ? 'menu-active' : ''}">
			<a class="text-decoration-none ${page eq 'admindashboard.jsp' ? 'text-white' : 'text-dark'}" href="/dashboard">Dashboard</a>
		</li>

		<li class="list-group-item menu-item ${page eq 'pages/bus/getbus.jsp' ? 'menu-active' : ''}">
			<a href="/bus?page=getbus" class="text-decoration-none ${page eq 'pages/bus/getbus.jsp' ? 'text-white' : 'text-dark'}">Buses</a>
		</li>

		<li class="list-group-item menu-item ${page eq 'pages/bus/addbus.jsp' ? 'menu-active' : ''}">
			<a href="/bus?page=addbus" class="text-decoration-none ${page eq 'pages/bus/addbus.jsp' ? 'text-white' : 'text-dark'}">Add Bus</a>
		</li>

		<li class="list-group-item menu-item menu-disabled ${page eq 'pages/bus/updatebus.jsp' ? 'menu-active' : ''}">
			Modify
		</li>

	</ul>
</div>
