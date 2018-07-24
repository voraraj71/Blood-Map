<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="menubar" class="menubar-inverse ">
			<div class="menubar-fixed-panel">
				<div>
					<a class="btn btn-icon-toggle btn-default menubar-toggle" data-toggle="menubar" href="javascript:void(0);">
						<i class="fa fa-bars"></i>
					</a>
				</div>
				<div class="expanded">
					<a href="http://www.codecovers.eu/materialadmin/dashboards/dashboard">
						<span class="text-lg text-bold text-primary ">BloodMap</span>
					</a>
				</div>
			</div>
			<div class="menubar-scroll-panel">
				<!-- BEGIN MAIN MENU -->
				



<ul id="main-menu" class="gui-controls">
	<!-- BEGIN DASHBOARD -->
	<li class="gui-folder">
		<a>
			<div class="gui-icon"><i class="md md-home"></i></div>
			<span class="title">Home</span>
		</a>
	</li><!--end /menu-li -->
	<!-- END DASHBOARD -->
	
	<!-- BEGIN EMAIL -->
	<li class="gui-folder">
		<a>
			<div class="gui-icon"><i class="fa fa-puzzle-piece fa-fw"></i></div>
			<span class="title">State</span>
		</a>
		<!--start submenu -->
		<ul>
			<li><a href="addState.jsp" ><span class="title">Add State</span></a></li>
			<li><a href="<%=request.getContextPath() %>/StateController?flag=search"><span class="title">View State</span></a></li>
		</ul><!--end /submenu -->
	</li><!--end /menu-li -->
	<!-- END EMAIL -->
	
	<!-- BEGIN DASHBOARD -->
	<li class="gui-folder">
		<a>
			<div class="gui-icon"><i class="fa fa-puzzle-piece fa-fw"></i></div>
			<span class="title">City</span>
		</a>
		
		<ul>
			<li><a href="<%=request.getContextPath() %>/CityController?flag=loadState"><span class="title">Add City</span></a></li>
			<li><a href="<%=request.getContextPath() %>/CityController?flag=search"><span class="title">View City</span></a></li>

		</ul></li>
	<!--end /menu-li -->
	<!-- END DASHBOARD -->
	
	<!-- BEGIN UI -->
	<li class="gui-folder">
		<a>
			<div class="gui-icon"><i class="fa fa-puzzle-piece fa-fw"></i></div>
			<span class="title">Bloodtype</span>
		</a>
		<!--start submenu -->
		<ul>
			<li><a href="addBloodtype.jsp" ><span class="title">Add Bloodtype</span></a></li>

			<li><a href="<%=request.getContextPath() %>/BloodtypeController?flag=search"><span class="title">View Bloodtype</span></a></li>
</ul>


<li class="gui-folder">
		<a>
			<div class="gui-icon"><i class="fa fa-puzzle-piece fa-fw"></i></div>
			<span class="title">Feedback</span>
		</a>
		<!--start submenu -->
		<ul>
			<li><a href="<%=request.getContextPath() %>/FeedbackController?flag=search"><span class="title">View Feedback</span></a></li>
</ul>

<li class="gui-folder">
		<a>
			<div class="gui-icon"><i class="fa fa-puzzle-piece fa-fw"></i></div>
			<span class="title">Complaint</span>
		</a>
		<!--start submenu -->
		<ul>
			<li><a href="<%=request.getContextPath() %>/ComplaintController?flag=search"><span class="title">View Complaint</span></a></li>
</ul>

			<!-- <li class="gui-folder">
				<a href="javascript:void(0);">
					<span class="title">Icons</span>
				</a>
				start submenu
				<ul>
					<li><a href="http://www.codecovers.eu/materialadmin/ui/icons/materialicons" ><span class="title">Material Design Icons</span></a></li>

					<li><a href="http://www.codecovers.eu/materialadmin/ui/icons/fontawesome" ><span class="title">Font Awesome</span></a></li>

					<li><a href="http://www.codecovers.eu/materialadmin/ui/icons/glyphicons" ><span class="title">Glyphicons</span></a></li>

					<li><a href="http://www.codecovers.eu/materialadmin/ui/icons/skycons" ><span class="title">Skycons</span></a></li>

				</ul>end /submenu
			</li>end /menu-li
		</ul>end /submenu
	</li>end /menu-li
	END UI
	
	BEGIN TABLES
	<li class="gui-folder">
		<a>
			<div class="gui-icon"><i class="fa fa-table"></i></div>
			<span class="title">Tables</span>
		</a>
		start submenu
		<ul>
			<li><a href="http://www.codecovers.eu/materialadmin/tables/static" ><span class="title">Static Tables</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/tables/dynamic" ><span class="title">Dynamic Tables</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/tables/responsive" ><span class="title">Responsive Table</span></a></li>

		</ul>end /submenu
	</li>end /menu-li
	END TABLES
	
	BEGIN FORMS
	<li class="gui-folder">
		<a>
			<div class="gui-icon"><span class="glyphicon glyphicon-list-alt"></span></div>
			<span class="title">Forms</span>
		</a>
		start submenu
		<ul>
			<li><a href="http://www.codecovers.eu/materialadmin/forms/basic" ><span class="title">Form basic</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/forms/advanced" ><span class="title">Form advanced</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/forms/layouts" ><span class="title">Form layouts</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/forms/editors" ><span class="title">Editors</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/forms/validation" ><span class="title">Form validation</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/forms/wizard" ><span class="title">Form wizard</span></a></li>

					</ul>end /submenu
	</li>end /menu-li
	END FORMS
	
	BEGIN PAGES
	<li class="gui-folder">
		<a>
			<div class="gui-icon"><i class="md md-computer"></i></div>
			<span class="title">Pages</span>
		</a>
		start submenu
		<ul>
			<li class="gui-folder">
				<a href="javascript:void(0);">
					<span class="title">Contacts</span>
				</a>
				start submenu
				<ul>
					<li><a href="http://www.codecovers.eu/materialadmin/pages/contacts/search" ><span class="title">Search</span></a></li>

					<li><a href="http://www.codecovers.eu/materialadmin/pages/contacts/details" ><span class="title">Contact card</span></a></li>

					<li><a href="http://www.codecovers.eu/materialadmin/pages/contacts/add" ><span class="title">Insert contact</span></a></li>

				</ul>end /submenu
			</li>end /menu-li
			<li class="gui-folder">
				<a href="javascript:void(0);">
					<span class="title">Search</span>
				</a>
				start submenu
				<ul>
					<li><a href="http://www.codecovers.eu/materialadmin/pages/search/results-text" ><span class="title">Results - Text</span></a></li>

					<li><a href="http://www.codecovers.eu/materialadmin/pages/search/results-text-image" ><span class="title">Results - Text and Image</span></a></li>

									</ul>end /submenu
			</li>end /menu-li
			<li class="gui-folder">
				<a href="javascript:void(0);">
					<span class="title">Blog</span>
				</a>
				start submenu
				<ul>
					<li><a href="http://www.codecovers.eu/materialadmin/pages/blog/masonry" ><span class="title">Blog masonry</span></a></li>

					<li><a href="http://www.codecovers.eu/materialadmin/pages/blog/list" ><span class="title">Blog list</span></a></li>

					<li><a href="http://www.codecovers.eu/materialadmin/pages/blog/post" ><span class="title">Blog post</span></a></li>

				</ul>end /submenu
			</li>end /menu-li
			<li class="gui-folder">
				<a href="javascript:void(0);">
					<span class="title">Error pages</span>
				</a>
				start submenu
				<ul>
					<li><a href="http://www.codecovers.eu/materialadmin/pages/404" ><span class="title">404 page</span></a></li>

					<li><a href="http://www.codecovers.eu/materialadmin/pages/500" ><span class="title">500 page</span></a></li>

				</ul>end /submenu
			</li>end /menu-li
			<li><a href="http://www.codecovers.eu/materialadmin/pages/profile" ><span class="title">User profile<span class="badge style-accent">42</span></span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/pages/invoice" ><span class="title">Invoice</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/pages/calendar" ><span class="title">Calendar</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/pages/pricing" ><span class="title">Pricing</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/pages/timeline" ><span class="title">Timeline</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/pages/maps" ><span class="title">Maps</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/pages/locked" ><span class="title">Lock screen</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/pages/login" ><span class="title">Login</span></a></li>

			<li><a href="http://www.codecovers.eu/materialadmin/pages/blank" ><span class="title">Blank page</span></a></li>

		</ul>end /submenu
	</li>end /menu-li
	END FORMS
	
	BEGIN CHARTS
	<li>
		<a href="http://www.codecovers.eu/materialadmin/charts/charts" >
			<div class="gui-icon"><i class="md md-assessment"></i></div>
			<span class="title">Charts</span>
		</a>
	</li>end /menu-li
	END CHARTS
	
	BEGIN LEVELS
	<li class="gui-folder">
		<a>
			<div class="gui-icon"><i class="fa fa-folder-open fa-fw"></i></div>
			<span class="title">Menu levels demo</span>
		</a>
		start submenu
		<ul>
			<li><a href="#"><span class="title">Item 1</span></a></li>
			<li><a href="#"><span class="title">Item 1</span></a></li>
			<li class="gui-folder">
				<a href="javascript:void(0);">
					<span class="title">Open level 2</span>
				</a>
				start submenu
				<ul>
					<li><a href="#"><span class="title">Item 2</span></a></li>
					<li class="gui-folder">
						<a href="javascript:void(0);">
							<span class="title">Open level 3</span>
						</a>
						start submenu
						<ul>
							<li><a href="#"><span class="title">Item 3</span></a></li>
							<li><a href="#"><span class="title">Item 3</span></a></li>
							<li class="gui-folder">
								<a href="javascript:void(0);">
									<span class="title">Open level 4</span>
								</a>
								start submenu
								<ul>
									<li><a href="#"><span class="title">Item 4</span></a></li>
									<li class="gui-folder">
										<a href="javascript:void(0);">
											<span class="title">Open level 5</span>
										</a>
										start submenu
										<ul>
											<li><a href="#"><span class="title">Item 5</span></a></li>
											<li><a href="#"><span class="title">Item 5</span></a></li>
										</ul>end /submenu
									</li>end /submenu-li
								</ul>end /submenu
							</li>end /submenu-li
						</ul>end /submenu
					</li>end /submenu-li
				</ul>end /submenu
			</li>end /submenu-li
		</ul>end /submenu
	</li>end /menu-li
	END LEVELS
	
</ul>end .main-menu
				END MAIN MENU

				<div class="menubar-foot-panel">
					<small class="no-linebreak hidden-folded">
						<span class="opacity-75">Copyright &copy; 2014</span> <strong>CodeCovers</strong>
					</small>
				</div>
			</div>end .menubar-scroll-panel
 -->		</div><!--end #menubar-->
