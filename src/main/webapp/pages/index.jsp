<!DOCTYPE html>
<html>
<head>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<title>AngularJS Webapp</title>

<spring:url value="/dist/js/vendor-scripts.js" var="vendorJsUrl"
	htmlEscape="true" />
<spring:url value="/dist/js/custom-scripts.js" var="customJsUrl"
	htmlEscape="true" />

<spring:url value="/js/jquery-2.2.3.min.js" var="jQueryUrl"
	htmlEscape="true" />
<spring:url value="/js/angular.min.js" var="angularJsUrl"
	htmlEscape="true" />
<spring:url value="/js/angular-ui-router.min.js"
	var="angularUiRouterJsUrl" htmlEscape="true" />
<spring:url value="/js/application.js" var="applicationJsUrl"
	htmlEscape="true" />

<spring:url value="/css/bootstrap.min.css" var="bootstrapCssUrl"
	htmlEscape="true" />

<script src="${jQueryUrl}"></script>
<script src="${angularJsUrl}"></script>
<script src="${angularUiRouterJsUrl}"></script>

<script src="${applicationJsUrl}"></script>

<link rel="stylesheet" href="${bootstrapCssUrl}">
</head>

<body data-ng-app="myapp">

	<!-- Simple Navigation Bar -->
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="navbar-header">
			<a class="navbar-brand" ui-sref="#">WebCodeGeeks AngularJS
				UI-Router Example</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a ui-sref="posts">Posts</a></li>
			<li><a ui-sref="authors">Authors</a></li>
		</ul>
	</nav>

	<div class="container">
		<!-- ui-view attribute is the indicator where to inject the views managed by AngularJS UI-Router -->
		<div ui-view></div>
	</div>

</body>
</html>
