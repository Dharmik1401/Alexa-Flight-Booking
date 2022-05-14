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
<title>Admin | Add Airplane</title>
<meta content="Admin Dashboard" name="description">
<meta content="Mannatthemes" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<link
	href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/icons.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/style.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/adminResources/css/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet" type="text/css">


</head>
<body class="fixed-left" onload="getCapacity()">
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
													Airplane</a></li>
											<li class="breadcrumb-item active">Add Airplane</li>
										</ol>
									</div>
									<h4 class="page-title">Add Airplane</h4>
								</div>
							</div>
						</div>
						<!-- end page title end breadcrumb -->
						<div class="row">
							<div class="col-lg-12">
								<div class="card m-b-30">
									<div class="card-body">

										<f:form class="" action="saveAirplane"
											modelAttribute="manageAirplaneVO" method="post"
											enctype="multipart/form-data">

											<div class="form-group">

												<div>

													<label>Airline Name</label>
													<f:select path="manageAirlineVO.id" class="form-control">

														<!--  <option selected="selected" disabled="disabled">Select
															Airline</option>-->
														<c:forEach items="${airlineList}" var="i">
															<f:option value="${i.id}">${i.airlineName}</f:option>
														</c:forEach>
													</f:select>

												</div>
											</div>
											<div class="form-group">

												<div>

													<label>Airplane Type</label>
													<f:select path="manageAirplaneTypeVO.id"
														id="airplaneTypeId" class="form-control"
														onchange="getCapacity()">
														<c:forEach items="${airplaneTypeList}" var="i">
															<f:option value="${i.id}">${i.airplaneType}</f:option>
														</c:forEach>
													</f:select>

												</div>
											</div>

											<div class="row">

												<label class="col-sm-2 col-form-label"> Total
													Capacity</label>
											</div>


											<div class="row">

												<div class="form-group col-sm-3">
													<label class="col-form-label">First-Class </label> <input
														class="form-control" readonly="readonly" id="firstClass">

												</div>


												<!--  <div class="form-group row"> -->
												<div class="form-group col-sm-3">
													<label class="col-form-label">Business-Class</label> <input
														class="form-control" readonly="readonly"
														id="businessClass">

												</div>

												<!--  <div class="form-group row"> -->
												<div class="form-group col-sm-3">
													<label class="col-form-label">Economy-Class </label> <input
														class="form-control" readonly="readonly" id="economyClass">
												</div>


												<div class="form-group col-sm-3">
													<label class="col-form-label"> Total Capacity</label> <input
														class="form-control" readonly="readonly" id="totalCap">
												</div>

											</div>

											<div class="row">
												<div class="form-group col-sm-6">
													<label> <!--  class="col-form-label" -->Airplane
														Number
													</label>


													<f:input path="airplaneNumber" class="form-control"
														required="required" placeholder="Airplane Number" />
												</div>


												<div class="form-group col-6">
													<label style="margin-left: 1px">Photos</label>
															<input type="file" name="file" class="form-control">
												</div>

											</div>

											<div class="form-group">
												<label>Airplane Description</label>
												<div>
													<f:textarea path="airplaneDescription" class="form-control"
														rows="5" />
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
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/detect.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.blockUI.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/waves.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.nicescroll.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.scrollTo.min.js"></script>

	<!-- Custom js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.bootstrap-touchspin.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap-maxlength.min.js"></script>
	<script
		src="<%=request.getContextPath()%>\adminResources\js\custom\addAirplane.js"></script>



	<!-- Parsley js -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('form').parsley();
		});
	</script>
	<!-- App js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>
</body>
</html>