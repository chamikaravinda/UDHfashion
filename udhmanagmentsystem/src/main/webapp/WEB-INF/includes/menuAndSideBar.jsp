
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>UDM Fashions ,Powered By Nova Solutions</title>
<meta name="description"
	content="Free Bootstrap 4 Admin Theme | Pike Admin">
<meta name="author"
	content="Pike Web Development - https://www.pikephp.com">

<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- Switchery css -->
<link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" />

<!-- Bootstrap CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<!-- Font Awesome CSS -->
<link href="assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />

<!-- Custom CSS -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />

<!-- BEGIN CSS for this page -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" />
<style>
td.details-control {
	background: url('assets/plugins/datatables/img/details_open.png')
		no-repeat center center;
	cursor: pointer;
}

tr.shown td.details-control {
	background: url('assets/plugins/datatables/img/details_close.png')
		no-repeat center center;
}
</style>
<!-- END CSS for this page -->


</head>

<body class="adminbody">

	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1

		response.setHeader("Pragma", "no-cache");//HTTP 1.0;

		response.setHeader("Expires", "0");//proxies

		if (session.getAttribute("user") == null) {
			response.sendRedirect("login");
		}
	%>

	<div id="main">

		<!-- top bar navigation -->
		<div class="headerbar">

			<!-- LOGO -->
			<div class="headerbar-left">
				<a href="#" class="logo"> <span>UDM Fashions</span></a>
			</div>

			<nav class="navbar-custom">

			<ul class="list-inline float-right mb-0">
				<li class="list-inline-item dropdown notif"><a
					class="nav-link dropdown-toggle nav-user" data-toggle="dropdown"
					href="#" role="button" aria-haspopup="false" aria-expanded="false">

						<i class="fa fa-user fa-2x" aria-hidden="true"
						style="margin: 2px; size: 200%"></i>
				</a>
					<div class="dropdown-menu dropdown-menu-right profile-dropdown">
						<!-- item-->
						<div class="dropdown-item noti-title">
							<h5 class="text-overflow">
								<small>Hello,<c:out value="${sessionScope.user.fname}" /></small>
							</h5>
						</div>

						<!-- item-->
						<a href="editUser?id=${sessionScope.user.id}"
							class="dropdown-item notify-item"> <i class="fa fa-user"></i>
							<span>Profile</span>
						</a>

						<!-- item-->
						<a href="logout" class="dropdown-item notify-item"> <i
							class="fa fa-power-off"></i> <span>Logout</span>
						</a>
					</div></li>

			</ul>

			<ul class="list-inline menu-left mb-0">

				<li class="float-left" style="margin-top: 10px">
					<button class="button-menu-mobile open-left">
						<i class="fa fa-fw fa-bars"></i>
					</button>
				</li>
			</ul>

			</nav>

		</div>
		<!-- End Navigation Bar-->

		<!-- Left Sidebar Start -->

		<div class="left main-sidebar">

			<div class="sidebar-inner leftscroll">

				<div id="sidebar-menu">
					<ul>
						<!-- Dashobard -->
						<li class="submenu"><a href="/"><i
								class="fa fa-fw fa-bars"></i><span> Dashboard</span> </a></li>

						<!-- Sales -->
						<li class="submenu"><a href="newSales"><i
								class="fa fa-shopping-cart "></i><span> New Sale</span> </a></li>
						<c:if test="${sessionScope.user.role == 'casher'}">
						<li class="submenu"><a href="returnNote"><i
									class="fa fa-sticky-note"></i><span> Return Item </span> </a></li>
						</c:if>		
						<c:if test="${sessionScope.user.role != 'casher'}">
							<!-- Stocks -->
							<li class="submenu"><a href="stockView"><i
									class="fa fa-cubes"></i><span> Stocks </span> </a></li>

							<!-- Sales -->

							<li class="submenu"><a href="#"><i
									class="fa fa-area-chart" aria-hidden="true"></i><span>Sales</span>
									<span class="menu-arrow"></span></a>
								<ul class="list-unstyled">
									<li><a href="viewAllSales"><i class="fa fa-table"
											aria-hidden="true"></i></i> All Sale</a></li>
									<li><a href="returnNote"><i class="fa fa-sticky-note"
											aria-hidden="true"></i> Return Note</a></li>

								</ul></li>

							<!-- Suppliers -->
							<li class="submenu"><a href="#"><i class="fa fa-truck"></i>
									<span> Suppliers </span> <span class="menu-arrow"></span></a>
								<ul class="list-unstyled">
									<li><a href="addShop"><i class="fa fa-plus-square"></i>
											Add Suppliers</a></li>
									<li><a href="viewShop"><i class="fa fa-users"
											aria-hidden="true"></i> All Suppliers</a></li>
									<li class="submenu"><a href="#"><i
											class="fa fa-briefcase"></i><span> Accounts</span><span
											class="menu-arrow"></span></a>
										<ul class="list-unstyled">
											<li><a href="allCreditBills"><i
													class="fa fa-credit-card-alt"></i> Credit Bills</a></li>
											<li><a href="paidBills"><i
													class="fa fa-check-square"></i> Paid Bills</a></li>
											<li><a href="newPayment"><i class="fa fa-plus"
													aria-hidden="true"></i></i> New Payments</a></li>
											<li><a href="cashPayments"><i class="fa fa-money"></i>
													Cash Payments</a></li>
											<li><a href="cheqPayments"><i class="fa fa-book"
													aria-hidden="true"></i> Cheque Payments</a></li>
										</ul></li>
								</ul></li>


							<!-- Employees -->
							<li class="submenu"><a href="#"><i class="fa fa-user"
									aria-hidden="true"></i><span>Employee</span><span
									class="menu-arrow"></span></a>
								<ul class="list-unstyled">
									<li><a href="addEmployee"><i class="fa fa-plus-square"></i>
											Add Employee</a></li>
									<li><a href="viewEmployee"><i class="fa fa-user"
											aria-hidden="true"></i> All Employee</a></li>
									<li><a href="employeeSalarySheet"><i
											class="fa fa-money" aria-hidden="true"></i> Salary Payments</a></li>
									<li><a href="advancePay"><i class="fa fa-ticket"
											aria-hidden="true"></i> Advance Payment</a></li>
									<li><a href="attendance"><i class="fa fa-list-alt"
											aria-hidden="true"></i> Attendance</a></li>
									<li><a href="employeePaidSalarySheet"><i
											class="fa fa-check" aria-hidden="true"></i> Paid Salaries</a></li>


								</ul></li>

							<!-- Banks-->
							<li class="submenu"><a href="#"><i
									class="fa fa-university " aria-hidden="true"></i><span>
										Bank Accounts</span><span class="menu-arrow"></span></a>
								<ul class="list-unstyled">
									<li><a href="allAccounts"><i class="fa fa-line-chart"></i>
											All Accounts</a></li>
									<li><a href="addBanks"><i class="fa fa-plus"></i> Add
											Account</a></li>
									<li><a href="allDeposits"><i class="fa fa-inr"></i>
											Deposits</a></li>
									<li><a href="allWithdraws"><i
											class="fa fa-credit-card "></i> Withdraws</a></li>
								</ul></li>


							<!-- Expences -->
							<li class="submenu"><a href="#"><i
									class="fa fa-pie-chart"></i><span> Expenditures</span><span
									class="menu-arrow"></span></a>
								<ul class="list-unstyled">
									<li><a href="addShopExpenditures"><i
											class="fa fa-plus-square"></i> Shop Exp :</a></li>
									<li><a href="viewShopExpenditures"><i
											class="fa fa-info-circle" aria-hidden="true"></i> All Shop
											Exp :</a></li>
									<li><a href="addPersonalExpenditures"><i
											class="fa fa-plus-square"></i> Personal</a></li>
									<li><a href="viewPexpenditures"><i
											class="fa fa-info-circle" aria-hidden="true"></i> All
											Personal Exp :</a></li>
								</ul></li>
							<!-- Settings -->
							<li class="submenu"><a href="settings"><i
									class="fa fa-wrench"></i><span> Settings </span> </a></li>
						</c:if>

					</ul>

					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- End Sidebar -->