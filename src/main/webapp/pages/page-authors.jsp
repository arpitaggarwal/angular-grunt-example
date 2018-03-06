<div class="jumbotron text-center">
	<h1>Authors page</h1>
	<p>This page shows a list of popular and recent authors and it is
		intended to show the use of Multiple Views.</p>
</div>

<!-- Having the ability to use Multiple Views in an application is very useful. 
     For example, many templates have a sidebar where different kind of information is shown: 
     Popular posts, Tweets, Recommended posts, etc. 
     By using the Multiple Views we can split each block of information and 
     inject them in our template as needed. Each multiple view can have its own 
     controller and template file, so the application stays clean and tidy. -->
     
<div class="row">
	<!-- Popular authors named view -->
	<div class="col-sm-6">
		<div ui-view="popular"></div>
	</div>

	<!-- Recent authors named view -->
	<div class="col-sm-6">
		<div ui-view="recent"></div>
	</div>

</div>