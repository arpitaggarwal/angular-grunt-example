<div class="jumbotron text-center">
	<h1>Posts page</h1>
	<p>This page shows a list of posts and it is intended to show the
		use of Nested Views.</p>

	<!-- .list means that .list is child state of the current state (posts), so the state name in the JS configuration file should be "posts.list"  -->
	<a ui-sref=".list" class="btn btn-primary">List</a> <a ui-sref=".info"
		class="btn btn-info">Information</a>
</div>

<div ui-view></div>