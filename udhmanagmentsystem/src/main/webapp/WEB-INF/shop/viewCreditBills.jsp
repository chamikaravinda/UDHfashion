
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ include file="../includes/menuAndSideBar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.UDHFashion.udhmanagmentsystem.service.IShopDAO"%>
<%@page import="com.UDHFashion.udhmanagmentsystem.service.ShopDAOImpl"%>
<%@page import="com.UDHFashion.udhmanagmentsystem.model.Shop"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@ page import="com.UDHFashion.udhmanagmentsystem.model.User"%>

<%
	if (session.getAttribute("user") == null) {
		response.sendRedirect("login");
	} else {
		User user = (User) session.getAttribute("user");
		if (user.getRole().equals("casher")) {
			response.sendRedirect("/error");
		}

	}
%>

<!--  to sweet alerts-->


<!-- added success message -->
<script type="text/javascript">
	function addedsuccesfully() {
		swal("Successful", "Credit Bill Added Succesfully", "success");
	}
</script>

<c:if test="${success == 1}">
	<script type="text/javascript">
		window.onload = addedsuccesfully;
	</script>
</c:if>

<!-- update success message -->
<script type="text/javascript">
	function updatesuccesfully() {
		swal("Successful", "Credit Bill updated Succesfully", "success");
	}
</script>

<c:if test="${success == 2}">
	<script type="text/javascript">
		window.onload = updatesuccesfully;
	</script>
</c:if>
<!-- delete success message -->
<script type="text/javascript">
	function deletesuccesfully() {
		swal("Successful", "Credit Bill Deleted Succesfully", "success");
	}
</script>

<c:if test="${success == 3}">
	<script type="text/javascript">
		window.onload = deletesuccesfully;
	</script>
</c:if>

<!-- delete unsuccess message -->
<script type="text/javascript">
	function deleteunsuccesfull() {
		swal("Unsuccessful", "Credit Bill Delete Unsuccesfull", "error");
	}
</script>

<c:if test="${success == 4}">
	<script type="text/javascript">
		window.onload = deleteunsuccesfull;
	</script>
</c:if>


<!--  to sweet alerts-->



<div class="content-page">

	<!-- Start content -->
	<div class="content">

		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-12">
					<div class="breadcrumb-holder">
						<h1 class="main-title float-left">Credit Bills</h1>
						<ol class="breadcrumb float-right">
							<li class="breadcrumb-item">Home</li>
							<li class="breadcrumb-item active">Accounts</li>
						</ol>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col-md-12">
					<div class="card mb-3">
						<div class="col-md-12a">
							<a href="addCreditBills" class="btn btn-primary"
								style="margin: 10px" role="button" aria-pressed="true">Add</a>

						</div>

						<div class="card-body">
							<div class="table-responsive">
								<table id="example1"
									class="table table-bordered table-hover display">
									<thead>
										<tr>
											<th>ID</th>
											<th>Bill No</th>
											<th>Bill Date</th>
											<th>Shop Name</th>
											<th>Bill Amount</th>

											<td><span><i class="fa fa-pencil-square"
													aria-hidden="true"></i></span></td>
											<td><span><i class="fa fa-trash"
													aria-hidden="true"></i></span></td>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="result" items="${creditBillList}">
											<tr>
												<td>${result.id}</td>
												<td>${result.billNo}</td>
												<td>${result.billDate}</td>
												<td>${result.shopName }</td>
												<td>Rs.<fmt:formatNumber type="number" pattern="###.##" value="${result.billAmount }" /></td>
												<td>
													<form method="POST" action="editCreditBill"
														modelAttribute="creditBills">
														<input name="id" type="hidden" value="${result.id}">
														<button type="submit" class="btn btn-link">
															<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
															Edit
														</button>
													</form>


												</td>
												<td>
													<form method="POST" action="deleteCreditBills"
														modelAttribute="creditBill">
														<input name="id" type="hidden" value="${result.id}">
														<button type="submit" class="btn btn-link">
															<i class="fa fa-trash-o" aria-hidden="true"></i> Delete
														</button>
													</form>
												</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>

							</div>
						</div>
						<!-- end card-->
					</div>

					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">

					</div>

				</div>
			</div>
			<!-- END container-fluid -->

		</div>
		<!-- END content -->

	</div>
</div>
<%@ include file="../includes/footer.jsp"%>
