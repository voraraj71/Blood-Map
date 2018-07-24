<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">



	<head>
	
	<base href="${pageContext.request.contextPath }/Organisation/">
		<title>BloodMap</title>
		
		<!-- BEGIN META -->
		<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="keywords" content="your,keywords">
		<meta name="description" content="Short explanation about this website">
		<!-- END META -->

		<!-- BEGIN STYLESHEETS -->
				<link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900' rel='stylesheet' type='text/css'/>
			<link type="text/css" rel="stylesheet" href="css/bootstrap.css?1422823238" />

			<link type="text/css" rel="stylesheet" href="css/materialadmin.css?1422823243" />

			<link type="text/css" rel="stylesheet" href="css/font-awesome.min.css?1422823239" />

			<link type="text/css" rel="stylesheet" href="css/material-design-iconic-font.min.css?1422823240" />

			<link type="text/css" rel="stylesheet" href="css/rickshaw.css?1422823372" />

			<link type="text/css" rel="stylesheet" href="css/morris.core.css?1422823370" />

		<!-- END STYLESHEETS -->


		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5shiv.js?1422823601"></script>
	<script type="text/javascript" src="js/respond.min.js?1422823601"></script>
    <![endif]-->
	</head>

	
				
				
	

	<body class="menubar-hoverable header-fixed ">
		<!-- BEGIN HEADER-->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- END HEADER-->

	<!-- BEGIN BASE-->
	<div id="base">
		<!-- BEGIN OFFCANVAS LEFT -->
		<div class="offcanvas">
			 		</div><!--end .offcanvas-->
		<!-- END OFFCANVAS LEFT -->

		<!-- BEGIN CONTENT-->
		<div id="content">
			
	<section>
<!-- 		<div class="section-body">
			<div class="row">
				
				BEGIN ALERT - REVENUE
				<div class="col-md-3 col-sm-6">
					<div class="card">
						<div class="card-body no-padding">
							<div class="alert alert-callout alert-info no-margin">
								<strong class="pull-right text-success text-lg">0,38% <i class="md md-trending-up"></i></strong>
								<strong class="text-xl">$ 32,829</strong><br/>
								<span class="opacity-50">Revenue</span>
								<div class="stick-bottom-left-right">
									<div class="height-2 sparkline-revenue" data-line-color="#bdc1c1"></div>
								</div>
							</div>
						</div>end .card-body
					</div>end .card
				</div> --><!--end .col
				END ALERT - REVENUE
				
				BEGIN ALERT - VISITS
				<div class="col-md-3 col-sm-6">
					<div class="card">
						<div class="card-body no-padding">
							<div class="alert alert-callout alert-warning no-margin">
								<strong class="pull-right text-warning text-lg">0,01% <i class="md md-swap-vert"></i></strong>
								<strong class="text-xl">432,901</strong><br/>
								<span class="opacity-50">Visits</span>
								<div class="stick-bottom-right">
									<div class="height-1 sparkline-visits" data-bar-color="#e5e6e6"></div>
								</div>
							</div>
						</div>end .card-body
					</div>end .card
				</div>end .col
				END ALERT - VISITS
				
				BEGIN ALERT - BOUNCE RATES
				<div class="col-md-3 col-sm-6">
					<div class="card">
						<div class="card-body no-padding">
							<div class="alert alert-callout alert-danger no-margin">
								<strong class="pull-right text-danger text-lg">0,18% <i class="md md-trending-down"></i></strong>
								<strong class="text-xl">42.90%</strong><br/>
								<span class="opacity-50">Bounce rate</span>
								<div class="stick-bottom-left-right">
									<div class="progress progress-hairline no-margin">
										<div class="progress-bar progress-bar-danger" style="width:43%"></div>
									</div>
								</div>
							</div>
						</div>end .card-body
					</div>end .card
				</div>end .col
				END ALERT - BOUNCE RATES
				
				BEGIN ALERT - TIME ON SITE
				<div class="col-md-3 col-sm-6">
					<div class="card">
						<div class="card-body no-padding">
							<div class="alert alert-callout alert-success no-margin">
								<h1 class="pull-right text-success"><i class="md md-timer"></i></h1>
								<strong class="text-xl">54 sec.</strong><br/>
								<span class="opacity-50">Avg. time on site</span>
							</div>
						</div>end .card-body
					</div>end .card
				</div>end .col
				END ALERT - TIME ON SITE
				
			</div>end .row
			<div class="row">
				
				BEGIN SITE ACTIVITY
				<div class="col-md-9">
					<div class="card ">
						<div class="row">
							<div class="col-md-8">
								<div class="card-head">
									<header>Site activity</header>
								</div>end .card-head
								<div class="card-body height-8">
									<div id="flot-visitors-legend" class="flot-legend-horizontal stick-top-right no-y-padding"></div>
									<div id="flot-visitors" class="flot height-7" data-title="Activity entry" data-color="#7dd8d2,#0aa89e"></div>
								</div>end .card-body
							</div>end .col
							<div class="col-md-4">
								<div class="card-head">
									<header>Today's stats</header>
								</div>
								<div class="card-body height-8">
									<strong>214</strong> members
									<span class="pull-right text-success text-sm">0,18% <i class="md md-trending-up"></i></span>
									<div class="progress progress-hairline">
										<div class="progress-bar progress-bar-primary-dark" style="width:43%"></div>
									</div>
									756 pageviews
									<span class="pull-right text-success text-sm">0,68% <i class="md md-trending-up"></i></span>
									<div class="progress progress-hairline">
										<div class="progress-bar progress-bar-primary-dark" style="width:11%"></div>
									</div>
									291 bounce rates
									<span class="pull-right text-danger text-sm">21,08% <i class="md md-trending-down"></i></span>
									<div class="progress progress-hairline">
										<div class="progress-bar progress-bar-danger" style="width:93%"></div>
									</div>
									32,301 visits
									<span class="pull-right text-success text-sm">0,18% <i class="md md-trending-up"></i></span>
									<div class="progress progress-hairline">
										<div class="progress-bar progress-bar-primary-dark" style="width:63%"></div>
									</div>
									132 pages
									<span class="pull-right text-success text-sm">0,18% <i class="md md-trending-up"></i></span>
									<div class="progress progress-hairline">
										<div class="progress-bar progress-bar-primary-dark" style="width:47%"></div>
									</div>
								</div>end .card-body
							</div>end .col
						</div>end .row
					</div>end .card		
				</div>end .col
				END SITE ACTIVITY
				
				BEGIN SERVER STATUS
				<div class="col-md-3">
					<div class="card">
						<div class="card-head">
							<header class="text-primary">Server status</header>
						</div>end .card-head
						<div class="card-body height-4">
							<div class="pull-right text-center">
								<em class="text-primary">Temperature</em>
								<br/>
								<div id="serverStatusKnob" class="knob knob-shadow knob-primary knob-body-track size-2">
									<input type="text" class="dial" data-min="0" data-max="100" data-thickness=".09" value="50" data-readOnly=true>
								</div>
							</div>
						</div>end .card-body
						<div class="card-body height-4 no-padding">
							<div class="stick-bottom-left-right">
								<div id="rickshawGraph" class="height-4" data-color1="#0aa89e" data-color2="rgba(79, 89, 89, 0.2)"></div>
							</div>
						</div>end .card-body
					</div>end .card		
				</div>end .col
				END SERVER STATUS
				
			</div>end .row
			<div class="row">
				
				BEGIN TODOS
				<div class="col-md-3">
					<div class="card ">
						<div class="card-head">
							<header>Todo's</header>
							<div class="tools">
								<a class="btn btn-icon-toggle btn-close"><i class="md md-close"></i></a>
							</div>
						</div>end .card-head
						<div class="card-body no-padding height-9 scroll">
							<ul class="list" data-sortable="true">
								<li class="tile">
									<div class="checkbox checkbox-styled tile-text">
										<label>
											<input type="checkbox" checked>
											<span>Call clients for follow-up</span>
										</label>
									</div>
									<a class="btn btn-flat ink-reaction btn-default">
										<i class="md md-delete"></i>
									</a>
								</li>
								<li class="tile">
									<div class="checkbox checkbox-styled tile-text">
										<label>
											<input type="checkbox">
											<span>
												Schedule meeting
												<small>opportunity for new customers</small>
											</span>
										</label>
									</div>
									<a class="btn btn-flat ink-reaction btn-default">
										<i class="md md-delete"></i>
									</a>
								</li>
								<li class="tile">
									<div class="checkbox checkbox-styled tile-text">
										<label>
											<input type="checkbox">
											<span>
												Upload files to server
												<small>The files must be shared with all members of the board</small>
											</span>
										</label>
									</div>
									<a class="btn btn-flat ink-reaction btn-default">
										<i class="md md-delete"></i>
									</a>
								</li>
								<li class="tile">
									<div class="checkbox checkbox-styled tile-text">
										<label>
											<input type="checkbox">
											<span>Forward important tasks</span>
										</label>
									</div>
									<a class="btn btn-flat ink-reaction btn-default">
										<i class="md md-delete"></i>
									</a>
								</li>
								<li class="tile">
									<div class="checkbox checkbox-styled tile-text">
										<label>
											<input type="checkbox">
											<span>Forward important tasks</span>
										</label>
									</div>
									<a class="btn btn-flat ink-reaction btn-default">
										<i class="md md-delete"></i>
									</a>
								</li>
								<li class="tile">
									<div class="checkbox checkbox-styled tile-text">
										<label>
											<input type="checkbox">
											<span>Forward important tasks</span>
										</label>
									</div>
									<a class="btn btn-flat ink-reaction btn-default">
										<i class="md md-delete"></i>
									</a>
								</li>
							</ul>
						</div>end .card-body
					</div>end .card
				</div>end .col
				END TODOS
				
				BEGIN REGISTRATION HISTORY
				<div class="col-md-6">
					<div class="card">
						<div class="card-head">
							<header>Registration history</header>
							<div class="tools">
								<a class="btn btn-icon-toggle btn-refresh"><i class="md md-refresh"></i></a>
								<a class="btn btn-icon-toggle btn-collapse"><i class="fa fa-angle-down"></i></a>
								<a class="btn btn-icon-toggle btn-close"><i class="md md-close"></i></a>
							</div>
						</div>end .card-head
						<div class="card-body no-padding height-9">
							<div class="row">
								<div class="col-sm-6 hidden-xs">
									<div class="force-padding text-sm text-default-light">
										<p>
											<i class="md md-mode-comment text-primary-light"></i>
											The registrations are measured from the time that the redesign was fully implemented and after the first e-mailing.
										</p>
									</div>
								</div>end .col
								<div class="col-sm-6">
									<div class="force-padding pull-right text-default-light">
										<h2 class="no-margin text-primary-dark"><span class="text-xxl">66.05%</span></h2>
										<i class="fa fa-caret-up text-success fa-fw"></i> more registrations
									</div>
								</div>end .col
							</div>end .row
							<div class="stick-bottom-left-right force-padding">
								<div id="flot-registrations" class="flot height-5" data-title="Registration history" data-color="#0aa89e"></div>
							</div>
						</div>end .card-body
					</div>end .card
				</div>end .col
				END REGISTRATION HISTORY
				
				BEGIN NEW REGISTRATIONS
				<div class="col-md-3">
					<div class="card">
						<div class="card-head">
							<header>New registrations</header>
							<div class="tools hidden-md">
								<a class="btn btn-icon-toggle btn-close"><i class="md md-close"></i></a>
							</div>
						</div>end .card-head
						<div class="card-body no-padding height-9 scroll">
							<ul class="list divider-full-bleed">
								<li class="tile">
									<div class="tile-content">
										<div class="tile-icon">
											<img src="image/avatar9.jpg?1422538626" alt="" />
										</div>
										<div class="tile-text">Ann Laurens</div>
									</div>
									<a class="btn btn-flat ink-reaction">
										<i class="md md-block text-default-light"></i>
									</a>
								</li>
								<li class="tile">
									<div class="tile-content">
										<div class="tile-icon">
											<img src="image/avatar4.jpg?1422538625" alt="" />
										</div>
										<div class="tile-text">Alex Nelson</div>
									</div>
									<a class="btn btn-flat ink-reaction">
										<i class="md md-block text-default-light"></i>
									</a>
								</li>
								<li class="tile">
									<div class="tile-content">
										<div class="tile-icon">
											<img src="image/avatar11.jpg?1422538623" alt="" />
										</div>
										<div class="tile-text">Mary Peterson</div>
									</div>
									<a class="btn btn-flat ink-reaction">
										<i class="md md-block text-default-light"></i>
									</a>
								</li>
								<li class="tile">
									<div class="tile-content">
										<div class="tile-icon">
											<img src="image/avatar7.jpg?1422538626" alt="" />
										</div>
										<div class="tile-text">Philip Ericsson</div>
									</div>
									<a class="btn btn-flat ink-reaction">
										<i class="md md-block text-default-light"></i>
									</a>
								</li>
								<li class="tile">
									<div class="tile-content">
										<div class="tile-icon">
											<img src="image/avatar8.jpg?1422538626" alt="" />
										</div>
										<div class="tile-text">Jim Peters</div>
									</div>
									<a class="btn btn-flat ink-reaction">
										<i class="md md-block text-default-light"></i>
									</a>
								</li>
								<li class="tile">
									<div class="tile-content">
										<div class="tile-icon">
											<img src="image/avatar2.jpg?1422538624" alt="" />
										</div>
										<div class="tile-text">Jessica Cruise</div>
									</div>
									<a class="btn btn-flat ink-reaction">
										<i class="md md-block text-default-light"></i>
									</a>
								</li>
							</ul>
						</div>end .card-body
					</div>end .card
				</div>end .col
				END NEW REGISTRATIONS
				
			</div>end .row
		</div>end .section-body -->
	</section>

		</div><!--end #content-->		
		<!-- END CONTENT -->

		<!-- BEGIN MENUBAR-->
		<jsp:include page="orgMenu.jsp"></jsp:include>
				<!-- END MENUBAR -->

		<!-- BEGIN OFFCANVAS RIGHT -->
		<div class="offcanvas">
			


<!-- BEGIN OFFCANVAS SEARCH -->
<div id="offcanvas-search" class="offcanvas-pane width-8">
	<div class="offcanvas-head">
		<header class="text-primary">Search</header>
		<div class="offcanvas-tools">
			<a class="btn btn-icon-toggle btn-default-light pull-right" data-dismiss="offcanvas">
				<i class="md md-close"></i>
			</a>
		</div>
	</div>

	<div class="offcanvas-body no-padding">
		<ul class="list ">
			<li class="tile divider-full-bleed">
				<div class="tile-content">
					<div class="tile-text"><strong>A</strong></div>
				</div>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar4.jpg?1422538625" alt="" />
					</div>
					<div class="tile-text">
						Alex Nelson
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar9.jpg?1422538626" alt="" />
					</div>
					<div class="tile-text">
						Ann Laurens
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
			<li class="tile divider-full-bleed">
				<div class="tile-content">
					<div class="tile-text"><strong>J</strong></div>
				</div>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar2.jpg?1422538624" alt="" />
					</div>
					<div class="tile-text">
						Jessica Cruise
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar8.jpg?1422538626" alt="" />
					</div>
					<div class="tile-text">
						Jim Peters
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
			<li class="tile divider-full-bleed">
				<div class="tile-content">
					<div class="tile-text"><strong>M</strong></div>
				</div>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar5.jpg?1422538625" alt="" />
					</div>
					<div class="tile-text">
						Mabel Logan
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar11.jpg?1422538623" alt="" />
					</div>
					<div class="tile-text">
						Mary Peterson
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar3.jpg?1422538624" alt="" />
					</div>
					<div class="tile-text">
						Mike Alba
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
			<li class="tile divider-full-bleed">
				<div class="tile-content">
					<div class="tile-text"><strong>N</strong></div>
				</div>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar6.jpg?1422538626" alt="" />
					</div>
					<div class="tile-text">
						Nathan Peterson
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
			<li class="tile divider-full-bleed">
				<div class="tile-content">
					<div class="tile-text"><strong>P</strong></div>
				</div>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar7.jpg?1422538626" alt="" />
					</div>
					<div class="tile-text">
						Philip Ericsson
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
			<li class="tile divider-full-bleed">
				<div class="tile-content">
					<div class="tile-text"><strong>S</strong></div>
				</div>
			</li>
			<li class="tile">
				<a class="tile-content ink-reaction" href="#offcanvas-chat" data-toggle="offcanvas" data-backdrop="false">
					<div class="tile-icon">
						<img src="image/avatar10.jpg?1422538623" alt="" />
					</div>
					<div class="tile-text">
						Samuel Parsons
						<small>123-123-3210</small>
					</div>
				</a>
			</li>
		</ul>
	</div><!--end .offcanvas-body -->
</div><!--end .offcanvas-pane -->
<!-- END OFFCANVAS SEARCH -->

			


<!-- BEGIN OFFCANVAS CHAT -->
<div id="offcanvas-chat" class="offcanvas-pane style-default-light width-12">
	<div class="offcanvas-head style-default-bright">
		<header class="text-primary">Chat with Ann Laurens</header>
		<div class="offcanvas-tools">
			<a class="btn btn-icon-toggle btn-default-light pull-right" data-dismiss="offcanvas">
				<i class="md md-close"></i>
			</a>
			<a class="btn btn-icon-toggle btn-default-light pull-right" href="#offcanvas-search" data-toggle="offcanvas" data-backdrop="false">
				<i class="md md-arrow-back"></i>
			</a>
		</div>
		<form class="form">
			<div class="form-group floating-label">
				<textarea name="sidebarChatMessage" id="sidebarChatMessage" class="form-control autosize" rows="1"></textarea>
				<label for="sidebarChatMessage">Leave a message</label>
			</div>
		</form>
	</div>

	<div class="offcanvas-body">
		<ul class="list-chats">
			<li>
				<div class="chat">
					<div class="chat-avatar"><img class="img-circle" src="image/avatar1.jpg?1422538623" alt="" /></div>
					<div class="chat-body">
						Yes, it is indeed very beautiful.
						<small>10:03 pm</small>
					</div>
				</div><!--end .chat -->
			</li>
			<li class="chat-left">
				<div class="chat">
					<div class="chat-avatar"><img class="img-circle" src="image/avatar9.jpg?1422538626" alt="" /></div>
					<div class="chat-body">
						Did you see the changes?
						<small>10:02 pm</small>
					</div>
				</div><!--end .chat -->
			</li>
			<li>
				<div class="chat">
					<div class="chat-avatar"><img class="img-circle" src="image/avatar1.jpg?1422538623" alt="" /></div>
					<div class="chat-body">
						I just arrived at work, it was quite busy.
						<small>06:44pm</small>
					</div>
					<div class="chat-body">
						I will take look in a minute.
						<small>06:45pm</small>
					</div>
				</div><!--end .chat -->
			</li>
			<li class="chat-left">
				<div class="chat">
					<div class="chat-avatar"><img class="img-circle" src="image/avatar9.jpg?1422538626" alt="" /></div>
					<div class="chat-body">
						The colors are much better now.
					</div>
					<div class="chat-body">
						The colors are brighter than before.
						I have already sent an example.
						This will make it look sharper.
						<small>Mon</small>
					</div>
				</div><!--end .chat -->
			</li>
			<li>
				<div class="chat">
					<div class="chat-avatar"><img class="img-circle" src="image/avatar1.jpg?1422538623" alt="" /></div>
					<div class="chat-body">
						Are the colors of the logo already adapted?
						<small>Last week</small>
					</div>
				</div><!--end .chat -->
			</li>
		</ul>
	</div><!--end .offcanvas-body -->
</div><!--end .offcanvas-pane -->
<!-- END OFFCANVAS CHAT -->

			 		</div><!--end .offcanvas-->
		<!-- END OFFCANVAS RIGHT -->

	</div><!--end #base-->	
	<!-- END BASE -->


	<!-- BEGIN JAVASCRIPT -->
		
			<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/spin.min.js"></script>
<script src="js/jquery.autosize.min.js"></script>
<script src="js/moment.min.js"></script>
<script src="js/ec2c8835c9f9fbb7b8cd36464b491e73.js"></script>
<script src="js/jquery.knob.min.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/jquery.nanoscroller.min.js"></script>
<script src="js/43ef607ee92d94826432d1d6f09372e1.js"></script>
<script src="js/rickshaw.min.js"></script>
<script src="js/63d0445130d69b2868a8d28c93309746.js"></script>
<script src="js/Demo.js"></script>
<script src="js/DemoDashboard.js"></script>

	
	<!-- END JAVASCRIPT -->

	
	
	</body>
</html>