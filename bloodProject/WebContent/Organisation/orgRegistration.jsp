<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>

<html lang="en">

<head>

<title>Organisation Registration</title>
<!-- BEGIN META -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="your,keywords">
<meta name="description" content="Short explanation about this website">
<!-- END META -->

<!-- BEGIN STYLESHEETS -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900'
	rel='stylesheet' type='text/css' />
<link type="text/css" rel="stylesheet"
	href="css/bootstrap.css?1422823238" />

<link type="text/css" rel="stylesheet"
	href="css/materialadmin.css?1422823243" />

<link type="text/css" rel="stylesheet"
	href="css/font-awesome.min.css?1422823239" />

<link type="text/css" rel="stylesheet"
	href="css/material-design-iconic-font.min.css?1422823240" />


<!-- END STYLESHEETS -->


<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5shiv.js?1422823601"></script>
	<script type="text/javascript" src="js/respond.min.js?1422823601"></script>
    <![endif]-->




<script>
	function load()
		{
			/* alert("Hello"); */
			var stateID=document.getElementById("stateId");
			var xmlhttp;
			
			xmlhttp=new XMLHttpRequest();
			removeAllState();
			
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4) 
				{
					var jsonObj = JSON.parse(xmlhttp.responseText);
					
					for(i=0 ; i<jsonObj.length ; i++)
					{
						var createOption=document.createElement("option");
						
						createOption.value=jsonObj[i].CityID;
						createOption.text=jsonObj[i].CityName;
						
						document.regorg.cityName.options.add(createOption);
						
					}
				}
			}
			
			xmlhttp.open("get","${pageContext.request.contextPath}/EventController?flag=loadCity&stateID="+stateID.value,true);
			xmlhttp.send();
			/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */

			/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
				0: request not initialized
				1: server connection established
				2: request received
				3: processing request
				4: request finished and response is ready */
		}
	function removeAllState()
	{
		
		var removeState=document.regorg.cityName.options.length;
		for(i=removeState ; i>0 ; i-- )
		{
			document.regorg.cityName.remove(i);
		}
	}

	
	</script>



</head>






<body class="menubar-hoverable header-fixed ">
	<!-- BEGIN HEADER-->
	<%-- <jsp:include page="header.jsp"></jsp:include> --%>
	<!-- END HEADER-->

	<!-- BEGIN BASE-->
	<div id="base">
		<!-- BEGIN OFFCANVAS LEFT -->
		<div class="offcanvas"></div>
		<!--end .offcanvas-->
		<!-- END OFFCANVAS LEFT -->

		<!-- BEGIN CONTENT-->
		<div id="content">
			<section>
			<div class="section-header">
				<ol class="breadcrumb">

				</ol>

			</div>
			<div class="section-body contain-lg">

				<!-- BEGIN BASIC VALIDATION -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="text-primary">Organisation<br>Registration</h1>
					</div>
					<!--end .col -->
					<div class="col-lg-3 col-md-4"></div>
					<!--end .col -->
					<div class="col-lg-offset-1 col-md-8">
						<form class="form form-validate floating-label" name="regorg"
							action="<%=request.getContextPath()%>/RegOrgController"
							method="post">
							<div class="card">
								<div class="card-body">
								
									<div class="form-group">
										<input type="text" class="form-control" id="orgName"
											name="orgName"> <label for="orgName">Organisation Name</label>
									</div>
									
									<div class="form-group">
										<input type="email" class="form-control" id="userName"
											name="userName"> <label for="userName">Username(email)</label>
									</div>
									
									<div class="form-group">
										<input type="password" class="form-control" id="pwd"
											name="password"> <label for="pwd">Password</label>
									</div>

									<div class="form-group">
										<select class="form-control" id="stateId" name="stateName">

											<c:forEach items="${sessionScope.stateList}" var="s">
												<option value="${s.stateId}">${s.stateName}</option>
											</c:forEach>
										</select> <label for="stateName">State Name</label>
									</div>
									
									<div class="form-group">
										<select class="form-control" id="cityId" name="cityName">

											<c:forEach items="${sessionScope.cityList}" var="c">
												<option value="${c.cityId}">${c.cityName}</option>
											</c:forEach>
										</select> <label for="cityName">City Name</label>
									</div>
									
									<div class="form-group">
										<input type="text" class="form-control" id="address"
											name="address"> <label for="address">Address</label>
									</div>
									
									<div class="form-group">
										<input type="text" class="form-control" id="contact"
											name="contact"> <label for="contact">Contact Number</label>
									</div>
									
									<div class="form-group">
										<input type="text" class="form-control" id="email"
											name="email"> <label for="email">Email</label>
									</div>
									
									<div class="form-group">
										<input type="text" class="form-control" id="latitude"
											name="latitude" > <label for="latitude">Latitude</label>
									</div>
									
									<div class="form-group">
										<input type="text" class="form-control" id="longitude"
											name="longitude"> <label for="longitude">Longitude</label>
									</div>
									
									
									<div class="form-group">
										<input type="hidden" class="form-control" name="flag"
											value="insert">
									</div>
								</div>
								<!--end .card-body -->
								<div class="card-actionbar">
									<div class="card-actionbar-row">
										<button type="submit"
											class="btn btn-flat btn-primary ink-reaction">Submit</button>
									</div>
								</div>
								<!--end .card-actionbar -->
							</div>
							<!--end .card -->
							<!-- <em class="text-caption">St</em> -->
						</form>
					</div>
					<!--end .col -->
				</div>
				<!--end .row -->
				<!-- END BASIC VALIDATION -->

				<!-- BEGIN ADVANCED VALIDATION -->
				<!--end .row -->
				<!-- END ADVANCED VALIDATION -->

			</div>
			<!--end .section-body --> </section>
		</div>
		<!--end #content-->
		<!-- END CONTENT -->

		<!-- BEGIN MENUBAR-->
		<%-- <jsp:include page="orgMenu.jsp"></jsp:include> --%>
		<!-- END MENUBAR -->

		<!-- BEGIN OFFCANVAS RIGHT -->
		<div class="offcanvas">



			<!-- BEGIN OFFCANVAS SEARCH -->
			<div id="offcanvas-search" class="offcanvas-pane width-8">
				<div class="offcanvas-head">
					<header class="text-primary">Search</header>
					<div class="offcanvas-tools">
						<a class="btn btn-icon-toggle btn-default-light pull-right"
							data-dismiss="offcanvas"> <i class="md md-close"></i>
						</a>
					</div>
				</div>

				<div class="offcanvas-body no-padding">
					<ul class="list ">
						<li class="tile divider-full-bleed">
							<div class="tile-content">
								<div class="tile-text">
									<strong>A</strong>
								</div>
							</div>
						</li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar4.jpg?1422538625" alt="" />
								</div>
								<div class="tile-text">
									Alex Nelson <small>123-123-3210</small>
								</div>
						</a></li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar9.jpg?1422538626" alt="" />
								</div>
								<div class="tile-text">
									Ann Laurens <small>123-123-3210</small>
								</div>
						</a></li>
						<li class="tile divider-full-bleed">
							<div class="tile-content">
								<div class="tile-text">
									<strong>J</strong>
								</div>
							</div>
						</li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar2.jpg?1422538624" alt="" />
								</div>
								<div class="tile-text">
									Jessica Cruise <small>123-123-3210</small>
								</div>
						</a></li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar8.jpg?1422538626" alt="" />
								</div>
								<div class="tile-text">
									Jim Peters <small>123-123-3210</small>
								</div>
						</a></li>
						<li class="tile divider-full-bleed">
							<div class="tile-content">
								<div class="tile-text">
									<strong>M</strong>
								</div>
							</div>
						</li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar5.jpg?1422538625" alt="" />
								</div>
								<div class="tile-text">
									Mabel Logan <small>123-123-3210</small>
								</div>
						</a></li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar11.jpg?1422538623" alt="" />
								</div>
								<div class="tile-text">
									Mary Peterson <small>123-123-3210</small>
								</div>
						</a></li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar3.jpg?1422538624" alt="" />
								</div>
								<div class="tile-text">
									Mike Alba <small>123-123-3210</small>
								</div>
						</a></li>
						<li class="tile divider-full-bleed">
							<div class="tile-content">
								<div class="tile-text">
									<strong>N</strong>
								</div>
							</div>
						</li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar6.jpg?1422538626" alt="" />
								</div>
								<div class="tile-text">
									Nathan Peterson <small>123-123-3210</small>
								</div>
						</a></li>
						<li class="tile divider-full-bleed">
							<div class="tile-content">
								<div class="tile-text">
									<strong>P</strong>
								</div>
							</div>
						</li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar7.jpg?1422538626" alt="" />
								</div>
								<div class="tile-text">
									Philip Ericsson <small>123-123-3210</small>
								</div>
						</a></li>
						<li class="tile divider-full-bleed">
							<div class="tile-content">
								<div class="tile-text">
									<strong>S</strong>
								</div>
							</div>
						</li>
						<li class="tile"><a class="tile-content ink-reaction"
							href="#offcanvas-chat" data-toggle="offcanvas"
							data-backdrop="false">
								<div class="tile-icon">
									<img src="image/avatar10.jpg?1422538623" alt="" />
								</div>
								<div class="tile-text">
									Samuel Parsons <small>123-123-3210</small>
								</div>
						</a></li>
					</ul>
				</div>
				<!--end .offcanvas-body -->
			</div>
			<!--end .offcanvas-pane -->
			<!-- END OFFCANVAS SEARCH -->




			<!-- BEGIN OFFCANVAS CHAT -->
			<div id="offcanvas-chat"
				class="offcanvas-pane style-default-light width-12">
				<div class="offcanvas-head style-default-bright">
					<header class="text-primary">Chat with Ann Laurens</header>
					<div class="offcanvas-tools">
						<a class="btn btn-icon-toggle btn-default-light pull-right"
							data-dismiss="offcanvas"> <i class="md md-close"></i>
						</a> <a class="btn btn-icon-toggle btn-default-light pull-right"
							href="#offcanvas-search" data-toggle="offcanvas"
							data-backdrop="false"> <i class="md md-arrow-back"></i>
						</a>
					</div>
					<form class="form">
						<div class="form-group floating-label">
							<textarea name="sidebarChatMessage" id="sidebarChatMessage"
								class="form-control autosize" rows="1"></textarea>
							<label for="sidebarChatMessage">Leave a message</label>
						</div>
					</form>
				</div>

				<div class="offcanvas-body">
					<ul class="list-chats">
						<li>
							<div class="chat">
								<div class="chat-avatar">
									<img class="img-circle" src="image/avatar1.jpg?1422538623"
										alt="" />
								</div>
								<div class="chat-body">
									Yes, it is indeed very beautiful. <small>10:03 pm</small>
								</div>
							</div>
							<!--end .chat -->
						</li>
						<li class="chat-left">
							<div class="chat">
								<div class="chat-avatar">
									<img class="img-circle" src="image/avatar9.jpg?1422538626"
										alt="" />
								</div>
								<div class="chat-body">
									Did you see the changes? <small>10:02 pm</small>
								</div>
							</div>
							<!--end .chat -->
						</li>
						<li>
							<div class="chat">
								<div class="chat-avatar">
									<img class="img-circle" src="image/avatar1.jpg?1422538623"
										alt="" />
								</div>
								<div class="chat-body">
									I just arrived at work, it was quite busy. <small>06:44pm</small>
								</div>
								<div class="chat-body">
									I will take look in a minute. <small>06:45pm</small>
								</div>
							</div>
							<!--end .chat -->
						</li>
						<li class="chat-left">
							<div class="chat">
								<div class="chat-avatar">
									<img class="img-circle" src="image/avatar9.jpg?1422538626"
										alt="" />
								</div>
								<div class="chat-body">The colors are much better now.</div>
								<div class="chat-body">
									The colors are brighter than before. I have already sent an
									example. This will make it look sharper. <small>Mon</small>
								</div>
							</div>
							<!--end .chat -->
						</li>
						<li>
							<div class="chat">
								<div class="chat-avatar">
									<img class="img-circle" src="image/avatar1.jpg?1422538623"
										alt="" />
								</div>
								<div class="chat-body">
									Are the colors of the logo already adapted? <small>Last
										week</small>
								</div>
							</div>
							<!--end .chat -->
						</li>
					</ul>
				</div>
				<!--end .offcanvas-body -->
			</div>
			<!--end .offcanvas-pane -->
			<!-- END OFFCANVAS CHAT -->

		</div>
		<!--end .offcanvas-->
		<!-- END OFFCANVAS RIGHT -->

	</div>
	<!--end #base-->
	<!-- END BASE -->


	<!-- BEGIN JAVASCRIPT -->

	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/spin.min.js"></script>
	<script src="js/jquery.autosize.min.js"></script>
	<script src="js/jquery.nanoscroller.min.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/additional-methods.min.js"></script>
	<script src="js/63d0445130d69b2868a8d28c93309746.js"></script>
	<script src="js/Demo.js"></script>


	<!-- END JAVASCRIPT -->



</body>
</html>