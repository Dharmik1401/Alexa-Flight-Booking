<div class="left side-menu">
	<button type="button"
		class="button-menu-mobile button-menu-mobile-topbar open-left waves-effect">
		<i class="ion-close"></i>
	</button>
	<!-- LOGO -->
	<div class="topbar-left">
		<div class="text-center">
			<a href="index.html" class="logo"><img src="<%=request.getContextPath()%>/adminResources/image/alexa_logo.png" height="24" alt="logo">
			<!-- <i class="mdi mdi-assistant"></i> -->
				FLIGHT BOOKING</a>
			<!-- <a href="index.html" class="logo"><img src="<%=request.getContextPath()%>/adminResources/image/logo.png" height="24" alt="logo"></a> -->
		</div>
	</div>
	<div class="sidebar-inner slimscrollleft">
		<div id="sidebar-menu">
			<ul>
				<li class="menu-title"></li>
				<li><a href="index" class="waves-effect"><i
						class="mdi mdi-airplay"></i><span>Home<span
							class="badge badge-pill badge-primary float-right"></span></span></a></li>
				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect"><i class="mdi mdi-layers"></i><span>Manage
							City</span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addCity">Add City</a></li>
						<li><a href="viewCity">View City</a></li>
					</ul></li>

				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect"><i class="mdi mdi-checkbox-multiple-blank"></i><span>Manage
							Airport</span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addAirport">Add Airport</a></li>
						<li><a href="viewAirport">View Airport</a></li>
					</ul></li>

				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect"><i class="mdi mdi-airplane-landing"></i><span>Manage
							Airlines </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addAirline">Add Airline</a></li>
						<li><a href="viewAirline">View Airline</a></li>
					</ul></li>

				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect"><i class="ion-plane"></i><span>Manage
							PlaneType </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addAirplaneType">Add AirplaneType</a></li>
						<li><a href="viewAirplaneType">View AirplaneType</a></li>
					</ul></li>

				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect"><i class="mdi mdi-airplane-takeoff"></i><span>Manage
							Airplane </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addAirplane">Add Airplane</a></li>
						<li><a href="viewAirplane">View Airplane</a></li>
					</ul></li>

				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect"><i class="mdi mdi-calendar"></i><span>Manage
							Schedule</span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addSchedule">Add Schedule</a></li>
						<li><a href="viewSchedule">View Schedule</a></li>
					</ul></li>
					
					<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect"><i class="mdi mdi-calendar"></i><span>Manage
							Booking</span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="viewBooking">View Booking</a></li>
					</ul></li>
					
					
					<li><a href="/logout" class="waves-effect"><i
						class="mdi mdi-logout"></i><span>Logout<span
							class="badge badge-pill badge-primary float-right"></span></span></a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- end sidebarinner -->
</div>
