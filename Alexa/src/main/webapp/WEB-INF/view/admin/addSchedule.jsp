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
<title>Admin | Add Schedule</title>
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
</head>
<body class="fixed-left" onload="hideRound()">
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
													Schedule</a></li>
											<li class="breadcrumb-item active">Add Schedule</li>
										</ol>
									</div>
									<h4 class="page-title">Add Schedule</h4>
								</div>
							</div>
						</div>


						<!-- end page title end breadcrumb -->


						<div class="row" style="user-select: auto;">
							<div class="col-12" style="user-select: auto;">
								<div class="card m-b-30" style="user-select: auto;">
									<div class="card-body">
										<f:form class="" action="saveSchedule"
											modelAttribute="manageScheduleVO" method="post">
											<div class="row">
												<div class="col-6">
													<div class="form-group">
														<label>Route Name</label>
														<f:input path="routeName" type="text" class="form-control" />
													</div>
												</div>

												<input type="hidden" name="days" id="days">

												<div class="col-6">
													<div class="form-group">
														<label>Airplane Number</label>
														<f:select path="manageAirplaneVO.id" class="form-control">
															<!-- <option selected="selected" disabled="disabled">Select
																Airplane Name</option> -->
															<c:forEach items="${airplaneList}" var="i">
																<f:option value="${i.id}">${i.airplaneNumber}</f:option>
															</c:forEach>
														</f:select>
													</div>
												</div>


												<div class="col-6">

													<hr>
													<div class="form-group">
														<center>
															<label> FROM </label>
														</center>
													</div>


											 <div class="col-12">
													<div class="form-group">
														<div>
															<label class="custom control-label" style="margin-left: -15px">Route Type</label>

															<div class="form-check-inline" style="user-select: auto;">
																<div class="custom-control custom-radio "
																	style="user-select: auto;">
																	<f:radiobutton id="customRadio4" path="routeType" checked="checked"
																		value="OneWay" class="custom-control-input"
																		style="user-select: auto;" onclick="hideRound()"/> <label
																		class="custom-control-label" for="customRadio4"
																		style="user-select: auto;">One Way</label>
																</div>

															</div>


															<div class="form-check-inline ml-4"
																style="user-select: auto;"> 
																<div class="custom-control custom-radio"
																	style="user-select: auto;">
																	<f:radiobutton path="routeType" value="RoundTrip" id="customRadio5"
																		name="customRadio" class="custom-control-input"
																		style="user-select: auto;"  onclick="showRound()"/> <label
																		class="custom-control-label" for="customRadio5"
																		style="user-select: auto;">Round Trip</label>
																</div>
															</div>
														</div>
													</div>
												</div>


													<div class="form-group">
														<label>City</label>
														<f:select path="manageFromCityVO.id" class="form-control" id="OneWayFromCity"  onchange="roundTripToCity()">
															<!-- <option selected="selected" disabled="disabled">Select
																City Name</option> -->
															<c:forEach items="${cityList}" var="i">
																<f:option value="${i.id}">${i.cityName}</f:option>
															</c:forEach>
														</f:select>
													</div>

													<div class="form-group">
														<label>Airport</label>
														<f:select path="manageFromAirportVO.id"
															class="form-control">
															<!-- <option selected="selected" disabled="disabled">Select
																Airport Name</option> -->
															<c:forEach items="${airportList}" var="i">
																<f:option value="${i.id}">${i.airportName}</f:option>
															</c:forEach>
														</f:select>
													</div>

													<div class="form-group">
														<label>Departure Time</label>
														<f:input path="departureTime" class="form-control"
															type="time" id="example-time-input"
															style="user-select: auto;" />
													</div>
												</div>

												<div class="col-6">
													<hr>
													<div class="form-group text-center">
															<label>TO</label>
													</div>
													
													<br>
													<br>
													
													<div class="form-group">
														<label>City</label>
														<f:select path="manageToCityVO.id" class="form-control" id="OneWayToCity" onchange="roundTripToCity()">
															<!-- <option selected="selected" disabled="disabled">Select City Name</option> -->
															<c:forEach items="${cityList}" var="i">
																<f:option value="${i.id}">${i.cityName}</f:option>
															</c:forEach>
														</f:select>
													</div>

													<div class="form-group">
														<label>Airport</label>
														<f:select path="manageToAirportVO.id" class="form-control">
															<!-- <option selected="selected" disabled="disabled">Select
																Airport Name</option> -->
															<c:forEach items="${airportList}" var="i">
																<f:option value="${i.id}">${i.airportName}</f:option>
															</c:forEach>
														</f:select>
													</div>

													<div class="form-group">
														<label>Arrival Time</label>
														<f:input path="arrivalTime" class="form-control"
															type="time" id="example-time-input"
															style="user-select: auto;" />
													</div>
												</div>

												
<!-- 
												<div class="form-group">
													<label>Price</label> <input name="Price" id="Price" class="form-control" />
												</div>
 -->
												<div id="div3" class="col-12">
													<div class="form-group">
														<label>Airplane Number</label>
														<f:select path="manageAirplaneVO.id" class="form-control">
															<!-- <option selected="selected" disabled="disabled">Select
																Airplane Name</option> -->
															<c:forEach items="${airplaneList}" var="i">
																<f:option value="${i.id}">${i.airplaneNumber}</f:option>
															</c:forEach>
														</f:select>
													</div>
												</div>
												
												<!-- <div id="div5" class="col-6">
												<div class="form-group">
														<label>Pricing</label>
														<input id="pricing" name="pricing" type="text" class="form-control" value="">
													</div>
													</div>
													 -->
												<div id="div1" class="col-6">

													<hr>
													<div class="form-group">
														<center>
															<label> FROM </label>
														</center>
													</div>

													<div class="form-group">
														<label>City</label>
														<f:select path="manageReturnFromCityVO.id" id="newCityId" class="form-control">
															<!-- <option selected="selected" disabled="disabled">Select
																City Name</option> -->
															<c:forEach items="${cityList}" var="i">
																<f:option value="${i.id}">${i.cityName}</f:option>
															</c:forEach>
														</f:select>
													</div>

													<div class="form-group">
														<label>Airport</label>
														<f:select path="manageReturnFromAirportVO.id"
															class="form-control">
															<!-- <option selected="selected" disabled="disabled">Select
																Airport Name</option> -->
															<c:forEach items="${airportList}" var="i">
																<f:option value="${i.id}">${i.airportName}</f:option>
															</c:forEach>
														</f:select>
													</div>

													<div class="form-group">
														<label>Departure Time</label>
														<f:input path="returnDepartureTime" class="form-control"
															type="time" id="example-time-input"
															style="user-select: auto;" />
													</div>
												</div>

												<div id="div2" class="col-6">
													<hr>
													<div class="form-group text-center">
															<label>TO</label>
													</div>
													<div class="form-group">
														<label>City</label>
														<f:select path="manageReturnToCityVO.id" class="form-control" id="RoundTripToCity">
															<!-- <option selected="selected" disabled="disabled">Select
																City Name</option> -->
															<c:forEach items="${cityList}" var="i">
																<f:option value="${i.id}">${i.cityName}</f:option>
															</c:forEach>
														</f:select>
													</div>

													<div class="form-group">
														<label>Airport</label>
														<f:select path="manageReturnToAirportVO.id" class="form-control">
															<!-- <option selected="selected" disabled="disabled">Select
																Airport Name</option> -->
															<c:forEach items="${airportList}" var="i">
																<f:option value="${i.id}">${i.airportName}</f:option>
															</c:forEach>
														</f:select>
													</div>

													<div class="form-group">
														<label>Arrival Time</label>
														<f:input path="returnArrivalTime" class="form-control"
															type="time" id="example-time-input"
															style="user-select: auto;" />
													</div>
												</div>
												
												<div class="col-12">
													<div class="form-group row">
														<label class="col-md-1 control-label">Days</label>
														<div class="col-md-11 row">
															<div class="checkbox col-3">
																<div class="custom-control custom-checkbox">
																	<input type="checkbox" name="days" value="Sunday"
																		class="custom-control-input" id="customCheck1"
																		data-parsley-multiple="groups"
																		data-parsley-mincheck="1"> <label
																		class="custom-control-label" for="customCheck1">Sunday</label>
																</div>
															</div>
															<div class="checkbox col-3">
																<div class="custom-control custom-checkbox">
																	<input type="checkbox" name="days" value="Monday"
																		class="custom-control-input" id="customCheck2"
																		data-parsley-multiple="groups"
																		data-parsley-mincheck="1"> <label
																		class="custom-control-label" for="customCheck2">Monday</label>
																</div>
															</div>
															<div class="checkbox col-3">
																<div class="custom-control custom-checkbox">
																	<input type="checkbox" name="days" value="Tuesday"
																		class="custom-control-input" id="customCheck3"
																		data-parsley-multiple="groups"
																		data-parsley-mincheck="1"> <label
																		class="custom-control-label" for="customCheck3">Tuesday</label>
																</div>
															</div>

															<div class="checkbox col-3">
																<div class="custom-control custom-checkbox">
																	<input type="checkbox" name="days" value="Wednesday"
																		class="custom-control-input" id="customCheck4"
																		data-parsley-multiple="groups"
																		data-parsley-mincheck="1"> <label
																		class="custom-control-label" for="customCheck4">Wednesday</label>
																</div>
															</div>
															<div class="checkbox col-3">
																<div class="custom-control custom-checkbox">
																	<input type="checkbox" name="days" value="Thursday"
																		class="custom-control-input" id="customCheck5"
																		data-parsley-multiple="groups"
																		data-parsley-mincheck="1"> <label
																		class="custom-control-label" for="customCheck5">Thursday</label>
																</div>
															</div>
															<div class="checkbox col-3">
																<div class="custom-control custom-checkbox">
																	<input type="checkbox" name="days" value="Friday"
																		class="custom-control-input" id="customCheck6"
																		data-parsley-multiple="groups"
																		data-parsley-mincheck="1"> <label
																		class="custom-control-label" for="customCheck6">Friday</label>
																</div>
															</div>
															<div class="checkbox col-3">
																<div class="custom-control custom-checkbox">
																	<input type="checkbox" name="days" value="Saturday"
																		class="custom-control-input" id="customCheck7"
																		data-parsley-multiple="groups"
																		data-parsley-mincheck="1"> <label
																		class="custom-control-label" for="customCheck7">Saturday</label>
																</div>
															</div>
														</div>
													</div>
												</div>
						
												<div id="div4" class="col-6">
												<div class="form-group">
														<label>Pricing</label>
														<f:input path="pricing" id="pricing" name="pricing" type="text" class="form-control" value=""/>
													</div>
													</div>
													
	                                          	<div class="col-12">
													<div class="form-group">
														<button type="submit"
															class="btn btn-primary waves-effect waves-light">Add</button>
													</div>
												</div>

											</div>
										</f:form>
									</div>
								</div>
							</div>
						</div>
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
	<!-- Parsley js -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>\adminResources\js\custom\addSchedule.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('form').parsley();
		});
	</script>
	<!-- App js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>
</body>
</html>