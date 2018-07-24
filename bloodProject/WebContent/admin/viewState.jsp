<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">



<head>
<title>View State</title>

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


<link type="text/css" rel="stylesheet"
	href="css/jquery.dataTables.css?1422823365" />

<link type="text/css" rel="stylesheet"
	href="css/dataTables.colVis.css?1422823421" />

<link type="text/css" rel="stylesheet"
	href="css/dataTables.tableTools.css?1422823422" />

<!-- END STYLESHEETS -->


<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5shiv.js?1422823601"></script>
	<script type="text/javascript" src="js/respond.min.js?1422823601"></script>
    <![endif]-->
</head>






<body class="menubar-hoverable header-fixed ">
	<!-- BEGIN HEADER-->
		<!-- END HEADER-->
<jsp:include page="header.jsp"></jsp:include>
	<!-- BEGIN BASE-->
	<div id="base">
		<!-- BEGIN OFFCANVAS LEFT -->
		<div class="offcanvas"></div>
		<!--end .offcanvas-->
		<!-- END OFFCANVAS LEFT -->

		<!-- BEGIN CONTENT-->
		<div id="content">
			<section class="style-default-bright">
				<div class="section-body">

					<!-- BEGIN DATATABLE 1 -->
					<div class="row">
						<div class="col-md-8">
							<article class="margin-bottom-xxl"></article>
								
						</div>
						<!--end .col -->
					</div>
					<!--end .row -->
					<div class="row">
						
						<!--end .col -->
						<div class="col-lg-12">
							<div class="table-responsive">
								<table id="datatable1" class="table table-striped table-hover">
									<thead>
										<tr>
											<th>StateID</th>
											<th>State Name</th>
											<th>State Description</th>
											<th>Action</th>
										</tr>
									</thead>
									
									<c:forEach items="${sessionScope.searchList}" var="s">
									
									<tbody>
										<tr class="gradeX">
											<td>${s.stateId}</td>
											<td>${s.stateName}</td>
											<td>${s.stateDescription}</td>
											<td>
											<a href ="<%=request.getContextPath()%>/StateController?flag=edit&id=${s.stateId}">Edit</a>  								
											<a href ="<%=request.getContextPath()%>/StateController?flag=delete&id=${s.stateId}">Delete</a></td>
							</tr>

									</tbody>
									
									</c:forEach>
								
								
								</table>
							</div>
							<!--end .table-responsive -->
						</div>
						<!--end .col -->
					</div>
					<!--end .row -->
					<!-- END DATATABLE 1 -->

					<hr class="ruler-xxl" />

					<!-- BEGIN DATATABLE 2 -->
					<!--end .row -->
					<!-- END DATATABLE 2 -->

				</div>
				<!--end .section-body -->
			</section>
		</div>
		<!--end #content-->
		<!-- END CONTENT -->

		<!-- BEGIN MENUBAR-->
<jsp:include page="menu.jsp"></jsp:include>
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
									<img
										src="http://www.codecovers.eu/assets/img/modules/materialadmin/avatar2.jpg?1422538624"
										alt="" />
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
								</div>assets/
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
	<script src="js/9782537cea5b6dc42cb13bd7821cceca.js"></script>
	<script src="js/jquery.nanoscroller.min.js"></script>
	<script src="js/63d0445130d69b2868a8d28c93309746.js"></script>
	<script src="js/Demo.js"></script>
	<script src="js/DemoTableDynamic.js"></script>


	<!-- END JAVASCRIPT -->



</body>
</html>