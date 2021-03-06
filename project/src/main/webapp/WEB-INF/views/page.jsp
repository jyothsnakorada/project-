<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
   <spring:url var="css"  value="/resources/css"/>
   <spring:url var="js"   value="/resources/js"/>
   <spring:url var="images" value="/resources/images"/>
    
    
    
    <c:set var="contextRoot" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>project -${title}</title>
    <script>
    window.menu ='${title}';
     </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap readeble theme -->
    <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}}/myapp.css" rel="stylesheet">

  </head>

  <body>
  <div class="wrapper">

    <!-- Navigation -->
  <%@include file="./shared/navbar.jsp" %>
    <!-- Page Content -->
    <div class="conent">
   <!-- Loading the Home cotent -->
   <c:if test="${userClickHome == true }">
       <%@include file="home.jsp" %>
   </c:if>
   <!-- Load only when user clicks about -->
   <c:if test="${userClickAbout == true }">
       <%@include file="About.jsp" %>
   </c:if>
   <!-- Load only when user clicks contact -->
   <c:if test="${userClickContact == true }">
       <%@include file="contact.jsp" %>
   </c:if>
    <!-- Load only when user clicks listproducts -->
   <c:if test="${userClickAllProducts == true  or userClickcategoryProducts == true  }">
       <%@include file="listproducts.jsp" %>
   </c:if>
   </div>   
    <!-- Footer -->
    <%@include file="./shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.min.js"></script>
    <script src="${js}/bootstrap.bundle.min.js"></script>
 <script src="${js}/myapp.js"></script>
 </div>

  </body>

</html>
    