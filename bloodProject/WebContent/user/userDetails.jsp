<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html lang="en-US" class="scheme_original">
<head>
<base href="${pageContext.request.contextPath }/user/">
<title>User Details</title>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name=".format-detection" content="telephone=no">
<link rel="profile" href="http://gmpg.org/xfn/11"/>
<link rel="pingback" href="http://charity-is-hope.themerex.net/xmlrpc.php"/>
<link rel='dns-prefetch' href='//fonts.googleapis.com'/>
<link rel='dns-prefetch' href='//s.w.org'/>
<link rel="alternate" type="application/rss+xml" title="Hope &raquo; Feed" href="http://charity-is-hope.themerex.net/feed/"/>
<link rel="alternate" type="application/rss+xml" title="Hope &raquo; Comments Feed" href="http://charity-is-hope.themerex.net/comments/feed/"/>
<link rel="alternate" type="text/calendar" title="Hope &raquo; iCal Feed" href="http://charity-is-hope.themerex.net/events/?ical=1"/>
<meta property="og:image" content="image/image-13.jpg"/>
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/svg\/","svgExt":".svg","source":{"concatemoji":"js/wp-emoji-release.min.js?ver=4.7.3"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),!(j.toDataURL().length<3e3)&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,65039,8205,55356,57096),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,55356,57096),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55357,56425,55356,57341,8205,55357,56507),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55357,56425,55356,57341,55357,56507),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
<style type="text/css">img.wp-smiley,img.emoji{display:inline!important;border:none!important;box-shadow:none!important;height:1em!important;width:1em!important;margin:0 .07em!important;vertical-align:-0.1em!important;background:none!important;padding:0!important;}</style>
<link property="stylesheet" rel='stylesheet' id='essential-grid-plugin-settings-css' href='css/settings.css?ver=2.0.9.1' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='tp-open-sans-css' href='http://fonts.googleapis.com/css?family=Open+Sans%3A300%2C400%2C600%2C700%2C800&#038;ver=4.7.3' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='tp-raleway-css' href='http://fonts.googleapis.com/css?family=Raleway%3A100%2C200%2C300%2C400%2C500%2C600%2C700%2C800%2C900&#038;ver=4.7.3' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='tp-droid-serif-css' href='http://fonts.googleapis.com/css?family=Droid+Serif%3A400%2C700&#038;ver=4.7.3' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='rs-plugin-settings-css' href='css/settings.css?ver=5.4.1' type='text/css' media='all'/>
<style id='rs-plugin-settings-inline-css' type='text/css'>#rs-demo-id{}</style>
<link property="stylesheet" rel='stylesheet' id='woocommerce-layout-css' href='css/woocommerce-layout.css?ver=2.6.14' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='woocommerce-smallscreen-css' href='css/woocommerce-smallscreen.css?ver=2.6.14' type='text/css' media='only screen and (max-width: 768px)'/>
<link property="stylesheet" rel='stylesheet' id='woocommerce-general-css' href='css/woocommerce.css?ver=2.6.14' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-font-WCManoNegraBta-style-css' href='css/stylesheet.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-font-google_fonts-style-css' href='//fonts.googleapis.com/css?family=Open%2BSans%3A300%2C300italic%2C400%2C400italic%2C700%2C700italic%26subset%3Dlatin%2Clatin-ext' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-fontello-style-css' href='css/fontello.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-main-style-css' href='css/style.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-animation-style-css' href='css/core.animation.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-shortcodes-style-css' href='css/theme.shortcodes.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-theme-style-css' href='css/theme.css' type='text/css' media='all'/>
<style id='charity_is_hope-theme-style-inline-css' type='text/css'>.contacts_wrap .logo img{height:121px}</style>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-plugin.tribe-events-style-css' href='css/plugin.tribe-events.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-plugin.donations-style-css' href='css/plugin.donations.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-responsive-style-css' href='css/responsive.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='mediaelement-css' href='css/mediaelementplayer.min.css?ver=2.22.0' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='wp-mediaelement-css' href='css/wp-mediaelement.min.css?ver=4.7.3' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='trx-donations-style-css' href='css/trx_donations.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='trx-donations-socials-share-style-css' href='css/socials-share-embedded.css' type='text/css' media='all'/>
<script type='text/javascript' src='js/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='js/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' src='js/lightbox.js?ver=2.0.9.1'></script>
<script type='text/javascript' src='js/jquery.themepunch.tools.min.js?ver=2.0.9.1'></script>
<script type='text/javascript' src='js/jquery.themepunch.essential.min.js?ver=2.0.9.1'></script>
<script type='text/javascript' src='js/jquery.themepunch.revolution.min.js?ver=5.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/donation\/sponsor-ecology-today\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View Cart","cart_url":"http:\/\/charity-is-hope.themerex.net\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
<script type='text/javascript' src='js/add-to-cart.min.js?ver=2.6.14'></script>
<script type='text/javascript' src='js/woocommerce-add-to-cart.js?ver=5.1'></script>
<script type='text/javascript' src='js/modernizr.min.js'></script>
<link rel='https://api.w.org/' href='http://charity-is-hope.themerex.net/wp-json/'/>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://charity-is-hope.themerex.net/xmlrpc.php?rsd"/>
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://charity-is-hope.themerex.net/wp-includes/wlwmanifest.xml"/>
<link rel='prev' title='Education for Everyone' href='http://charity-is-hope.themerex.net/donation/education-for-everyone/'/>
<meta name="generator" content="WordPress 4.7.3"/>
<meta name="generator" content="WooCommerce 2.6.14"/>
<link rel="canonical" href="http://charity-is-hope.themerex.net/donation/sponsor-ecology-today/"/>
<link rel='shortlink' href='http://charity-is-hope.themerex.net/?p=407'/>
<link rel="alternate" type="application/json+oembed" href="http://charity-is-hope.themerex.net/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fcharity-is-hope.themerex.net%2Fdonation%2Fsponsor-ecology-today%2F"/>
<link rel="alternate" type="text/xml+oembed" href="http://charity-is-hope.themerex.net/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fcharity-is-hope.themerex.net%2Fdonation%2Fsponsor-ecology-today%2F&#038;format=xml"/>
<script type="text/javascript">
			var ajaxRevslider;
			
			jQuery(document).ready(function() {
				// CUSTOM AJAX CONTENT LOADING FUNCTION
				ajaxRevslider = function(obj) {
				
					// obj.type : Post Type
					// obj.id : ID of Content to Load
					// obj.aspectratio : The Aspect Ratio of the Container / Media
					// obj.selector : The Container Selector where the Content of Ajax will be injected. It is done via the Essential Grid on Return of Content
					
					var content = "";

					data = {};
					
					data.action = 'revslider_ajax_call_front';
					data.client_action = 'get_slider_html';
					data.token = '1d46f6bc72';
					data.type = obj.type;
					data.id = obj.id;
					data.aspectratio = obj.aspectratio;
					
					// SYNC AJAX REQUEST
					jQuery.ajax({
						type:"post",
						url:"http://charity-is-hope.themerex.net/wp-admin/admin-ajax.php",
						dataType: 'json',
						data:data,
						async:false,
						success: function(ret, textStatus, XMLHttpRequest) {
							if(ret.success == true)
								content = ret.data;								
						},
						error: function(e) {
							console.log(e);
						}
					});
					
					 // FIRST RETURN THE CONTENT WHEN IT IS LOADED !!
					 return content;						 
				};
				
				// CUSTOM AJAX FUNCTION TO REMOVE THE SLIDER
				var ajaxRemoveRevslider = function(obj) {
					return jQuery(obj.selector+" .rev_slider").revkill();
				};

				// EXTEND THE AJAX CONTENT LOADING TYPES WITH TYPE AND FUNCTION
				var extendessential = setInterval(function() {
					if (jQuery.fn.tpessential != undefined) {
						clearInterval(extendessential);
						if(typeof(jQuery.fn.tpessential.defaults) !== 'undefined') {
							jQuery.fn.tpessential.defaults.ajaxTypes.push({type:"revslider",func:ajaxRevslider,killfunc:ajaxRemoveRevslider,openAnimationSpeed:0.3});   
							// type:  Name of the Post to load via Ajax into the Essential Grid Ajax Container
							// func: the Function Name which is Called once the Item with the Post Type has been clicked
							// killfunc: function to kill in case the Ajax Window going to be removed (before Remove function !
							// openAnimationSpeed: how quick the Ajax Content window should be animated (default is 0.3)
						}
					}
				},30);
			});
		</script>
<meta name="generator" content="Powered by Visual Composer - drag and drop page builder for WordPress."/>
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="css/vc_lte_ie9.min.css" media="screen"><![endif]--><meta name="generator" content="Powered by Slider Revolution 5.4.1 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface."/>
<link rel="icon" href="http://charity-is-hope.themerex.net/wp-content/uploads/2016/09/cropped-512x512-150x150.png" sizes="32x32"/>
<link rel="icon" href="http://charity-is-hope.themerex.net/wp-content/uploads/2016/09/cropped-512x512-300x300.png" sizes="192x192"/>
<link rel="apple-touch-icon-precomposed" href="http://charity-is-hope.themerex.net/wp-content/uploads/2016/09/cropped-512x512-180x180.png"/>
<meta name="msapplication-TileImage" content="http://charity-is-hope.themerex.net/wp-content/uploads/2016/09/cropped-512x512-300x300.png"/>
<noscript><style type="text/css">.wpb_animate_when_almost_visible{opacity:1;}</style></noscript></head>
<body class="donation-template-default single single-donation postid-407 tribe-no-js charity_is_hope_body body_style_wide top_style_header_1 body_filled article_style_stretch layout_single-standard template_single-standard scheme_original top_panel_show top_panel_above sidebar_hide sidebar_outer_hide wpb-js-composer js-comp-ver-5.1 vc_responsive">
<a id="toc_home" class="sc_anchor" title="Home" data-description="&lt;i&gt;Return to Home&lt;/i&gt; - &lt;br&gt;navigate to home page of the site" data-icon="icon-home" data-url="http://charity-is-hope.themerex.net/" data-separator="yes"></a><a id="toc_top" class="sc_anchor" title="To Top" data-description="&lt;i&gt;Back to top&lt;/i&gt; - &lt;br&gt;scroll to top of the page" data-icon="icon-double-up" data-url="" data-separator="yes"></a>
<div class="body_wrap">
<div class="page_wrap">
<div class="top_panel_fixed_wrap"></div>

<jsp:include page="U_header.jsp"></jsp:include>
<!-- <header class="top_panel_wrap top_panel_style_1 scheme_original">
<div class="top_panel_wrap_inner top_panel_inner_style_1 top_panel_position_above">
<div class="top_panel_middle">
<div class="content_wrap">
<div class="contact_logo">
<div class="logo">
<a href="http://charity-is-hope.themerex.net/"><img src="image/logo.png" class="logo_main" alt="" width="118" height="69"></a>
</div>
</div>
<div class="contact_button">
<a class="first_button" href="http://charity-is-hope.themerex.net/our-causes/">Donate</a><a class="second_button" href="http://charity-is-hope.themerex.net/about-us-style-1/">Become Volunteer</a> </div>
<div class="contact_socials">
<div class="sc_socials sc_socials_type_icons sc_socials_shape_round sc_socials_size_tiny"><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_twitter"><span class="icon-twitter"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_facebook"><span class="icon-facebook"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_vine"><span class="icon-vine"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_youtube"><span class="icon-youtube"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_pinterest-circled"><span class="icon-pinterest-circled"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_gplus"><span class="icon-gplus"></span></a></div></div> </div>
</div>
</div>
<div class="top_panel_bottom">
<div class="content_wrap clearfix">
<nav class="menu_main_nav_area menu_hover_fade">
<ul id="menu_main" class="menu_main_nav"><li id="menu-item-31" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-has-children menu-item-31"><a href="http://charity-is-hope.themerex.net/"><span>Home</span></a>
<ul class="sub-menu">
<li id="menu-item-37" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-37"><a href="http://charity-is-hope.themerex.net/"><span>Home 1</span></a></li>
<li id="menu-item-38" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-38"><a href="http://charity-is-hope.themerex.net/home-2/"><span>Home 2</span></a></li>
<li id="menu-item-765" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-765"><a href="http://charity-is-hope.themerex.net/home-3/"><span>Home 3</span></a></li>
<li id="menu-item-785" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-785"><a href="http://charity-is-hope.themerex.net/home-4-boxed/"><span>Home Boxed</span></a></li>
</ul>
</li>
<li id="menu-item-46" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-46"><a href="#"><span>Features</span></a>
<ul class="sub-menu">
<li id="menu-item-43" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-43"><a href="http://charity-is-hope.themerex.net/typography/"><span>Typography</span></a></li>
<li id="menu-item-41" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-41"><a href="http://charity-is-hope.themerex.net/shortcodes/"><span>Shortcodes</span></a></li>
<li id="menu-item-451" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-451"><a href="#"><span>Gallery</span></a>
<ul class="sub-menu">
<li id="menu-item-458" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-458"><a href="http://charity-is-hope.themerex.net/grid-gallery/"><span>Grid</span></a></li>
<li id="menu-item-457" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-457"><a href="http://charity-is-hope.themerex.net/cobbles-gallery/"><span>Cobbles</span></a></li>
<li id="menu-item-461" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-461"><a href="http://charity-is-hope.themerex.net/masonry-gallery/"><span>Masonry</span></a></li>
</ul>
</li>
<li id="menu-item-449" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-449"><a href="http://charity-is-hope.themerex.net/events/"><span>Events</span></a></li>
<li id="menu-item-47" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-47"><a href="#"><span>Help</span></a>
<ul class="sub-menu">
<li id="menu-item-42" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-42"><a href="http://charity-is-hope.themerex.net/support/"><span>Support</span></a></li>
<li id="menu-item-36" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-36"><a href="http://charity-is-hope.themerex.net/customization/"><span>Customization</span></a></li>
<li id="menu-item-44" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-44"><a href="http://charity-is-hope.themerex.net/video-tutorials/"><span>Video Tutorials</span></a></li>
</ul>
</li>
</ul>
</li>
<li id="menu-item-45" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-45"><a href="#"><span>About Us</span></a>
<ul class="sub-menu">
<li id="menu-item-32" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32"><a href="http://charity-is-hope.themerex.net/about-us-style-1/"><span>Style 1</span></a></li>
<li id="menu-item-33" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-33"><a href="http://charity-is-hope.themerex.net/about-us-style-2/"><span>Style 2</span></a></li>
</ul>
</li>
<li id="menu-item-39" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-39"><a href="http://charity-is-hope.themerex.net/our-causes/"><span>Our Causes</span></a>
<ul class="sub-menu">
<li id="menu-item-687" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-687"><a href="http://charity-is-hope.themerex.net/our-causes/"><span>Our Causes</span></a></li>
<li id="menu-item-686" class="menu-item menu-item-type-post_type menu-item-object-donation current-menu-item menu-item-686"><a href="http://charity-is-hope.themerex.net/donation/sponsor-ecology-today/"><span>Single Cause</span></a></li>
</ul>
</li>
<li id="menu-item-34" class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-has-children menu-item-34"><a href="http://charity-is-hope.themerex.net/all-posts/"><span>News</span></a>
<ul class="sub-menu">
<li id="menu-item-244" class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-244"><a href="http://charity-is-hope.themerex.net/all-posts/"><span>Classic With Sidebar</span></a></li>
<li id="menu-item-243" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-243"><a href="http://charity-is-hope.themerex.net/classic-without-sidebar/"><span>Classic Without Sidebar</span></a></li>
<li id="menu-item-257" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-257"><a href="#"><span>Masonry Layouts</span></a>
<ul class="sub-menu">
<li id="menu-item-256" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-256"><a href="http://charity-is-hope.themerex.net/masonry-2-columns/"><span>2 columns</span></a></li>
<li id="menu-item-255" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-255"><a href="http://charity-is-hope.themerex.net/masonry-3-columns/"><span>3 columns</span></a></li>
</ul>
</li>
<li id="menu-item-262" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-262"><a href="#"><span>Portfolio Layouts</span></a>
<ul class="sub-menu">
<li id="menu-item-261" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-261"><a href="http://charity-is-hope.themerex.net/portfolio-2-columns/"><span>2 columns</span></a></li>
<li id="menu-item-267" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-267"><a href="http://charity-is-hope.themerex.net/potfolio-3-columns/"><span>3 columns</span></a></li>
</ul>
</li>
</ul>
</li>
<li id="menu-item-40" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-40"><a href="http://charity-is-hope.themerex.net/shop/"><span>Shop</span></a></li>
<li id="menu-item-35" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-35"><a href="http://charity-is-hope.themerex.net/contacts/"><span>Contacts</span></a></li>
</ul> </nav>
<div class="search_wrap search_style_fullscreen search_state_closed">
<div class="search_form_wrap">
<form role="search" method="get" class="search_form" action="http://charity-is-hope.themerex.net/">
<button type="submit" class="search_submit icon-search" title="Open search"></button>
<input type="text" class="search_field" placeholder="Search" value="" name="s"/><a class="search_close icon-cancel"></a></form>
</div></div> </div>
</div>
</div>
</header>
 -->
 
 <div class="header_mobile">
<div class="content_wrap">
<div class="menu_button icon-menu"></div>
<div class="logo">
<a href="http://charity-is-hope.themerex.net/"><img src="image/logo.png" class="logo_main" alt="" width="118" height="69"></a>
</div>
</div>
<div class="side_wrap">
<div class="close">Close</div>
<div class="panel_top">
<nav class="menu_main_nav_area">
<ul id="menu_mobile" class="menu_main_nav"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-has-children menu-item-31"><a href="http://charity-is-hope.themerex.net/"><span>Home</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-37"><a href="http://charity-is-hope.themerex.net/"><span>Home 1</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-38"><a href="http://charity-is-hope.themerex.net/home-2/"><span>Home 2</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-765"><a href="http://charity-is-hope.themerex.net/home-3/"><span>Home 3</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-785"><a href="http://charity-is-hope.themerex.net/home-4-boxed/"><span>Home Boxed</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-46"><a href="#"><span>Features</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-43"><a href="http://charity-is-hope.themerex.net/typography/"><span>Typography</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-41"><a href="http://charity-is-hope.themerex.net/shortcodes/"><span>Shortcodes</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-451"><a href="#"><span>Gallery</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-458"><a href="http://charity-is-hope.themerex.net/grid-gallery/"><span>Grid</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-457"><a href="http://charity-is-hope.themerex.net/cobbles-gallery/"><span>Cobbles</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-461"><a href="http://charity-is-hope.themerex.net/masonry-gallery/"><span>Masonry</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-449"><a href="http://charity-is-hope.themerex.net/events/"><span>Events</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-47"><a href="#"><span>Help</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-42"><a href="http://charity-is-hope.themerex.net/support/"><span>Support</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-36"><a href="http://charity-is-hope.themerex.net/customization/"><span>Customization</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-44"><a href="http://charity-is-hope.themerex.net/video-tutorials/"><span>Video Tutorials</span></a></li>
</ul>
</li>
</ul>
</li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-45"><a href="#"><span>About Us</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32"><a href="http://charity-is-hope.themerex.net/about-us-style-1/"><span>Style 1</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-33"><a href="http://charity-is-hope.themerex.net/about-us-style-2/"><span>Style 2</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-39"><a href="http://charity-is-hope.themerex.net/our-causes/"><span>Our Causes</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-687"><a href="http://charity-is-hope.themerex.net/our-causes/"><span>Our Causes</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-donation current-menu-item menu-item-686"><a href="http://charity-is-hope.themerex.net/donation/sponsor-ecology-today/"><span>Single Cause</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-has-children menu-item-34"><a href="http://charity-is-hope.themerex.net/all-posts/"><span>News</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-244"><a href="http://charity-is-hope.themerex.net/all-posts/"><span>Classic With Sidebar</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-243"><a href="http://charity-is-hope.themerex.net/classic-without-sidebar/"><span>Classic Without Sidebar</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-257"><a href="#"><span>Masonry Layouts</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-256"><a href="http://charity-is-hope.themerex.net/masonry-2-columns/"><span>2 columns</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-255"><a href="http://charity-is-hope.themerex.net/masonry-3-columns/"><span>3 columns</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-262"><a href="#"><span>Portfolio Layouts</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-261"><a href="http://charity-is-hope.themerex.net/portfolio-2-columns/"><span>2 columns</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-267"><a href="http://charity-is-hope.themerex.net/potfolio-3-columns/"><span>3 columns</span></a></li>
</ul>
</li>
</ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-40"><a href="http://charity-is-hope.themerex.net/shop/"><span>Shop</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-35"><a href="http://charity-is-hope.themerex.net/contacts/"><span>Contacts</span></a></li>
</ul> </nav>
<div class="search_wrap search_style_ search_state_fixed search_ajax">
<div class="search_form_wrap">
<form role="search" method="get" class="search_form" action="http://charity-is-hope.themerex.net/">
<button type="submit" class="search_submit icon-search" title="Start search"></button>
<input type="text" class="search_field" placeholder="Search" value="" name="s"/></form>
</div><div class="search_results widget_area scheme_original"><a class="search_results_close icon-cancel"></a><div class="search_results_content"></div></div></div> </div>
</div>
<div class="mask"></div>
</div>


<c:forEach items="${sessionScope.imgList}" var="i">
<div class="page_content_wrap page_paddings_yes">
<div class="content_wrap">
<div class="content"><article id="post-407" class="post_item_single post_type_donation post-407 donation type-donation status-publish has-post-thumbnail hentry donation_category-second-group">
<div class="post_sidebar">
<div class="post_featured">
<img width="570" height="320" src="${pageContext.request.contextPath}/doc/${i.encryptedFileName}" class="attachment-thumb_med size-thumb_med wp-post-image" alt="Sponsor Ecology Today"/> </div> 
<!-- <div class="post_info_donations">
<div class="post_raised">
<span class="post_raised_title">Raised</span><span class="post_raised_amount">7520.00 USD</span>
</div>
<div class="middle">
<span style="width:83.56%;"></span>
</div>
<div class="post_goal">
<span class="post_goal_title">Goal</span><span class="post_goal_amount">9000.00 USD</span>
</div>
</div> -->
<!-- <div class="post_help">Help us attain our goal</div>
<div class="post_supporters">
<h5 class="post_supporters_title">Group&#039;s supporters to date</h5>
<div class="post_supporters_count">No supporters yet</div>
</div> -->
</div>

<div class="post_body">
<div class="post_header entry-header">
<h1 class="post_title entry-title">${i.regvo.firstname}&nbsp;${i.regvo.lastname}</h1> <div class="post_info">
<span class="post_info_item post_date">Contact No: ${i.regvo.contactno}</span>
<span class="post_info_item post_date">Gender: ${i.regvo.gender}</span>
<span class="post_info_item post_date">DOB: ${i.regvo.dob}</span>
<span class="post_info_item post_date">E-mail: ${i.regvo.email}</span>
<span class="post_info_item post_date">Address: ${i.regvo.address}</span>
<span class="post_info_item post_date">State: ${i.regvo.stateVO.stateName}</span>
<span class="post_info_item post_date">City: ${i.regvo.cityVO.cityName}</span>

<c:forEach items="${sessionScope.bloodSearchList}" var="bb">
<c:if test="${bb.bloodtypeId eq i.regvo.bloodtypeVO.bloodtypeId }">
<span class="post_info_item post_date">Bloodtype: ${bb.bloodType}</span>
</c:if>
</c:forEach>

</div>
</div>
<div class="post_content entry-content">
<p>

</p>
</div> </c:forEach>
<div class="post_footer entry-footer">
<!-- <div class="sc_socials_share"><span class="sc_socials_share_caption">Share:</span><a href="https://twitter.com/intent/tweet?text=&#038;url=" class="sc_socials_share_item" onclick="window.open('https://twitter.com/intent/tweet?text=&#038;url=', '_blank', 'scrollbars=0, resizable=1, menubar=0, left=100, top=100, width=480, height=400, toolbar=0, status=0'); return false;"><span class="icon_share-twitter"></span></a><a href="http://www.facebook.com/sharer.php?s=100&#038;p%5Burl%5D=&#038;p%5Btitle%5D=&#038;p%5Bsummary%5D=&#038;p%5Bimages%5D%5B0%5D=" class="sc_socials_share_item" onclick="window.open('http://www.facebook.com/sharer.php?s=100&#038;p%5Burl%5D=&#038;p%5Btitle%5D=&#038;p%5Bsummary%5D=&#038;p%5Bimages%5D%5B0%5D=', '_blank', 'scrollbars=0, resizable=1, menubar=0, left=100, top=100, width=480, height=400, toolbar=0, status=0'); return false;"><span class="icon_share-facebook"></span></a></div> --> </div> 
</div> 
</article>
</div>  
</div>  
</div> 


<footer class="footer_wrap widget_area scheme_dark">
<div class="footer_wrap_inner widget_area_inner">
<div class="content_wrap">
<div class="columns_wrap">
<div class="column-1_2">
<div class="contacts_wrap">
<div class="contacts_wrap_inner">
<div class="logo">
<a href="http://charity-is-hope.themerex.net/"><img src="image/logo-footer.png" class="logo_footer" alt="" width="237" height="121"></a>
</div>
<div class="contacts_address">
<p>Nulla fringilla orci mauris, nec tempor lectus consequat ac. Nulla consectetur magna in velit pellentesque egestas sed eget nibh. Fusce nec viverra dolor. Phasellus faucibus egestas nulla, vel suscipit metus maximus id. Phasellus blandit porttitor placerat. <br/><br/>Donec malesuada ultricies ante at congue. Integer nec faucibus quam. Phasellus posuere nisi ac.<br/><br/><span style="color: #ffffff">hope@companyname.com</span></p> </div>
</div>  
</div>  
</div><div class="column-1_2 width_right">
<div class="columns_wrap">
<aside id="text-4" class="widget_number_1 widget widget_text"><h5 class="widget_title">our partners</h5> <div class="textwidget"><div id="sc_clients_1898579239_wrap" class="sc_clients_wrap"><div id="sc_clients_1898579239" class="sc_clients sc_clients_style_clients-1 " style="width:100%;"><div class="sc_slider_swiper swiper-slider-container sc_slider_nopagination sc_slider_nocontrols" data-interval="7149" data-slides-per-view="5" data-slides-min-width="100"><div class="slides swiper-wrapper"><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_1" class="sc_clients_item sc_clients_item_1 odd first">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-2.png" src="image/partner-2.png"></div>
</div>
</div><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_2" class="sc_clients_item sc_clients_item_2 even">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-1.png" src="image/partner-1.png"></div>
</div>
</div><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_3" class="sc_clients_item sc_clients_item_3 odd">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-3.png" src="image/partner-3.png"></div>
</div>
</div><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_4" class="sc_clients_item sc_clients_item_4 even">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-4.png" src="image/partner-4.png"></div>
</div>
</div><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_5" class="sc_clients_item sc_clients_item_5 odd">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-5.png" src="image/partner-5.png"></div>
</div>
</div></div><div class="sc_slider_controls_wrap"><a class="sc_slider_prev" href="#"></a><a class="sc_slider_next" href="#"></a></div><div class="sc_slider_pagination_wrap"></div></div></div> </div> </div>
</aside><aside id="text-3" class="widget_number_2 widget widget_text"><h5 class="widget_title">newslettter sign-up</h5> <div class="textwidget"><script type="text/javascript">(function() {
	if (!window.mc4wp) {
		window.mc4wp = {
			listeners: [],
			forms    : {
				on: function (event, callback) {
					window.mc4wp.listeners.push({
						event   : event,
						callback: callback
					});
				}
			}
		}
	}
})();
</script> <form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-532" method="post" data-id="532" data-name="form"><div class="mc4wp-form-fields"><input type="email" name="EMAIL" placeholder="Email" required /><input type="submit" value="Subcribe"/><div style="display: none;"><input type="text" name="_mc4wp_honeypot" value="" tabindex="-1" autocomplete="off"/></div><input type="hidden" name="_mc4wp_timestamp" value="1490102669"/><input type="hidden" name="_mc4wp_form_id" value="532"/><input type="hidden" name="_mc4wp_form_element_id" value="mc4wp-form-1"/></div><div class="mc4wp-response"></div></form> </div>
</aside><aside id="charity_is_hope_widget_socials-3" class="widget_number_3 widget widget_socials"><h5 class="widget_title">Connect With Us</h5> <div class="widget_inner">
<div class="sc_socials sc_socials_type_icons sc_socials_shape_square sc_socials_size_small"><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_twitter"><span class="icon-twitter"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_facebook"><span class="icon-facebook"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_vine"><span class="icon-vine"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_youtube"><span class="icon-youtube"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_pinterest-circled"><span class="icon-pinterest-circled"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_gplus"><span class="icon-gplus"></span></a></div></div> </div>
</aside> </div></div>
</div>  
</div>  
</div>  
</footer>  
<div class="copyright_wrap copyright_style_text  scheme_original">
<div class="copyright_wrap_inner">
<div class="content_wrap">
<div class="copyright_text"><p><a href="https://themeforest.net/user/themerex/portfolio">ThemeREX</a> © 2016 All Rights Reserved. <a href="http://themerex.net/terms-of-service/">Terms of Use</a> and <a href="http://themerex.net/privacy-policy/">Privacy Policy</a></p></div>
</div>
</div>
</div>
</div>  
</div>  
<a href="#" class="scroll_to_top icon-up" title="Scroll to top"></a><div class="custom_html_section"></div> <script>
		( function ( body ) {
			'use strict';
			body.className = body.className.replace( /\btribe-no-js\b/, 'tribe-js' );
		} )( document.body );
		</script>
<script type='text/javascript'> /* <![CDATA[ */var tribe_l10n_datatables = {"aria":{"sort_ascending":": activate to sort column ascending","sort_descending":": activate to sort column descending"},"length_menu":"Show _MENU_ entries","empty_table":"No data available in table","info":"Showing _START_ to _END_ of _TOTAL_ entries","info_empty":"Showing 0 to 0 of 0 entries","info_filtered":"(filtered from _MAX_ total entries)","zero_records":"No matching records found","search":"Search:","pagination":{"all":"All","next":"Next","previous":"Previous"},"select":{"rows":{"0":"","_":": Selected %d rows","1":": Selected 1 row"}},"datepicker":{"dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["S","M","T","W","T","F","S"],"monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["January","February","March","April","May","June","July","August","September","October","November","December"],"nextText":"Next","prevText":"Prev","currentText":"Today","closeText":"Done"}};/* ]]> */ </script><script type="text/javascript">(function() {function addEventListener(element,event,handler) {
	if(element.addEventListener) {
		element.addEventListener(event,handler, false);
	} else if(element.attachEvent){
		element.attachEvent('on'+event,handler);
	}
}function maybePrefixUrlField() {
	if(this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
		this.value = "http://" + this.value;
	}
}

var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
if( urlFields && urlFields.length > 0 ) {
	for( var j=0; j < urlFields.length; j++ ) {
		addEventListener(urlFields[j],'blur',maybePrefixUrlField);
	}
}/* test if browser supports date fields */
var testInput = document.createElement('input');
testInput.setAttribute('type', 'date');
if( testInput.type !== 'date') {

	/* add placeholder & pattern to all date fields */
	var dateFields = document.querySelectorAll('.mc4wp-form input[type="date"]');
	for(var i=0; i<dateFields.length; i++) {
		if(!dateFields[i].placeholder) {
			dateFields[i].placeholder = 'YYYY-MM-DD';
		}
		if(!dateFields[i].pattern) {
			dateFields[i].pattern = '[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])';
		}
	}
}

})();</script><link property="stylesheet" rel='stylesheet' id='charity_is_hope-messages-style-css' href='css/core.messages.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-swiperslider-style-css' href='css/swiper.css' type='text/css' media='all'/>
<script type='text/javascript'>
/* <![CDATA[ */
var TRX_UTILS_STORAGE = {"ajax_url":"http:\/\/charity-is-hope.themerex.net\/wp-admin\/admin-ajax.php","ajax_nonce":"686ea19c69","site_url":"http:\/\/charity-is-hope.themerex.net","user_logged_in":"0","email_mask":"^([a-zA-Z0-9_\\-]+\\.)*[a-zA-Z0-9_\\-]+@[a-z0-9_\\-]+(\\.[a-z0-9_\\-]+)*\\.[a-z]{2,6}$","msg_ajax_error":"Invalid server answer!","msg_error_global":"Invalid field's value!","msg_name_empty":"The name can't be empty","msg_email_empty":"Too short (or empty) email address","msg_email_not_valid":"E-mail address is invalid","msg_text_empty":"The message text can't be empty","msg_send_complete":"Send message complete!","msg_send_error":"Transmit failed!","login_via_ajax":"1","msg_login_empty":"The Login field can't be empty","msg_login_long":"The Login field is too long","msg_password_empty":"The password can't be empty and shorter then 4 characters","msg_password_long":"The password is too long","msg_login_success":"Login success! The page will be reloaded in 3 sec.","msg_login_error":"Login failed!","msg_not_agree":"Please, read and check 'Terms and Conditions'","msg_email_long":"E-mail address is too long","msg_password_not_equal":"The passwords in both fields are not equal","msg_registration_success":"Registration success! Please log in!","msg_registration_error":"Registration failed!"};
/* ]]> */
</script>
<script type='text/javascript' src='js/trx_utils.js'></script>
<script type='text/javascript' src='js/jquery.blockUI.min.js?ver=2.70'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/donation\/sponsor-ecology-today\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='js/woocommerce.min.js?ver=2.6.14'></script>
<script type='text/javascript' src='js/jquery.cookie.min.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/donation\/sponsor-ecology-today\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments"};
/* ]]> */
</script>
<script type='text/javascript' src='js/cart-fragments.min.js?ver=2.6.14'></script>
<script type='text/javascript' src='js/superfish.js'></script>
<script type='text/javascript' src='js/core.reviews.js'></script>
<script type='text/javascript' src='js/core.utils.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var CHARITY_IS_HOPE_STORAGE = {"system_message":{"message":"","status":"","header":""},"theme_font":"Open Sans","theme_color":"#333333","theme_bg_color":"#ffffff","strings":{"ajax_error":"Invalid server answer","bookmark_add":"Add the bookmark","bookmark_added":"Current page has been successfully added to the bookmarks. You can see it in the right panel on the tab &#039;Bookmarks&#039;","bookmark_del":"Delete this bookmark","bookmark_title":"Enter bookmark title","bookmark_exists":"Current page already exists in the bookmarks list","search_error":"Error occurs in AJAX search! Please, type your query and press search icon for the traditional search way.","email_confirm":"On the e-mail address &quot;%s&quot; we sent a confirmation email. Please, open it and click on the link.","reviews_vote":"Thanks for your vote! New average rating is:","reviews_error":"Error saving your vote! Please, try again later.","error_like":"Error saving your like! Please, try again later.","error_global":"Global error text","name_empty":"The name can&#039;t be empty","name_long":"Too long name","email_empty":"Too short (or empty) email address","email_long":"Too long email address","email_not_valid":"Invalid email address","subject_empty":"The subject can&#039;t be empty","subject_long":"Too long subject","text_empty":"The message text can&#039;t be empty","text_long":"Too long message text","send_complete":"Send message complete!","send_error":"Transmit failed!","geocode_error":"Geocode was not successful for the following reason:","googlemap_not_avail":"Google map API not available!","editor_save_success":"Post content saved!","editor_save_error":"Error saving post data!","editor_delete_post":"You really want to delete the current post?","editor_delete_post_header":"Delete post","editor_delete_success":"Post deleted!","editor_delete_error":"Error deleting post!","editor_caption_cancel":"Cancel","editor_caption_close":"Close"},"ajax_url":"http:\/\/charity-is-hope.themerex.net\/wp-admin\/admin-ajax.php","ajax_nonce":"686ea19c69","site_url":"http:\/\/charity-is-hope.themerex.net","site_protocol":"http","vc_edit_mode":"","accent1_color":"#84c54e","accent1_hover":"#ff7e27","slider_height":"100","user_logged_in":"","toc_menu":"hide","toc_menu_home":"","toc_menu_top":"","menu_fixed":"1","menu_mobile":"1024","menu_hover":"fade","button_hover":"default","input_hover":"default","demo_time":"0","media_elements_enabled":"1","ajax_search_enabled":"1","ajax_search_min_length":"3","ajax_search_delay":"200","css_animation":"1","menu_animation_in":"fadeInUpSmall","menu_animation_out":"fadeOutDownSmall","popup_engine":"magnific","email_mask":"^([a-zA-Z0-9_\\-]+\\.)*[a-zA-Z0-9_\\-]+@[a-z0-9_\\-]+(\\.[a-z0-9_\\-]+)*\\.[a-z]{2,6}$","contacts_maxlength":"1000","comments_maxlength":"1000","remember_visitors_settings":"","admin_mode":"","isotope_resize_delta":"0.3","error_message_box":null,"viewmore_busy":"","video_resize_inited":"","top_panel_height":"0"};
/* ]]> */
</script>
<script type='text/javascript' src='js/core.init.js'></script>
<script type='text/javascript' src='js/theme.init.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var mejsL10n = {"language":"en-US","strings":{"Close":"Close","Fullscreen":"Fullscreen","Turn off Fullscreen":"Turn off Fullscreen","Go Fullscreen":"Go Fullscreen","Download File":"Download File","Download Video":"Download Video","Play":"Play","Pause":"Pause","Captions\/Subtitles":"Captions\/Subtitles","None":"None","Time Slider":"Time Slider","Skip back %1 seconds":"Skip back %1 seconds","Video Player":"Video Player","Audio Player":"Audio Player","Volume Slider":"Volume Slider","Mute Toggle":"Mute Toggle","Unmute":"Unmute","Mute":"Mute","Use Up\/Down Arrow keys to increase or decrease volume.":"Use Up\/Down Arrow keys to increase or decrease volume.","Use Left\/Right Arrow keys to advance one second, Up\/Down arrows to advance ten seconds.":"Use Left\/Right Arrow keys to advance one second, Up\/Down arrows to advance ten seconds."}};
var _wpmejsSettings = {"pluginPath":"\/wp-includes\/js\/mediaelement\/"};
/* ]]> */
</script>
<script type='text/javascript' src='js/mediaelement-and-player.min.js?ver=2.22.0'></script>
<script type='text/javascript' src='js/wp-mediaelement.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='js/trx_donations.min.js'></script>
<script type='text/javascript' src='js/wp-embed.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='js/theme.shortcodes.js'></script>
<script type='text/javascript' src='js/core.messages.js'></script>
<script type='text/javascript' src='js/swiper.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var mc4wp_forms_config = [];
/* ]]> */
</script>
<script type='text/javascript' src='js/forms-api.min.js?ver=4.1.0'></script>
<!--[if lte IE 9]>
<script type='text/javascript' src='js/placeholders.min.js?ver=4.1.0'></script>
<![endif]-->
<script type="text/css" id="tmpl-tribe_customizer_css">.tribe-events-list .tribe-events-loop .tribe-event-featured,
				.tribe-events-list #tribe-events-day.tribe-events-loop .tribe-event-featured,
				.type-tribe_events.tribe-events-photo-event.tribe-event-featured .tribe-events-photo-event-wrap,
				.type-tribe_events.tribe-events-photo-event.tribe-event-featured .tribe-events-photo-event-wrap:hover {
					background-color: #0ea0d7;
				}

				#tribe-events-content table.tribe-events-calendar .type-tribe_events.tribe-event-featured {
					background-color: #0ea0d7;
				}

				.tribe-events-list-widget .tribe-event-featured,
				.tribe-events-venue-widget .tribe-event-featured,
				.tribe-mini-calendar-list-wrapper .tribe-event-featured,
				.tribe-events-adv-list-widget .tribe-event-featured .tribe-mini-calendar-event {
					background-color: #0ea0d7;
				}

				.tribe-grid-body .tribe-event-featured.tribe-events-week-hourly-single {
					background-color: rgba(14,160,215, .7 );
					border-color: #0ea0d7;
				}

				.tribe-grid-body .tribe-event-featured.tribe-events-week-hourly-single:hover {
					background-color: #0ea0d7;
				}</script><style type="text/css" id="tribe_customizer_css">.tribe-events-list .tribe-events-loop .tribe-event-featured,.tribe-events-list #tribe-events-day.tribe-events-loop .tribe-event-featured,.type-tribe_events.tribe-events-photo-event.tribe-event-featured .tribe-events-photo-event-wrap,.type-tribe_events.tribe-events-photo-event.tribe-event-featured .tribe-events-photo-event-wrap:hover{background-color:#0ea0d7;}#tribe-events-content table.tribe-events-calendar .type-tribe_events.tribe-event-featured{background-color:#0ea0d7;}.tribe-events-list-widget .tribe-event-featured,.tribe-events-venue-widget .tribe-event-featured,.tribe-mini-calendar-list-wrapper .tribe-event-featured,.tribe-events-adv-list-widget .tribe-event-featured .tribe-mini-calendar-event{background-color:#0ea0d7;}.tribe-grid-body .tribe-event-featured.tribe-events-week-hourly-single{background-color:rgba(14,160,215,.7);border-color:#0ea0d7;}.tribe-grid-body .tribe-event-featured.tribe-events-week-hourly-single:hover{background-color:#0ea0d7;}</style>
</body>
</html>
<html lang="en-US" class="scheme_original">
<head>
<title>Sponsor Ecology Today &#8211; Hope</title>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="format-detection" content="telephone=no">
<link rel="profile" href="http://gmpg.org/xfn/11"/>
<link rel="pingback" href="http://charity-is-hope.themerex.net/xmlrpc.php"/>
<link rel='dns-prefetch' href='//fonts.googleapis.com'/>
<link rel='dns-prefetch' href='//s.w.org'/>
<link rel="alternate" type="application/rss+xml" title="Hope &raquo; Feed" href="http://charity-is-hope.themerex.net/feed/"/>
<link rel="alternate" type="application/rss+xml" title="Hope &raquo; Comments Feed" href="http://charity-is-hope.themerex.net/comments/feed/"/>
<link rel="alternate" type="text/calendar" title="Hope &raquo; iCal Feed" href="http://charity-is-hope.themerex.net/events/?ical=1"/>
<meta property="og:image" content="image/image-13.jpg"/>
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/svg\/","svgExt":".svg","source":{"concatemoji":"js/wp-emoji-release.min.js?ver=4.7.3"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),!(j.toDataURL().length<3e3)&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,65039,8205,55356,57096),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,55356,57096),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55357,56425,55356,57341,8205,55357,56507),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55357,56425,55356,57341,55357,56507),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
<style type="text/css">img.wp-smiley,img.emoji{display:inline!important;border:none!important;box-shadow:none!important;height:1em!important;width:1em!important;margin:0 .07em!important;vertical-align:-0.1em!important;background:none!important;padding:0!important;}</style>
<link property="stylesheet" rel='stylesheet' id='essential-grid-plugin-settings-css' href='css/settings.css?ver=2.0.9.1' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='tp-open-sans-css' href='http://fonts.googleapis.com/css?family=Open+Sans%3A300%2C400%2C600%2C700%2C800&#038;ver=4.7.3' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='tp-raleway-css' href='http://fonts.googleapis.com/css?family=Raleway%3A100%2C200%2C300%2C400%2C500%2C600%2C700%2C800%2C900&#038;ver=4.7.3' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='tp-droid-serif-css' href='http://fonts.googleapis.com/css?family=Droid+Serif%3A400%2C700&#038;ver=4.7.3' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='rs-plugin-settings-css' href='css/settings.css?ver=5.4.1' type='text/css' media='all'/>
<style id='rs-plugin-settings-inline-css' type='text/css'>#rs-demo-id{}</style>
<link property="stylesheet" rel='stylesheet' id='woocommerce-layout-css' href='css/woocommerce-layout.css?ver=2.6.14' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='woocommerce-smallscreen-css' href='css/woocommerce-smallscreen.css?ver=2.6.14' type='text/css' media='only screen and (max-width: 768px)'/>
<link property="stylesheet" rel='stylesheet' id='woocommerce-general-css' href='css/woocommerce.css?ver=2.6.14' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-font-WCManoNegraBta-style-css' href='css/stylesheet.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-font-google_fonts-style-css' href='//fonts.googleapis.com/css?family=Open%2BSans%3A300%2C300italic%2C400%2C400italic%2C700%2C700italic%26subset%3Dlatin%2Clatin-ext' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-fontello-style-css' href='css/fontello.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-main-style-css' href='css/style.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-animation-style-css' href='css/core.animation.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-shortcodes-style-css' href='css/theme.shortcodes.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-theme-style-css' href='css/theme.css' type='text/css' media='all'/>
<style id='charity_is_hope-theme-style-inline-css' type='text/css'>.contacts_wrap .logo img{height:121px}</style>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-plugin.tribe-events-style-css' href='css/plugin.tribe-events.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-plugin.donations-style-css' href='css/plugin.donations.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-responsive-style-css' href='css/responsive.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='mediaelement-css' href='css/mediaelementplayer.min.css?ver=2.22.0' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='wp-mediaelement-css' href='css/wp-mediaelement.min.css?ver=4.7.3' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='trx-donations-style-css' href='css/trx_donations.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='trx-donations-socials-share-style-css' href='css/socials-share-embedded.css' type='text/css' media='all'/>
<script type='text/javascript' src='js/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='js/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' src='js/lightbox.js?ver=2.0.9.1'></script>
<script type='text/javascript' src='js/jquery.themepunch.tools.min.js?ver=2.0.9.1'></script>
<script type='text/javascript' src='js/jquery.themepunch.essential.min.js?ver=2.0.9.1'></script>
<script type='text/javascript' src='js/jquery.themepunch.revolution.min.js?ver=5.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/donation\/sponsor-ecology-today\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View Cart","cart_url":"http:\/\/charity-is-hope.themerex.net\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
<script type='text/javascript' src='js/add-to-cart.min.js?ver=2.6.14'></script>
<script type='text/javascript' src='js/woocommerce-add-to-cart.js?ver=5.1'></script>
<script type='text/javascript' src='js/modernizr.min.js'></script>
<link rel='https://api.w.org/' href='http://charity-is-hope.themerex.net/wp-json/'/>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://charity-is-hope.themerex.net/xmlrpc.php?rsd"/>
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://charity-is-hope.themerex.net/wp-includes/wlwmanifest.xml"/>
<link rel='prev' title='Education for Everyone' href='http://charity-is-hope.themerex.net/donation/education-for-everyone/'/>
<meta name="generator" content="WordPress 4.7.3"/>
<meta name="generator" content="WooCommerce 2.6.14"/>
<link rel="canonical" href="http://charity-is-hope.themerex.net/donation/sponsor-ecology-today/"/>
<link rel='shortlink' href='http://charity-is-hope.themerex.net/?p=407'/>
<link rel="alternate" type="application/json+oembed" href="http://charity-is-hope.themerex.net/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fcharity-is-hope.themerex.net%2Fdonation%2Fsponsor-ecology-today%2F"/>
<link rel="alternate" type="text/xml+oembed" href="http://charity-is-hope.themerex.net/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fcharity-is-hope.themerex.net%2Fdonation%2Fsponsor-ecology-today%2F&#038;format=xml"/>
<script type="text/javascript">
			var ajaxRevslider;
			
			jQuery(document).ready(function() {
				// CUSTOM AJAX CONTENT LOADING FUNCTION
				ajaxRevslider = function(obj) {
				
					// obj.type : Post Type
					// obj.id : ID of Content to Load
					// obj.aspectratio : The Aspect Ratio of the Container / Media
					// obj.selector : The Container Selector where the Content of Ajax will be injected. It is done via the Essential Grid on Return of Content
					
					var content = "";

					data = {};
					
					data.action = 'revslider_ajax_call_front';
					data.client_action = 'get_slider_html';
					data.token = '1d46f6bc72';
					data.type = obj.type;
					data.id = obj.id;
					data.aspectratio = obj.aspectratio;
					
					// SYNC AJAX REQUEST
					jQuery.ajax({
						type:"post",
						url:"http://charity-is-hope.themerex.net/wp-admin/admin-ajax.php",
						dataType: 'json',
						data:data,
						async:false,
						success: function(ret, textStatus, XMLHttpRequest) {
							if(ret.success == true)
								content = ret.data;								
						},
						error: function(e) {
							console.log(e);
						}
					});
					
					 // FIRST RETURN THE CONTENT WHEN IT IS LOADED !!
					 return content;						 
				};
				
				// CUSTOM AJAX FUNCTION TO REMOVE THE SLIDER
				var ajaxRemoveRevslider = function(obj) {
					return jQuery(obj.selector+" .rev_slider").revkill();
				};

				// EXTEND THE AJAX CONTENT LOADING TYPES WITH TYPE AND FUNCTION
				var extendessential = setInterval(function() {
					if (jQuery.fn.tpessential != undefined) {
						clearInterval(extendessential);
						if(typeof(jQuery.fn.tpessential.defaults) !== 'undefined') {
							jQuery.fn.tpessential.defaults.ajaxTypes.push({type:"revslider",func:ajaxRevslider,killfunc:ajaxRemoveRevslider,openAnimationSpeed:0.3});   
							// type:  Name of the Post to load via Ajax into the Essential Grid Ajax Container
							// func: the Function Name which is Called once the Item with the Post Type has been clicked
							// killfunc: function to kill in case the Ajax Window going to be removed (before Remove function !
							// openAnimationSpeed: how quick the Ajax Content window should be animated (default is 0.3)
						}
					}
				},30);
			});
</script>
<meta name="generator" content="Powered by Visual Composer - drag and drop page builder for WordPress."/>
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="css/vc_lte_ie9.min.css" media="screen"><![endif]--><meta name="generator" content="Powered by Slider Revolution 5.4.1 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface."/>
<link rel="icon" href="http://charity-is-hope.themerex.net/wp-content/uploads/2016/09/cropped-512x512-150x150.png" sizes="32x32"/>
<link rel="icon" href="http://charity-is-hope.themerex.net/wp-content/uploads/2016/09/cropped-512x512-300x300.png" sizes="192x192"/>
<link rel="apple-touch-icon-precomposed" href="http://charity-is-hope.themerex.net/wp-content/uploads/2016/09/cropped-512x512-180x180.png"/>
<meta name="msapplication-TileImage" content="http://charity-is-hope.themerex.net/wp-content/uploads/2016/09/cropped-512x512-300x300.png"/>
<noscript><style type="text/css">.wpb_animate_when_almost_visible{opacity:1;}</style></noscript></head>
<body class="donation-template-default single single-donation postid-407 tribe-no-js charity_is_hope_body body_style_wide top_style_header_1 body_filled article_style_stretch layout_single-standard template_single-standard scheme_original top_panel_show top_panel_above sidebar_hide sidebar_outer_hide wpb-js-composer js-comp-ver-5.1 vc_responsive">
<a id="toc_home" class="sc_anchor" title="Home" data-description="&lt;i&gt;Return to Home&lt;/i&gt; - &lt;br&gt;navigate to home page of the site" data-icon="icon-home" data-url="http://charity-is-hope.themerex.net/" data-separator="yes"></a><a id="toc_top" class="sc_anchor" title="To Top" data-description="&lt;i&gt;Back to top&lt;/i&gt; - &lt;br&gt;scroll to top of the page" data-icon="icon-double-up" data-url="" data-separator="yes"></a>
<div class="body_wrap">
<div class="page_wrap">
<div class="top_panel_fixed_wrap"></div>
<jsp:include page="U_header.jsp"></jsp:include>
<!-- <header class="top_panel_wrap top_panel_style_1 scheme_original">
<div class="top_panel_wrap_inner top_panel_inner_style_1 top_panel_position_above">
<div class="top_panel_middle">
<div class="content_wrap">
<div class="contact_logo">
<div class="logo">
<a href="http://charity-is-hope.themerex.net/"><img src="image/logo.png" class="logo_main" alt="" width="118" height="69"></a>
</div>
</div>
<div class="contact_button">
<a class="first_button" href="http://charity-is-hope.themerex.net/our-causes/">Donate</a><a class="second_button" href="http://charity-is-hope.themerex.net/about-us-style-1/">Become Volunteer</a> </div>
<div class="contact_socials">
<div class="sc_socials sc_socials_type_icons sc_socials_shape_round sc_socials_size_tiny"><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_twitter"><span class="icon-twitter"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_facebook"><span class="icon-facebook"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_vine"><span class="icon-vine"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_youtube"><span class="icon-youtube"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_pinterest-circled"><span class="icon-pinterest-circled"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_gplus"><span class="icon-gplus"></span></a></div></div> </div>
</div>
</div>
<div class="top_panel_bottom">
<div class="content_wrap clearfix">
<nav class="menu_main_nav_area menu_hover_fade">
<ul id="menu_main" class="menu_main_nav"><li id="menu-item-31" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-has-children menu-item-31"><a href="http://charity-is-hope.themerex.net/"><span>Home</span></a>
<ul class="sub-menu">
<li id="menu-item-37" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-37"><a href="http://charity-is-hope.themerex.net/"><span>Home 1</span></a></li>
<li id="menu-item-38" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-38"><a href="http://charity-is-hope.themerex.net/home-2/"><span>Home 2</span></a></li>
<li id="menu-item-765" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-765"><a href="http://charity-is-hope.themerex.net/home-3/"><span>Home 3</span></a></li>
<li id="menu-item-785" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-785"><a href="http://charity-is-hope.themerex.net/home-4-boxed/"><span>Home Boxed</span></a></li>
</ul>
</li>
<li id="menu-item-46" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-46"><a href="#"><span>Features</span></a>
<ul class="sub-menu">
<li id="menu-item-43" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-43"><a href="http://charity-is-hope.themerex.net/typography/"><span>Typography</span></a></li>
<li id="menu-item-41" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-41"><a href="http://charity-is-hope.themerex.net/shortcodes/"><span>Shortcodes</span></a></li>
<li id="menu-item-451" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-451"><a href="#"><span>Gallery</span></a>
<ul class="sub-menu">
<li id="menu-item-458" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-458"><a href="http://charity-is-hope.themerex.net/grid-gallery/"><span>Grid</span></a></li>
<li id="menu-item-457" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-457"><a href="http://charity-is-hope.themerex.net/cobbles-gallery/"><span>Cobbles</span></a></li>
<li id="menu-item-461" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-461"><a href="http://charity-is-hope.themerex.net/masonry-gallery/"><span>Masonry</span></a></li>
</ul>
</li>
<li id="menu-item-449" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-449"><a href="http://charity-is-hope.themerex.net/events/"><span>Events</span></a></li>
<li id="menu-item-47" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-47"><a href="#"><span>Help</span></a>
<ul class="sub-menu">
<li id="menu-item-42" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-42"><a href="http://charity-is-hope.themerex.net/support/"><span>Support</span></a></li>
<li id="menu-item-36" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-36"><a href="http://charity-is-hope.themerex.net/customization/"><span>Customization</span></a></li>
<li id="menu-item-44" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-44"><a href="http://charity-is-hope.themerex.net/video-tutorials/"><span>Video Tutorials</span></a></li>
</ul>
</li>
</ul>
</li>
<li id="menu-item-45" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-45"><a href="#"><span>About Us</span></a>
<ul class="sub-menu">
<li id="menu-item-32" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32"><a href="http://charity-is-hope.themerex.net/about-us-style-1/"><span>Style 1</span></a></li>
<li id="menu-item-33" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-33"><a href="http://charity-is-hope.themerex.net/about-us-style-2/"><span>Style 2</span></a></li>
</ul>
</li>
<li id="menu-item-39" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-39"><a href="http://charity-is-hope.themerex.net/our-causes/"><span>Our Causes</span></a>
<ul class="sub-menu">
<li id="menu-item-687" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-687"><a href="http://charity-is-hope.themerex.net/our-causes/"><span>Our Causes</span></a></li>
<li id="menu-item-686" class="menu-item menu-item-type-post_type menu-item-object-donation current-menu-item menu-item-686"><a href="http://charity-is-hope.themerex.net/donation/sponsor-ecology-today/"><span>Single Cause</span></a></li>
</ul>
</li>
<li id="menu-item-34" class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-has-children menu-item-34"><a href="http://charity-is-hope.themerex.net/all-posts/"><span>News</span></a>
<ul class="sub-menu">
<li id="menu-item-244" class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-244"><a href="http://charity-is-hope.themerex.net/all-posts/"><span>Classic With Sidebar</span></a></li>
<li id="menu-item-243" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-243"><a href="http://charity-is-hope.themerex.net/classic-without-sidebar/"><span>Classic Without Sidebar</span></a></li>
<li id="menu-item-257" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-257"><a href="#"><span>Masonry Layouts</span></a>
<ul class="sub-menu">
<li id="menu-item-256" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-256"><a href="http://charity-is-hope.themerex.net/masonry-2-columns/"><span>2 columns</span></a></li>
<li id="menu-item-255" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-255"><a href="http://charity-is-hope.themerex.net/masonry-3-columns/"><span>3 columns</span></a></li>
</ul>
</li>
<li id="menu-item-262" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-262"><a href="#"><span>Portfolio Layouts</span></a>
<ul class="sub-menu">
<li id="menu-item-261" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-261"><a href="http://charity-is-hope.themerex.net/portfolio-2-columns/"><span>2 columns</span></a></li>
<li id="menu-item-267" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-267"><a href="http://charity-is-hope.themerex.net/potfolio-3-columns/"><span>3 columns</span></a></li>
</ul>
</li>
</ul>
</li>
<li id="menu-item-40" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-40"><a href="http://charity-is-hope.themerex.net/shop/"><span>Shop</span></a></li>
<li id="menu-item-35" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-35"><a href="http://charity-is-hope.themerex.net/contacts/"><span>Contacts</span></a></li>
</ul> </nav>
<div class="search_wrap search_style_fullscreen search_state_closed">
<div class="search_form_wrap">
<form role="search" method="get" class="search_form" action="http://charity-is-hope.themerex.net/">
<button type="submit" class="search_submit icon-search" title="Open search"></button>
<input type="text" class="search_field" placeholder="Search" value="" name="s"/><a class="search_close icon-cancel"></a></form>
</div></div> </div>
</div>
</div>
</header> -->
<div class="header_mobile">
<div class="content_wrap">
<div class="menu_button icon-menu"></div>
<div class="logo">
<a href="http://charity-is-hope.themerex.net/"><img src="image/logo.png" class="logo_main" alt="" width="118" height="69"></a>
</div>
</div>
<div class="side_wrap">
<div class="close">Close</div>
<div class="panel_top">
<nav class="menu_main_nav_area">
<ul id="menu_mobile" class="menu_main_nav"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-has-children menu-item-31"><a href="http://charity-is-hope.themerex.net/"><span>Home</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-37"><a href="http://charity-is-hope.themerex.net/"><span>Home 1</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-38"><a href="http://charity-is-hope.themerex.net/home-2/"><span>Home 2</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-765"><a href="http://charity-is-hope.themerex.net/home-3/"><span>Home 3</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-785"><a href="http://charity-is-hope.themerex.net/home-4-boxed/"><span>Home Boxed</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-46"><a href="#"><span>Features</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-43"><a href="http://charity-is-hope.themerex.net/typography/"><span>Typography</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-41"><a href="http://charity-is-hope.themerex.net/shortcodes/"><span>Shortcodes</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-451"><a href="#"><span>Gallery</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-458"><a href="http://charity-is-hope.themerex.net/grid-gallery/"><span>Grid</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-457"><a href="http://charity-is-hope.themerex.net/cobbles-gallery/"><span>Cobbles</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-461"><a href="http://charity-is-hope.themerex.net/masonry-gallery/"><span>Masonry</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-449"><a href="http://charity-is-hope.themerex.net/events/"><span>Events</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-47"><a href="#"><span>Help</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-42"><a href="http://charity-is-hope.themerex.net/support/"><span>Support</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-36"><a href="http://charity-is-hope.themerex.net/customization/"><span>Customization</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-44"><a href="http://charity-is-hope.themerex.net/video-tutorials/"><span>Video Tutorials</span></a></li>
</ul>
</li>
</ul>
</li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-45"><a href="#"><span>About Us</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32"><a href="http://charity-is-hope.themerex.net/about-us-style-1/"><span>Style 1</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-33"><a href="http://charity-is-hope.themerex.net/about-us-style-2/"><span>Style 2</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-39"><a href="http://charity-is-hope.themerex.net/our-causes/"><span>Our Causes</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-687"><a href="http://charity-is-hope.themerex.net/our-causes/"><span>Our Causes</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-donation current-menu-item menu-item-686"><a href="http://charity-is-hope.themerex.net/donation/sponsor-ecology-today/"><span>Single Cause</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-has-children menu-item-34"><a href="http://charity-is-hope.themerex.net/all-posts/"><span>News</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-244"><a href="http://charity-is-hope.themerex.net/all-posts/"><span>Classic With Sidebar</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-243"><a href="http://charity-is-hope.themerex.net/classic-without-sidebar/"><span>Classic Without Sidebar</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-257"><a href="#"><span>Masonry Layouts</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-256"><a href="http://charity-is-hope.themerex.net/masonry-2-columns/"><span>2 columns</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-255"><a href="http://charity-is-hope.themerex.net/masonry-3-columns/"><span>3 columns</span></a></li>
</ul>
</li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-262"><a href="#"><span>Portfolio Layouts</span></a>
<ul class="sub-menu">
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-261"><a href="http://charity-is-hope.themerex.net/portfolio-2-columns/"><span>2 columns</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-267"><a href="http://charity-is-hope.themerex.net/potfolio-3-columns/"><span>3 columns</span></a></li>
</ul>
</li>
</ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-40"><a href="http://charity-is-hope.themerex.net/shop/"><span>Shop</span></a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-35"><a href="http://charity-is-hope.themerex.net/contacts/"><span>Contacts</span></a></li>
</ul> </nav>
<div class="search_wrap search_style_ search_state_fixed search_ajax">
<div class="search_form_wrap">
<form role="search" method="get" class="search_form" action="http://charity-is-hope.themerex.net/">
<button type="submit" class="search_submit icon-search" title="Start search"></button>
<input type="text" class="search_field" placeholder="Search" value="" name="s"/></form>
</div><div class="search_results widget_area scheme_original"><a class="search_results_close icon-cancel"></a><div class="search_results_content"></div></div></div> </div>
</div>
<div class="mask"></div>
</div>
<div class="post_body">
<div class="post_header entry-header">
<h1 class="post_title entry-title">Sponsor Ecology Today</h1> <div class="post_info">

</div>
</div> 
<div class="post_content entry-content">
<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisialiquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
<h4 style="color:#75c037;margin-bottom: -10px;">Donation form</h4>
<div id="sc_donations_form" class="sc_donations_form"><form id="sc_donations_form_form" method="post" action="https://www.sandbox.paypal.com/cgi-bin/webscr"><input type="hidden" name="cmd" value="_ext-enter"><input type="hidden" name="redirect_cmd" value="_xclick"><input type="hidden" name="business" value="you@youremail.com"><input type="hidden" name="item_name" value="Sponsor Ecology Today"><input type="hidden" name="item_number" value="407"><input type="hidden" name="currency_code" value="USD"><input type="hidden" name="quantity" value="1"><input type="hidden" name="no_shipping" value="1"><input type="hidden" name="first_name" value=""><input type="hidden" name="last_name" value=""><input type="hidden" name="on0" value="buyer_info"><input type="hidden" name="os0" value=""><input type="hidden" name="on1" value="message"><input type="hidden" name="notify_url" value="https://charity-is-hope.themerex.net/?trx_donations_pp_answer=notify"><input type="hidden" name="return" value="http://charity-is-hope.themerex.net/donation/sponsor-ecology-today/?trx_donations_pp_answer=success"><input type="hidden" name="cancel_return" value="http://charity-is-hope.themerex.net/donation/sponsor-ecology-today/?trx_donations_pp_answer=cancel"><img src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1" alt=""><div class="sc_donations_form_field sc_donations_form_field_amount"><label class="required sc_donations_form_label" for="sc_donations_form_amount_5">Amount</label><input id="sc_donations_form_amount_5" type="radio" name="amount_value" value="5" checked="checked"><label class="sc_donations_form_amount_label" for="sc_donations_form_amount_5">5.00 USD</label><input id="sc_donations_form_amount_10" type="radio" name="amount_value" value="10"><label class="sc_donations_form_amount_label" for="sc_donations_form_amount_10">10.00 USD</label><input id="sc_donations_form_amount_20" type="radio" name="amount_value" value="20"><label class="sc_donations_form_amount_label" for="sc_donations_form_amount_20">20.00 USD</label><input id="sc_donations_form_amount_50" type="radio" name="amount_value" value="50"><label class="sc_donations_form_amount_label" for="sc_donations_form_amount_50">50.00 USD</label><br><input id="sc_donations_form_amount_0" type="radio" name="amount_value" value="0"><label class="sc_donations_form_amount_label" for="sc_donations_form_amount_0">Other:</label><input id="sc_donations_form_amount" class="sc_donations_form_amount" type="text" name="amount" value="5"> USD</div><div class="sc_donations_form_field sc_donations_form_field_name"><label class="required sc_donations_form_label" for="sc_donations_form_name">Name</label><input id="sc_donations_form_name" type="text" name="name" placeholder="Name *"></div><div class="sc_donations_form_field sc_donations_form_field_email"><label class="required sc_donations_form_label" for="sc_donations_form_email">E-mail</label><input id="sc_donations_form_email" type="text" name="email" placeholder="E-mail *"></div><div class="sc_donations_form_field sc_donations_form_field_site"><label class="sc_donations_form_label" for="sc_donations_form_site">Website</label><input id="sc_donations_form_site" type="text" name="site" placeholder="Website"></div><div class="sc_donations_form_field sc_donations_form_field_message"><label class="sc_donations_form_label" for="sc_donations_form_message">Message (up to 200 characters)</label><textarea id="sc_donations_form_message" name="os1" maxlength="200" placeholder="Message"></textarea></div><div class="sc_donations_form_field sc_donations_form_field_rating"><input id="sc_donations_form_rating" type="checkbox" name="show_in_rating" value="1" checked="checked"><label class="sc_donations_form_rating_label" for="sc_donations_form_rating">Show me in the supporters rating</label></div><div class="sc_donations_form_field sc_donations_form_field_note icon_share-info-circled"><b>Please note!</b> Due to the peculiarities of payment confirmation mechanism in PayPal, in order for your donation to be registered on our website, you must click on the <b><u>"Return to you@youremail.com"</u></b> link after the payment on the PayPal payment page. Thank you for your understanding.</div><div class="sc_donations_form_field sc_donations_form_field_button"><input type="button" class="sc_donations_form_submit" value="Donation"></div></form></div>
</div> 
<!-- <div class="post_footer entry-footer">
<div class="sc_socials_share"><span class="sc_socials_share_caption">Share:</span><a href="https://twitter.com/intent/tweet?text=&#038;url=" class="sc_socials_share_item" onclick="window.open('https://twitter.com/intent/tweet?text=&#038;url=', '_blank', 'scrollbars=0, resizable=1, menubar=0, left=100, top=100, width=480, height=400, toolbar=0, status=0'); return false;"><span class="icon_share-twitter"></span></a><a href="http://www.facebook.com/sharer.php?s=100&#038;p%5Burl%5D=&#038;p%5Btitle%5D=&#038;p%5Bsummary%5D=&#038;p%5Bimages%5D%5B0%5D=" class="sc_socials_share_item" onclick="window.open('http://www.facebook.com/sharer.php?s=100&#038;p%5Burl%5D=&#038;p%5Btitle%5D=&#038;p%5Bsummary%5D=&#038;p%5Bimages%5D%5B0%5D=', '_blank', 'scrollbars=0, resizable=1, menubar=0, left=100, top=100, width=480, height=400, toolbar=0, status=0'); return false;"><span class="icon_share-facebook"></span></a></div> </div> 
</div>  -->
</article>
</div>  
</div>  
</div>  
<jsp:include page="U_footer.jsp"></jsp:include>
<!-- <footer class="footer_wrap widget_area scheme_dark">
<div class="footer_wrap_inner widget_area_inner">
<div class="content_wrap">
<div class="columns_wrap">
<div class="column-1_2">
<div class="contacts_wrap">
<div class="contacts_wrap_inner">
<div class="logo">
<a href="http://charity-is-hope.themerex.net/"><img src="image/logo-footer.png" class="logo_footer" alt="" width="237" height="121"></a>
</div>
<div class="contacts_address">
<p>Nulla fringilla orci mauris, nec tempor lectus consequat ac. Nulla consectetur magna in velit pellentesque egestas sed eget nibh. Fusce nec viverra dolor. Phasellus faucibus egestas nulla, vel suscipit metus maximus id. Phasellus blandit porttitor placerat. <br/><br/>Donec malesuada ultricies ante at congue. Integer nec faucibus quam. Phasellus posuere nisi ac.<br/><br/><span style="color: #ffffff">hope@companyname.com</span></p> </div>
</div>  
</div>  
</div><div class="column-1_2 width_right">
<div class="columns_wrap">
<aside id="text-4" class="widget_number_1 widget widget_text"><h5 class="widget_title">our partners</h5> <div class="textwidget"><div id="sc_clients_1898579239_wrap" class="sc_clients_wrap"><div id="sc_clients_1898579239" class="sc_clients sc_clients_style_clients-1 " style="width:100%;"><div class="sc_slider_swiper swiper-slider-container sc_slider_nopagination sc_slider_nocontrols" data-interval="7149" data-slides-per-view="5" data-slides-min-width="100"><div class="slides swiper-wrapper"><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_1" class="sc_clients_item sc_clients_item_1 odd first">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-2.png" src="image/partner-2.png"></div>
</div>
</div><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_2" class="sc_clients_item sc_clients_item_2 even">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-1.png" src="image/partner-1.png"></div>
</div>
</div><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_3" class="sc_clients_item sc_clients_item_3 odd">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-3.png" src="image/partner-3.png"></div>
</div>
</div><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_4" class="sc_clients_item sc_clients_item_4 even">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-4.png" src="image/partner-4.png"></div>
</div>
</div><div class="swiper-slide" data-style="width:100%;" style="width:100%;"> <div id="sc_clients_1898579239_5" class="sc_clients_item sc_clients_item_5 odd">
<div class="sc_client_image"><img class="wp-post-image" width="90" height="90" alt="partner-5.png" src="image/partner-5.png"></div>
</div>
</div></div><div class="sc_slider_controls_wrap"><a class="sc_slider_prev" href="#"></a><a class="sc_slider_next" href="#"></a></div><div class="sc_slider_pagination_wrap"></div></div></div> </div> </div>
</aside><aside id="text-3" class="widget_number_2 widget widget_text"><h5 class="widget_title">newslettter sign-up</h5> <div class="textwidget"><script type="text/javascript">(function() {
	if (!window.mc4wp) {
		window.mc4wp = {
			listeners: [],
			forms    : {
				on: function (event, callback) {
					window.mc4wp.listeners.push({
						event   : event,
						callback: callback
					});
				}
			}
		}
	}
})();
</script> <form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-532" method="post" data-id="532" data-name="form"><div class="mc4wp-form-fields"><input type="email" name="EMAIL" placeholder="Email" required /><input type="submit" value="Subcribe"/><div style="display: none;"><input type="text" name="_mc4wp_honeypot" value="" tabindex="-1" autocomplete="off"/></div><input type="hidden" name="_mc4wp_timestamp" value="1490102669"/><input type="hidden" name="_mc4wp_form_id" value="532"/><input type="hidden" name="_mc4wp_form_element_id" value="mc4wp-form-1"/></div><div class="mc4wp-response"></div></form> </div>
</aside><aside id="charity_is_hope_widget_socials-3" class="widget_number_3 widget widget_socials"><h5 class="widget_title">Connect With Us</h5> <div class="widget_inner">
<div class="sc_socials sc_socials_type_icons sc_socials_shape_square sc_socials_size_small"><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_twitter"><span class="icon-twitter"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_facebook"><span class="icon-facebook"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_vine"><span class="icon-vine"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_youtube"><span class="icon-youtube"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_pinterest-circled"><span class="icon-pinterest-circled"></span></a></div><div class="sc_socials_item"><a href="#" target="_blank" class="social_icons social_gplus"><span class="icon-gplus"></span></a></div></div> </div>
</aside> </div></div>
</div>  
</div>  
</div>  
</footer>  --> 
<div class="copyright_wrap copyright_style_text  scheme_original">
<div class="copyright_wrap_inner">
<div class="content_wrap">
<div class="copyright_text"><p><a href="https://themeforest.net/user/themerex/portfolio">ThemeREX</a> © 2016 All Rights Reserved. <a href="http://themerex.net/terms-of-service/">Terms of Use</a> and <a href="http://themerex.net/privacy-policy/">Privacy Policy</a></p></div>
</div>
</div>
</div>
</div>  
</div>  
<a href="#" class="scroll_to_top icon-up" title="Scroll to top"></a><div class="custom_html_section"></div> <script>
		( function ( body ) {
			'use strict';
			body.className = body.className.replace( /\btribe-no-js\b/, 'tribe-js' );
		} )( document.body );
		</script>
<script type='text/javascript'> /* <![CDATA[ */var tribe_l10n_datatables = {"aria":{"sort_ascending":": activate to sort column ascending","sort_descending":": activate to sort column descending"},"length_menu":"Show _MENU_ entries","empty_table":"No data available in table","info":"Showing _START_ to _END_ of _TOTAL_ entries","info_empty":"Showing 0 to 0 of 0 entries","info_filtered":"(filtered from _MAX_ total entries)","zero_records":"No matching records found","search":"Search:","pagination":{"all":"All","next":"Next","previous":"Previous"},"select":{"rows":{"0":"","_":": Selected %d rows","1":": Selected 1 row"}},"datepicker":{"dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["S","M","T","W","T","F","S"],"monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["January","February","March","April","May","June","July","August","September","October","November","December"],"nextText":"Next","prevText":"Prev","currentText":"Today","closeText":"Done"}};/* ]]> */ </script><script type="text/javascript">(function() {function addEventListener(element,event,handler) {
	if(element.addEventListener) {
		element.addEventListener(event,handler, false);
	} else if(element.attachEvent){
		element.attachEvent('on'+event,handler);
	}
}function maybePrefixUrlField() {
	if(this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
		this.value = "http://" + this.value;
	}
}

var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
if( urlFields && urlFields.length > 0 ) {
	for( var j=0; j < urlFields.length; j++ ) {
		addEventListener(urlFields[j],'blur',maybePrefixUrlField);
	}
}/* test if browser supports date fields */
var testInput = document.createElement('input');
testInput.setAttribute('type', 'date');
if( testInput.type !== 'date') {

	/* add placeholder & pattern to all date fields */
	var dateFields = document.querySelectorAll('.mc4wp-form input[type="date"]');
	for(var i=0; i<dateFields.length; i++) {
		if(!dateFields[i].placeholder) {
			dateFields[i].placeholder = 'YYYY-MM-DD';
		}
		if(!dateFields[i].pattern) {
			dateFields[i].pattern = '[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])';
		}
	}
}

})();</script><link property="stylesheet" rel='stylesheet' id='charity_is_hope-messages-style-css' href='css/core.messages.css' type='text/css' media='all'/>
<link property="stylesheet" rel='stylesheet' id='charity_is_hope-swiperslider-style-css' href='css/swiper.css' type='text/css' media='all'/>
<script type='text/javascript'>
/* <![CDATA[ */
var TRX_UTILS_STORAGE = {"ajax_url":"http:\/\/charity-is-hope.themerex.net\/wp-admin\/admin-ajax.php","ajax_nonce":"686ea19c69","site_url":"http:\/\/charity-is-hope.themerex.net","user_logged_in":"0","email_mask":"^([a-zA-Z0-9_\\-]+\\.)*[a-zA-Z0-9_\\-]+@[a-z0-9_\\-]+(\\.[a-z0-9_\\-]+)*\\.[a-z]{2,6}$","msg_ajax_error":"Invalid server answer!","msg_error_global":"Invalid field's value!","msg_name_empty":"The name can't be empty","msg_email_empty":"Too short (or empty) email address","msg_email_not_valid":"E-mail address is invalid","msg_text_empty":"The message text can't be empty","msg_send_complete":"Send message complete!","msg_send_error":"Transmit failed!","login_via_ajax":"1","msg_login_empty":"The Login field can't be empty","msg_login_long":"The Login field is too long","msg_password_empty":"The password can't be empty and shorter then 4 characters","msg_password_long":"The password is too long","msg_login_success":"Login success! The page will be reloaded in 3 sec.","msg_login_error":"Login failed!","msg_not_agree":"Please, read and check 'Terms and Conditions'","msg_email_long":"E-mail address is too long","msg_password_not_equal":"The passwords in both fields are not equal","msg_registration_success":"Registration success! Please log in!","msg_registration_error":"Registration failed!"};
/* ]]> */
</script>
<script type='text/javascript' src='js/trx_utils.js'></script>
<script type='text/javascript' src='js/jquery.blockUI.min.js?ver=2.70'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/donation\/sponsor-ecology-today\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='js/woocommerce.min.js?ver=2.6.14'></script>
<script type='text/javascript' src='js/jquery.cookie.min.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/donation\/sponsor-ecology-today\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments"};
/* ]]> */
</script>
<script type='text/javascript' src='js/cart-fragments.min.js?ver=2.6.14'></script>
<script type='text/javascript' src='js/superfish.js'></script>
<script type='text/javascript' src='js/core.reviews.js'></script>
<script type='text/javascript' src='js/core.utils.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var CHARITY_IS_HOPE_STORAGE = {"system_message":{"message":"","status":"","header":""},"theme_font":"Open Sans","theme_color":"#333333","theme_bg_color":"#ffffff","strings":{"ajax_error":"Invalid server answer","bookmark_add":"Add the bookmark","bookmark_added":"Current page has been successfully added to the bookmarks. You can see it in the right panel on the tab &#039;Bookmarks&#039;","bookmark_del":"Delete this bookmark","bookmark_title":"Enter bookmark title","bookmark_exists":"Current page already exists in the bookmarks list","search_error":"Error occurs in AJAX search! Please, type your query and press search icon for the traditional search way.","email_confirm":"On the e-mail address &quot;%s&quot; we sent a confirmation email. Please, open it and click on the link.","reviews_vote":"Thanks for your vote! New average rating is:","reviews_error":"Error saving your vote! Please, try again later.","error_like":"Error saving your like! Please, try again later.","error_global":"Global error text","name_empty":"The name can&#039;t be empty","name_long":"Too long name","email_empty":"Too short (or empty) email address","email_long":"Too long email address","email_not_valid":"Invalid email address","subject_empty":"The subject can&#039;t be empty","subject_long":"Too long subject","text_empty":"The message text can&#039;t be empty","text_long":"Too long message text","send_complete":"Send message complete!","send_error":"Transmit failed!","geocode_error":"Geocode was not successful for the following reason:","googlemap_not_avail":"Google map API not available!","editor_save_success":"Post content saved!","editor_save_error":"Error saving post data!","editor_delete_post":"You really want to delete the current post?","editor_delete_post_header":"Delete post","editor_delete_success":"Post deleted!","editor_delete_error":"Error deleting post!","editor_caption_cancel":"Cancel","editor_caption_close":"Close"},"ajax_url":"http:\/\/charity-is-hope.themerex.net\/wp-admin\/admin-ajax.php","ajax_nonce":"686ea19c69","site_url":"http:\/\/charity-is-hope.themerex.net","site_protocol":"http","vc_edit_mode":"","accent1_color":"#84c54e","accent1_hover":"#ff7e27","slider_height":"100","user_logged_in":"","toc_menu":"hide","toc_menu_home":"","toc_menu_top":"","menu_fixed":"1","menu_mobile":"1024","menu_hover":"fade","button_hover":"default","input_hover":"default","demo_time":"0","media_elements_enabled":"1","ajax_search_enabled":"1","ajax_search_min_length":"3","ajax_search_delay":"200","css_animation":"1","menu_animation_in":"fadeInUpSmall","menu_animation_out":"fadeOutDownSmall","popup_engine":"magnific","email_mask":"^([a-zA-Z0-9_\\-]+\\.)*[a-zA-Z0-9_\\-]+@[a-z0-9_\\-]+(\\.[a-z0-9_\\-]+)*\\.[a-z]{2,6}$","contacts_maxlength":"1000","comments_maxlength":"1000","remember_visitors_settings":"","admin_mode":"","isotope_resize_delta":"0.3","error_message_box":null,"viewmore_busy":"","video_resize_inited":"","top_panel_height":"0"};
/* ]]> */
</script>
<script type='text/javascript' src='js/core.init.js'></script>
<script type='text/javascript' src='js/theme.init.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var mejsL10n = {"language":"en-US","strings":{"Close":"Close","Fullscreen":"Fullscreen","Turn off Fullscreen":"Turn off Fullscreen","Go Fullscreen":"Go Fullscreen","Download File":"Download File","Download Video":"Download Video","Play":"Play","Pause":"Pause","Captions\/Subtitles":"Captions\/Subtitles","None":"None","Time Slider":"Time Slider","Skip back %1 seconds":"Skip back %1 seconds","Video Player":"Video Player","Audio Player":"Audio Player","Volume Slider":"Volume Slider","Mute Toggle":"Mute Toggle","Unmute":"Unmute","Mute":"Mute","Use Up\/Down Arrow keys to increase or decrease volume.":"Use Up\/Down Arrow keys to increase or decrease volume.","Use Left\/Right Arrow keys to advance one second, Up\/Down arrows to advance ten seconds.":"Use Left\/Right Arrow keys to advance one second, Up\/Down arrows to advance ten seconds."}};
var _wpmejsSettings = {"pluginPath":"\/wp-includes\/js\/mediaelement\/"};
/* ]]> */
</script>
<script type='text/javascript' src='js/mediaelement-and-player.min.js?ver=2.22.0'></script>
<script type='text/javascript' src='js/wp-mediaelement.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='js/trx_donations.min.js'></script>
<script type='text/javascript' src='js/wp-embed.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='js/theme.shortcodes.js'></script>
<script type='text/javascript' src='js/core.messages.js'></script>
<script type='text/javascript' src='js/swiper.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var mc4wp_forms_config = [];
/* ]]> */
</script>
<script type='text/javascript' src='js/forms-api.min.js?ver=4.1.0'></script>
<!--[if lte IE 9]>
<script type='text/javascript' src='js/placeholders.min.js?ver=4.1.0'></script>
<![endif]-->
<script type="text/css" id="tmpl-tribe_customizer_css">.tribe-events-list .tribe-events-loop .tribe-event-featured,
				.tribe-events-list #tribe-events-day.tribe-events-loop .tribe-event-featured,
				.type-tribe_events.tribe-events-photo-event.tribe-event-featured .tribe-events-photo-event-wrap,
				.type-tribe_events.tribe-events-photo-event.tribe-event-featured .tribe-events-photo-event-wrap:hover {
					background-color: #0ea0d7;
				}

				#tribe-events-content table.tribe-events-calendar .type-tribe_events.tribe-event-featured {
					background-color: #0ea0d7;
				}

				.tribe-events-list-widget .tribe-event-featured,
				.tribe-events-venue-widget .tribe-event-featured,
				.tribe-mini-calendar-list-wrapper .tribe-event-featured,
				.tribe-events-adv-list-widget .tribe-event-featured .tribe-mini-calendar-event {
					background-color: #0ea0d7;
				}

				.tribe-grid-body .tribe-event-featured.tribe-events-week-hourly-single {
					background-color: rgba(14,160,215, .7 );
					border-color: #0ea0d7;
				}

				.tribe-grid-body .tribe-event-featured.tribe-events-week-hourly-single:hover {
					background-color: #0ea0d7;
				}</script><style type="text/css" id="tribe_customizer_css">.tribe-events-list .tribe-events-loop .tribe-event-featured,.tribe-events-list #tribe-events-day.tribe-events-loop .tribe-event-featured,.type-tribe_events.tribe-events-photo-event.tribe-event-featured .tribe-events-photo-event-wrap,.type-tribe_events.tribe-events-photo-event.tribe-event-featured .tribe-events-photo-event-wrap:hover{background-color:#0ea0d7;}#tribe-events-content table.tribe-events-calendar .type-tribe_events.tribe-event-featured{background-color:#0ea0d7;}.tribe-events-list-widget .tribe-event-featured,.tribe-events-venue-widget .tribe-event-featured,.tribe-mini-calendar-list-wrapper .tribe-event-featured,.tribe-events-adv-list-widget .tribe-event-featured .tribe-mini-calendar-event{background-color:#0ea0d7;}.tribe-grid-body .tribe-event-featured.tribe-events-week-hourly-single{background-color:rgba(14,160,215,.7);border-color:#0ea0d7;}.tribe-grid-body .tribe-event-featured.tribe-events-week-hourly-single:hover{background-color:#0ea0d7;}</style>
</body>
</html>