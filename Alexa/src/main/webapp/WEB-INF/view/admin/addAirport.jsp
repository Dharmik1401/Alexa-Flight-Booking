<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>Admin | Add Airport</title>
<meta content="Admin Dashboard" name="description">
<meta content="Mannatthemes" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="assets/images/favicon.ico">
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
											<li class="breadcrumb-item"><a href="/">Home</a></li>
											<li class="breadcrumb-item"><a href="#">Manage
													Airport</a></li>
											<li class="breadcrumb-item"><a href="#">Add Airport</a></li>
										</ol>
									</div>
									<h4 class="page-title">Add Airport</h4>
								</div>
							</div>
						</div>
						<!-- end page title end breadcrumb -->
						<div class="col-lg-12">
							<div class="card m-b-30">
								<div class="card-body">

									<f:form class="" action="saveAirport"
										modelAttribute="manageAirportVO" method="post">




										<div class="form-group">
											<div>
												<label>City Name</label>
												<f:hidden path="id" />
												<f:select path="manageCityVO.id" class="form-control">

													<!--  <option selected="selected" disabled="disabled">Select
														City Name</option>-->
													<c:forEach items="${cityList}" var="i">
														<f:option value="${i.id}">${i.cityName}</f:option>
													</c:forEach>
												</f:select>
											</div>
										</div>

										<div class="row">
											<div class="form-group col-md-6">
												<div>
													<label>Airport Name</label>
													<f:input path="airportName" required="required"
														class="form-control" placeholder="Airport Name" />
												</div>
											</div>


											<div class="form-group col-md-6">
												<div>
													<label>Airport Type</label>
													<f:select path="airportType" class="form-control">


														<option selected="selected" disabled="disabled">Select
															Airport Type</option>

														<option>International</option>
														<option>Domestic</option>

													</f:select>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label>Airport Description</label>
											<div>
												<f:textarea path="airportDescription" required="required"
													class="form-control" rows="5" />
											</div>
										</div>
										<div class="form-group">
											<div>
												<button type="submit"
													class="btn btn-primary waves-effect waves-light">Add</button>

											</div>
										</div>
									</f:form>
								</div>
							</div>
						</div>
						<!-- end col -->

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
	<!-- Parsley js -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('form').parsley();
		});
	</script>
	<!-- App js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>
</body>
</html>