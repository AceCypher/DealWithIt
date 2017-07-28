%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link href="<spring:url value='/resources/bootstrap/css/bootstrap.css'/>" type="text/css" rel="stylesheet" />
	<link href="<spring:url value='/resources/css/jquery.countdownTimer.css'/>" type="text/css" rel="stylesheet">
	<link href="<spring:url value='/resources/css/main.css'/>" type="text/css" rel="stylesheet">
	
	<title>Deal-With-It</title>
</head>
<body class="bodyBgImage">
<header class="headerBgImage navbar-fixed-top">
  <div class="container">
    <a  style="text-decoration: none; cursor: default;" href="/logout"><img src="<spring:url value='/resources/img/Logo_Plain.png'/>" alt="Icon"></a>
    <br>
  </div>
  <div class="headerLinks">
	    <a  href="login">Login | </a>
	    <a  href="contact">Contact Us | </a>
  </div>
</header>


<h3> ${requestScope.status}</h3>
<div class="pageservices container">
	<form:form modelAttribute="customer" class="form-horizontal" method="post">
	<div class="row">
    <div class="form-group">
      <label class="control-label" for="email">Email:</label>
      <form:input path="email" placeholder="Enter Email" />
      <form:errors path="email" cssClass="error"/>
	     
	    </div>	
    </div>
    
    <div class="row">
    <div class="form-group">
      <label class="control-label" for="email">Username:</label>
      <form:input path="name" placeholder="Enter Username" />
      <form:errors path="name" cssClass="error"/>
	</div>	
    </div>
    
    <div class="row">
    <div class="form-group">
      <label class="control-label" for="pwd">Password:</label>
      <form:password path="password" placeholder="Enter Password"/>
      <form:errors path="password" cssClass="error"/>
      
    </div>
    </div>
    
    <div class="form-group">        
      
        <button type="submit" value="Register Me" class="btn btn-default">Register</button>
      
    </div>
	</form:form>
	</div>
<footer class="footer navbar-fixed-bottom">
  <a  href="login">Customer Login </a><br>
  <a  href="list">Customer List </a><br>
  <a  href="register">Register </a><br>
  <a  href="dashboard">Bids Page </a><br>
</footer>
<script src="<spring:url value='/resources/js/jquery-2.1.4.min.js'/>"></script>
<script src="<spring:url value='/resources/bootstrap/js/bootstrap.min.js'/>"></script>
<script src="<spring:url value='/resources/js/script.js'/>"></script>
<script src="<spring:url value='/resources/js/jquery.countdownTimer.min.js'/>"></script>
</body>
</html>