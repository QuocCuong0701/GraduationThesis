<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>404</title>
</head>
<body>
    <!-- Breadcurb AREA -->
    <div class="breadcurb-area">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Page</a></li>
                <li>404 page</li>
            </ul>
        </div>
    </div>
    <!-- 404 AREA -->
    <div class="not-found-area fix">
        <div class="container">
            <div class="not-found">
                <h1>Uh oh! Look like something went wrong</h1>
                <img src="<c:url value="/template/web/img/404.png"/>" alt="404">
                <h2>Page cannot be found</h2>
                <p>Sorry but we couldn't find the page you are looking for. Please check to make sure you've typed the URL corectly. You may also want to search for what you are looking for.</p>
                <a href="#">Return to Home</a>
            </div>
        </div>
    </div>
    </body>
</html>
