<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ page import="java.util.*" %>
<%@ page import="org.busan.dto.*" %>
<c:set var="ipath" value="<%=request.getContextPath() %>" />   
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@4.0.1/reset.min.css"/> 
<script src="${ipath }/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${ipath }/css/bootstrap.min.css" />
<script src="${ipath }/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" href="${ipath }/images/favicon.png" />
<link rel="shortcut icon" href="${ipath }/images/favicon.png" />


