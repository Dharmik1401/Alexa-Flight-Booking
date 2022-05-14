<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>User | View Booking</title>
<meta content="Admin Dashboard" name="description">
<meta content="Mannatthemes" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<!-- DataTables -->
<link href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<!-- Responsive datatable examples -->
<link href="<%=request.getContextPath()%>/adminResources/css/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet"
	type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet"
	type="text/css">
</head>
<body class="fixed-left">
	<!-- Begin page -->
	<div id="wrapper">
		<!-- ========== Left Sidebar Start ========== -->

		<jsp:include page="menu.jsp"></jsp:include>

		<!-- Left Sidebar End -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<!-- Top Bar Start -->

				<jsp:include page="header.jsp"></jsp:include>

				<!-- Top Bar End -->
				<div class="page-content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12">
								<div class="page-title-box">
									<div class="btn-group float-right">
										<ol class="breadcrumb hide-phone p-0 m-0">
											<li class="breadcrumb-item"><a href="index">Home</a></li>
											<li class="breadcrumb-item active">View Booking</li>
										</ol>
									</div>
									<h4 class="page-title">View Booking</h4>
								</div>
							</div>
						</div>
						<!-- end page title end breadcrumb -->
							
						<div class="row">
							<div class="col-12">	
								<div class="card m-b-30">
									<div class="card-body">
										<table id="datatable-buttons"
											class="table table-striped table-bordered" cellspacing="0"
											width="100%">
											<thead>
												<tr>
													<th>No</th>
													<th>Flight Booking Date</th>
													<th>Airplane Number</th>
													<th>Airline Name</th>
													<th>Airline Description</th>
													<th>Airplane Type</th>
													<th>Flight Description</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${bookingList}" var="i" varStatus="j">
												
												<tr>
													<td>${j.count}</td>
													<td>${i.flightBookingDate}</td>
													<td>${i.manageAirplaneVO.airplaneNumber}</td>
													<td>${i.manageAirplaneVO.manageAirlineVO.airlineName}</td>
													<td>${i.manageAirplaneVO.manageAirlineVO.airlineDescription}</td>
													<td>${i.manageAirplaneVO.manageAirplaneTypeVO.airplaneType}</td>
													<td>${i.manageAirplaneVO.airplaneDescription}</td>
				<%-- 									<td>
														<a href='editAirport?id=${i.id}'>
															<i class="mdi mdi-pencil font-20"></i>
														</a>
														
														<a href='deleteAirport?id=${i.id}'>
															<i class="mdi mdi-delete font-20 text-danger ml-3"></i>
														</a>
				
														</td> --%>
														</tr>
														</c:forEach>
														
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- end col -->
						</div>
						<!-- end row -->
					</div>
					<!-- container -->
				</div>
				<!-- Page content Wrapper -->
			</div>
			<!-- content -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
		<!-- End Right content here -->
	</div>
	<!-- END wrapper -->
	<!-- jQuery  -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/detect.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.blockUI.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/waves.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.nicescroll.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.scrollTo.min.js"></script>
	<!-- Required datatable js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.min.js"></script>
	<!-- Buttons examples -->
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.bootstrap4.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jszip.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.html5.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.colVis.min.js"></script>
	<!-- Responsive examples -->
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.responsive.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/responsive.bootstrap4.min.js"></script>
	<!-- Datatable init js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/datatables.init.js"></script>
	<!-- App js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#datatable2').DataTable();
		});
	</script>
</body>
</html>