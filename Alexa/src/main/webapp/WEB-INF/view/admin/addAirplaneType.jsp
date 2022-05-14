<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
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
<link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet"
	type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet"
	type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet" type="text/css">

<script>
	function reSum(type) {
		console.log(type)

		var x = parseInt(document.getElementById("demo0").value);
		var y = parseInt(document.getElementById("demo1").value);
		var z = parseInt(document.getElementById("demo2").value);
		document.getElementById("Sum").value = x + y + z;

		$('#business').val(y);
		$('#first').val(z);
		$('#economy').val(x);

	}
</script>

</head>
<body class="fixed-left" onload="getCapcity()">
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
													Airplane Type</a></li>
											<li class="breadcrumb-item active">Add Airplane Type</li>
										</ol>
									</div>
									<h4 class="page-title">Add Airplane Type</h4>
								</div>
							</div>
						</div>
						<!-- end page title end breadcrumb -->
						<div class="row">
							<div class="col-lg-12">
								<div class="card m-b-30">
									<div class="card-body">

										<f:form class="" action="saveAirplaneType"
											modelAttribute="manageAirplaneTypeVO" method="post">


											<input type="hidden" name="economy" id="economy">
											<input type="hidden" name="first" id="first">
											<input type="hidden" name="business" id="business">
											<input type="hidden" name="totalCapacty" id="total">

											<div class="form-group">
												<div>
													<label>Airplane Type</label>
													<f:input path="airplaneType" class="form-control"
														required="required" placeholder="Airplane Type" />
												</div>
											</div>



											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Capacity</label>
											</div>

											<div class="row">
												<div class="form-group col-sm-3">

													<label>Economy-Class</label>
													<div
														class="input-group bootstrap-touchspin bootstrap-touchspin-injected"
														class="form-control
															style="margin-left: -16px">
														<span class="input-group-btn input-group-prepend">

														</span><input id="demo0" type="text" value="0"
															onchange="reSum('economy');" name="demo0"
															data-bts-min="0" data-bts-max="900" data-bts-init-val=""
															data-bts-step="1" data-bts-decimal="0"
															data-bts-step-interval="100"
															data-bts-force-step-divisibility="round"
															data-bts-step-interval-delay="500" data-bts-prefix=""
															data-bts-postfix="" data-bts-prefix-extra-class=""
															data-bts-postfix-extra-class="" data-bts-booster="true"
															data-bts-boostat="10" data-bts-max-boosted-step="false"
															data-bts-mousewheel="true"
															data-bts-button-down-class="btn btn-default"
															data-bts-button-up-class="btn btn-default"
															class="form-control"><span
															class="input-group-btn input-group-append"> </span>

													</div>
												</div>
												<div class="form-group col-sm-3">

													<label>Business-Class </label>
													<div
														class="input-group bootstrap-touchspin bootstrap-touchspin-injected"
														class="form-control
															style="margin-left: -16px">
														<span class="input-group-btn input-group-prepend">

														</span><input id="demo1" type="text" value="0"
															onchange="reSum('bussiness');" name="demo0"
															data-bts-min="0" data-bts-max="900" data-bts-init-val=""
															data-bts-step="1" data-bts-decimal="0"
															data-bts-step-interval="100"
															data-bts-force-step-divisibility="round"
															data-bts-step-interval-delay="500" data-bts-prefix=""
															data-bts-postfix="" data-bts-prefix-extra-class=""
															data-bts-postfix-extra-class="" data-bts-booster="true"
															data-bts-boostat="10" data-bts-max-boosted-step="false"
															data-bts-mousewheel="true"
															data-bts-button-down-class="btn btn-default"
															data-bts-button-up-class="btn btn-default"
															class="form-control"><span
															class="input-group-btn input-group-append"> </span>

													</div>
												</div>
												<div class="form-group col-sm-3">

													<label>First-Class </label>
													<div
														class="input-group bootstrap-touchspin bootstrap-touchspin-injected"
														class="form-control
															style="margin-left: -16px">
														<span class="input-group-btn input-group-prepend"></span>

														<input id="demo2" type="text" value="0"
															onchange="reSum('first');" name="demo0" data-bts-min="0"
															data-bts-max="900" data-bts-init-val="" data-bts-step="1"
															data-bts-decimal="0" data-bts-step-interval="100"
															data-bts-force-step-divisibility="round"
															data-bts-step-interval-delay="500" data-bts-prefix=""
															data-bts-postfix="" data-bts-prefix-extra-class=""
															data-bts-postfix-extra-class="" data-bts-booster="true"
															data-bts-boostat="10" data-bts-max-boosted-step="false"
															data-bts-mousewheel="true"
															data-bts-button-down-class="btn btn-default"
															data-bts-button-up-class="btn btn-default"
															class="form-control"><span
															class="input-group-btn input-group-append"></span>

													</div>
												</div>

												<div class="form-group">
													<label>Total</label> <input name="total" id="Sum"
														readonly="readonly" class="form-control" />
												</div>
											</div>
 
											<hr>

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
	<!-- Plugins js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/moment.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/tempusdominus-bootstrap-4.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-material-datetimepicker.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery-clockpicker.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery-asColor.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery-asGradient.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery-asColorPicker.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/select2.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-colorpicker.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-maxlength.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.bootstrap-touchspin.min.js"
		type="text/javascript"></script>
	<!-- Plugins Init js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/form-advanced.js"></script>


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