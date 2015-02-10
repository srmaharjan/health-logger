<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap"/>
	<title>Welcome to Grails</title>
</head>
<body>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Dashboard
		<small>Control panel</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Dashboard</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-aqua">
				<div class="inner">
					<h3>
						150
					</h3>
					<p>
						New Orders
					</p>
				</div>
				<div class="icon">
					<i class="ion ion-bag"></i>
				</div>
				<a href="#" class="small-box-footer">
					More info <i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div><!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-green">
				<div class="inner">
					<h3>
						53<sup style="font-size: 20px">%</sup>
					</h3>
					<p>
						Bounce Rate
					</p>
				</div>
				<div class="icon">
					<i class="ion ion-stats-bars"></i>
				</div>
				<a href="#" class="small-box-footer">
					More info <i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div><!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-yellow">
				<div class="inner">
					<h3>
						44
					</h3>
					<p>
						User Registrations
					</p>
				</div>
				<div class="icon">
					<i class="ion ion-person-add"></i>
				</div>
				<a href="#" class="small-box-footer">
					More info <i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div><!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-red">
				<div class="inner">
					<h3>
						65
					</h3>
					<p>
						Unique Visitors
					</p>
				</div>
				<div class="icon">
					<i class="ion ion-pie-graph"></i>
				</div>
				<a href="#" class="small-box-footer">
					More info <i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div><!-- ./col -->
	</div><!-- /.row -->
	<div class="row">
		<section class="col-lg-4 connectedSortable">
			<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			<div id="status" role="complementary">
				<h1>Application Status</h1>
				<ul>
					<li>App version: <g:meta name="app.version"/></li>
					<li>Grails version: <g:meta name="app.grails.version"/></li>
					<li>Groovy version: ${GroovySystem.getVersion()}</li>
					<li>JVM version: ${System.getProperty('java.version')}</li>
					<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
					<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
					<li>Domains: ${grailsApplication.domainClasses.size()}</li>
					<li>Services: ${grailsApplication.serviceClasses.size()}</li>
					<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
				</ul>
				<h1>Installed Plugins</h1>
				<ul>
					<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
						<li>${plugin.name} - ${plugin.version}</li>
					</g:each>
				</ul>
			</div>
		</section>
		<section class="col-lg-8 connectedSortable">
			<div id="page-body" role="main">
				<h1>Welcome to Grails</h1>
				<p>Congratulations, you have successfully started your first Grails application! At the moment
				this is the default page, feel free to modify it to either redirect to a controller or display whatever
				content you may choose. Below is a list of controllers that are currently deployed in this application,
				click on each to execute its default action:</p>

				<div id="controller-list" role="navigation">
					<h2>Available Controllers:</h2>
					<ul>
						<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
							<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
						</g:each>
					</ul>
				</div>
			</div>
		</section>
	</div><!-- /.row (main row) -->

</section><!-- /.content -->
</body>
</html>
