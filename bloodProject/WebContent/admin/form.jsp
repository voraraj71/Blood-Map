<!DOCTYPE html>
<html lang="en">



	<head>
		<title>Material Admin - Form layouts</title>
		
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
		<div class="section-header ">
				<ol class="breadcrumb">
									<li class="active">Form layouts</li>
						</ol>

		</div>
		<div class="section-body contain-lg">

			<!-- BEGIN VERTICAL FORM -->
			<div class="row">
				<div class="col-lg-12">
					<h1 class="text-primary">Vertical layouts</h1>
				</div><!--end .col -->
				<div class="col-lg-3 col-md-4">
					<article class="margin-bottom-xxl">
						<p class="lead">
							Material Admin uses by default a vertical form layout.
							In a vertical form the label is placed above the input field.
						</p>
						<p>
							When the field is focused, there will be a thicker line drawn beneath it.
							The label in this example is always visible.
						</p>
					</article>
				</div><!--end .col -->
				<div class="col-lg-offset-1 col-md-8">
										<form class="form">
						<div class="card">
							<div class="card-head style-primary">
								<header>Create an account</header>
							</div>
							<div class="card-body">
								<div>
									<label class="radio-inline radio-styled">
										<input type="radio" name="gendre"><span>Male</span>
									</label>
									<label class="radio-inline radio-styled">
										<input type="radio" name="gendre" checked><span>Female</span>
									</label>
								</div>
								<br/>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<input type="text" class="form-control" id="Firstname1">
											<label for="Firstname1">Firstname</label>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<input type="text" class="form-control" id="Lastname1">
											<label for="Lastname1">Lastname</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="Username1">
									<label for="Username1">Username</label>
								</div>
								<div class="form-group">
									<input type="password" class="form-control" id="Password1">
									<label for="Password1">Password</label>
								</div>
								<div class="checkbox checkbox-styled">
									<label>
										<input type="checkbox" value="">
										<span>Send me weekly updates</span>
									</label>
								</div>
							</div><!--end .card-body -->
							<div class="card-actionbar">
								<div class="card-actionbar-row">
									<button type="submit" class="btn btn-flat btn-primary ink-reaction">Create account</button>
								</div>
							</div>
						</div><!--end .card -->
						<em class="text-caption">Vertical layout with static labels</em>
					</form>
				</div><!--end .col -->
			</div><!--end .row -->
			<!-- END VERTICAL FORM -->

			<!-- BEGIN VERTICAL FORM FLOATING LABELS -->
			<div class="row">
				<div class="col-lg-12">
					<h4>Floating label</h4>
				</div><!--end .col -->
				<div class="col-lg-3 col-md-4">
					<article class="margin-bottom-xxl">
						<p>
							The vertical layout can be used in combination with a floating label.
							With floating labels, when the user engages with the input fields, the labels move to float above the field.
						</p>
					</article>
				</div><!--end .col -->
				<div class="col-lg-offset-1 col-md-8">
										<form class="form">
						<div class="card">
							<div class="card-head style-primary">
								<header>Create an account</header>
							</div>
							<div class="card-body floating-label">
								<div>
									<label class="radio-inline radio-styled">
										<input type="radio" name="gendre"><span>Male</span>
									</label>
									<label class="radio-inline radio-styled">
										<input type="radio" name="gendre" checked><span>Female</span>
									</label>
								</div>
								<br/>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<input type="text" class="form-control" id="Firstname2">
											<label for="Firstname2">Firstname</label>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<input type="text" class="form-control" id="Lastname2">
											<label for="Lastname2">Lastname</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="Username2">
									<label for="Username2">Username</label>
								</div>
								<div class="form-group">
									<input type="password" class="form-control" id="Password2">
									<label for="Password2">Password</label>
								</div>
								<div class="checkbox checkbox-styled">
									<label>
										<input type="checkbox" value="">
										<span>Send me weekly updates</span>
									</label>
								</div>
							</div><!--end .card-body -->
							<div class="card-actionbar">
								<div class="card-actionbar-row">
									<button type="submit" class="btn btn-flat btn-primary ink-reaction">Create account</button>
								</div>
							</div>
						</div><!--end .card -->
						<em class="text-caption">Vertical layout with floating labels</em>
					</form>	
				</div><!--end .col -->
			</div><!--end .row -->
			<!-- END VERTICAL FORM FLOATING LABELS -->

			<!-- BEGIN INVERSED FORM -->
			<div class="row">
				<div class="col-lg-12">
					<h4>Inversed form</h4>
				</div><!--end .col -->
				<div class="col-lg-3 col-md-4">
					<article class="margin-bottom-xxl">
						<p>
							In an inversed form, the focus color will be brighter.
							This will make it easy to read.
						</p>
					</article>
				</div><!--end .col -->
				<div class="col-lg-offset-1 col-md-8">
										<form class="form">
						<div class="card style-default-dark">
							<div class="card-head">
								<header>Create an account</header>
							</div>
							<div class="card-body form-inverse">
								<div>
									<label class="radio-inline radio-styled">
										<input type="radio" name="gendre"><span>Male</span>
									</label>
									<label class="radio-inline radio-styled">
										<input type="radio" name="gendre" checked><span>Female</span>
									</label>
								</div>
								<br/>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<input type="text" class="form-control" id="Firstname3">
											<label for="Firstname3">Firstname</label>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<input type="text" class="form-control" id="Lastname3">
											<label for="Lastname3">Lastname</label>
										</div>
									</div>
								</div>
								<div class="form-group floating-label">
									<input type="text" class="form-control" id="Username3">
									<label for="Username3">Username</label>
								</div>
								<div class="form-group floating-label">
									<input type="password" class="form-control" id="Password3">
									<label for="Password3">Password</label>
								</div>
								<div class="checkbox checkbox-styled">
									<label>
										<input type="checkbox" value="">
										<span>Send me weekly updates</span>
									</label>
								</div>
							</div><!--end .card-body -->
							<div class="card-actionbar">
								<div class="card-actionbar-row">
									<button type="submit" class="btn btn-flat btn-default-light ink-reaction">Create account</button>
								</div>
							</div>
						</div><!--end .card -->
						<em class="text-caption">Inversed form</em>
					</form>	
				</div><!--end .col -->
			</div><!--end .row -->
			<!-- END INVERSED FORM -->

			<!-- BEGIN INLINE FORM -->
			<div class="row">
				<div class="col-lg-12">
					<h2 class="text-primary">Inline layout</h2>
				</div><!--end .col -->
				<div class="col-lg-7">
					<article class="margin-bottom-xxl">
						<p class="lead">
							You can use the inline layout to place your controls on the same line.
							You could use this, for example, in a login form.
						</p>
						<p>
							You can use the floating labels and the inversed form inside an inline layout.
						</p>
					</article>
				</div><!--end .col -->
				<div class="col-lg-12">
										<form class="form-inline">
						<div class="card">
							<div class="card-body">
								<div class="form-group">
									<input type="text" class="form-control" id="Username4">
									<label for="Username4">Username</label>
								</div>
								<div class="form-group">
									<input type="password" class="form-control" id="Password4">
									<label for="Password4">Password</label>
								</div>
								<div class="checkbox checkbox-styled">
									<label>
										<input type="checkbox" value="">
										<span>Remember me</span>
									</label>
								</div>
								<button type="submit" class="btn btn-raised btn-default-light ink-reaction">Login</button>
							</div><!--end .card-body -->
						</div><!--end .card -->
						<em class="text-caption">Inline layout</em>
					</form>
				</div><!--end .col -->
			</div><!--end .row -->
			<!-- END INLINE FORM -->

			<!-- BEGIN HORIZONTAL FORM -->
			<div class="row">
				<div class="col-lg-12">
					<h2 class="text-primary">Horizontal layout</h2>
				</div><!--end .col -->
				<div class="col-lg-7">
					<article class="margin-bottom-xxl">
						<p class="lead">
							Of course Material Admin also has a horizontal layout.
							In this layout, the label is on the left side of the field.
							The label is right-aligned so that the relationship between the field and the tag is immediately visible.
						</p>
						<p>
							You can also use the inversed form inside a horizontal layout.
						</p>
					</article>
				</div><!--end .col -->
				<div class="col-lg-12">
										<form class="form-horizontal">
						<div class="card">
							<div class="card-head style-primary">
								<header>Create an account</header>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Firstname5" class="col-sm-4 control-label">Firstname</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="Firstname5">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Lastname5" class="col-sm-4 control-label">Lastname</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="Lastname5">
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="Username5" class="col-sm-2 control-label">Username</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="Username5">
									</div>
								</div>
								<div class="form-group">
									<label for="Password5" class="col-sm-2 control-label">Password</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="Password5">
									</div>
								</div>
							</div><!--end .card-body -->
							<div class="card-actionbar">
								<div class="card-actionbar-row">
									<button type="submit" class="btn btn-flat btn-primary ink-reaction">Create account</button>
								</div>
							</div>
						</div><!--end .card -->
						<em class="text-caption">Horizontal layout</em>
					</form>
				</div><!--end .col -->
			</div><!--end .row -->
			<!-- END HORIZONTAL FORM -->

		</div>
	</section>
		</div><!--end #content-->		
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
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.nanoscroller.min.js"></script>
<script src="js/63d0445130d69b2868a8d28c93309746.js"></script>
<script src="js/Demo.js"></script>
<script src="js/DemoFormLayouts.js"></script>

	
	<!-- END JAVASCRIPT -->

	
	
	</body>
</html>