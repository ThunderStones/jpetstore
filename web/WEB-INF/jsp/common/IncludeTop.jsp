<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<head>
    <link rel="stylesheet" href="static/css/jquery-ui.css" type="text/css">
    <link rel="StyleSheet" href="static/css/jpetstore.css" type="text/css"
          media="screen"/>

<%--    <link rel="stylesheet" href="static/css/jquery-ui.structure.css" type="text/css">--%>
<%--    <link rel="stylesheet" href="static/css/jquery-ui.theme.css" type="text/css">--%>
    <script src="static/js/jquery-3.4.1.js"></script>
    <script src="static/js/jquery-ui.js"></script>
    <script src="static/js/account.js"></script>
    <script src="static/js/search.js"></script>
    <meta name="generator"
          content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org"/>
    <title>MyJPetStore</title>
    <meta content="text/html; charset=windows-1252"
          http-equiv="Content-Type"/>
    <meta http-equiv="Cache-Control" content="max-age=0"/>
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT"/>
    <meta http-equiv="Pragma" content="no-cache"/>
</head>

<body>

<div id="Header">

    <div id="Logo">
        <div id="LogoContent">
            <a href="main"><img src="images/logo-topbar.gif" alt="logo-topbar"/></a>
        </div>
    </div>

    <div id="Menu">
        <div id="MenuContent">
            <a href="addItemToCart"><img align="middle" name="img_cart" src="images/cart.gif"/></a>
            <img align="middle" src="images/separator.gif"/>
            <c:choose>
                <c:when test="${sessionScope.isAuthenticated eq true}">
                    <a href="signOut">Sign Out</a>
                    <img align="middle" src="images/separator.gif"/>
                    <a href="editAccountForm">My Account</a>
                </c:when>
                <c:otherwise>
                    <a href="loginPage">Sign In</a>
                </c:otherwise>
            </c:choose>
            <img align="middle" src="images/separator.gif"/> <a href="help.html">?</a>
        </div>
    </div>

    <div id="Search">
        <div id="SearchContent">
            <form action="search" method="post">
                <input type="text" name="keyword" size="14" id="searchText" autocomplete="nope"/>
                <input type="submit" name="searchProducts" value="Search"/>
            </form>
        </div>
    </div>

    <div id="QuickLinks">
        <a href="viewCategory?categoryId=FISH"><img src="images/sm_fish.gif"/></a> <img src="images/separator.gif"/>
        <a href="viewCategory?categoryId=DOGS"><img src="images/sm_dogs.gif"/></a> <img src="images/separator.gif"/>
        <a href="viewCategory?categoryId=REPTILES"><img src="images/sm_reptiles.gif"/></a> <img src="images/separator.gif"/>
        <a href="viewCategory?categoryId=CATS"><img src="images/sm_cats.gif"/></a> <img src="images/separator.gif"/>
        <a href="viewCategory?categoryId=BIRDS"><img src="images/sm_birds.gif"/></a>
    </div>

</div>

<div id="Content">