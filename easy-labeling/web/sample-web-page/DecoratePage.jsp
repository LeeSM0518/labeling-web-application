<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: soengwon
  Date: 2020/02/10
  Time: 1:31 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Easy Labeling</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/sample-web-page/vendor/fontawesome-free/css/all.min.css"
          rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Do+Hyeon|Gothic+A1|Jua|Nanum+Brush+Script|Nanum+Gothic|Nanum+Gothic+Coding|Nanum+Myeongjo|Nanum+Pen+Script|Noto+Sans+KR|Noto+Serif+KR|Sunflower:300&display=swap"
          rel="stylesheet">
    <script src="${pageContext.request.contextPath}/sample-web-page/js/responsive.js"></script>

    <link href="${pageContext.request.contextPath}/sample-web-page/css/sb-admin-2.min.css" rel="stylesheet">
    <style>
        .hc {
            width: 42cm;
            height: 29cm;
            left: 0;
            right: 0;
            margin-left: auto;
            margin-right: auto;
            top: 0;
            bottom: 0;
            margin-top: auto;
            margin-bottom: auto;
        }

        .label-font-size {
            font-size: 20px
        }
    </style>
</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                <h1 class="h3 mb-0 text-gray-800">간편한 라벨링 웹 사이트</h1>
            </nav>

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-2 col-md-3 mb-2 offset-1">
                        <div>
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="dropdown">
                                                <button id="labelBackgroundButton"
                                                        class="btn btn-primary dropdown-toggle label-font-size"
                                                        type="button"
                                                        data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">
                                                    라벨 배경색 선택
                                                </button>
                                                <div class="dropdown-menu animated--fade-in"
                                                     aria-labelledby="dropdownMenuButton">
                                                    <c:forEach var="color" items="${colors}">
                                                        <a class="dropdown-item" style="font-size: 30px"
                                                           title="${color.code}"
                                                           onclick="setLabelBackground(this)">${color.name}</a>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <c:if test="${sessionScope.label.styleName.contains('border')}">
                        <div class="col-xl-2 col-md-3 mb-2">
                            <div>
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="dropdown">
                                                    <button class="btn btn-success dropdown-toggle label-font-size"
                                                            type="button"
                                                            id="labelBorderSizeButton" data-toggle="dropdown"
                                                            aria-haspopup="true" aria-expanded="false">
                                                        라벨 테두리 두께 선택
                                                    </button>
                                                    <div class="dropdown-menu animated--fade-in"
                                                         aria-labelledby="dropdownMenuButton">
                                                        <c:forEach var="weight" items="${weights}">
                                                            <a class="dropdown-item" style="font-size: 30px"
                                                               title="${weight.size}"
                                                               onclick="setLabelBorderSize(this)">${weight.size}</a>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-md-3 mb-2">
                            <div>
                                <div class="card border-left-info shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="dropdown">
                                                    <button class="btn btn-info dropdown-toggle label-font-size"
                                                            type="button"
                                                            id="labelBorderColorButton" data-toggle="dropdown"
                                                            aria-haspopup="true" aria-expanded="false">
                                                        라벨 테두리 색 선택
                                                    </button>
                                                    <div class="dropdown-menu animated--fade-in"
                                                         aria-labelledby="dropdownMenuButton">
                                                        <c:forEach var="color" items="${colors}">
                                                            <a class="dropdown-item" style="font-size: 30px"
                                                               title="${color.code}"
                                                               onclick="setLabelBorderColor(this)">${color.name}</a>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.label.styleName.contains('text2')
                    and (sessionScope.label.styleName.contains('border')
                    or sessionScope.label.styleName.contains('bar'))}">
                        <div class="col-xl-2 col-md-3 mb-2">
                            <div>
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="dropdown">
                                                    <button class="btn btn-warning dropdown-toggle label-font-size"
                                                            type="button"
                                                            id="labelBarSizeButton" data-toggle="dropdown"
                                                            aria-haspopup="true" aria-expanded="false">
                                                        가운데 Bar 두께 선택
                                                    </button>
                                                    <div class="dropdown-menu animated--fade-in"
                                                         aria-labelledby="dropdownMenuButton">
                                                        <c:forEach var="weight" items="${weights}">
                                                            <a class="dropdown-item" style="font-size: 30px"
                                                               title="${weight.size}"
                                                               onclick="setLabelBarSize(this)">${weight.size}</a>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-md-3 mb-2">
                            <div>
                                <div class="card border-left-danger shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="dropdown">
                                                    <button class="btn btn-danger dropdown-toggle label-font-size"
                                                            type="button"
                                                            id="labelBarColorButton" data-toggle="dropdown"
                                                            aria-haspopup="true" aria-expanded="false">
                                                        가운데 Bar 색 선택
                                                    </button>
                                                    <div class="dropdown-menu animated--fade-in"
                                                         aria-labelledby="dropdownMenuButton">
                                                        <c:forEach var="color" items="${colors}">
                                                            <a class="dropdown-item" style="font-size: 30px"
                                                               title="${color.code}"
                                                               onclick="setLabelBarColor(this)">${color.name}</a>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>

                    <div class="col-xl-8 col-md-3 mb-4 offset-2">
                        <div>
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary" style="font-size: 30px">라벨링 예시</h6>
                                </div>
                                <c:set var="styleName" value="${sessionScope.label.styleName}"/>
                                <div class="card-body">
                                    <div id="labelExample"
                                         style="width: ${sessionScope.width}; height: ${sessionScope.height};
                                                 left: 0; right: 0; margin-left: auto; margin-right: auto;
                                                 top: 0; bottom: 0; margin-top: auto; margin-bottom: auto;
                                                 background-color: #fff; border: 1px solid #000;">
                                        <c:if test="${styleName == 'text1'}">
                                            <div id="contentTextId" style="font-weight: normal;
                                                font-style: normal; font-size: 300%; line-height: normal; text-align: center;
                                                font-family: normal; color: initial; height: 100%; display: flex; justify-content: center; align-items: center; ">
                                                중간글을 입력해주세요.
                                            </div>
                                        </c:if>
                                        <c:if test="${styleName == 'text2'}">
                                            <div id="headerTextId" class="header-text" style="font-weight: normal;
                                                font-style: normal; font-size: 300%; line-height: normal; text-align: center;
                                                font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;">
                                                머리글을 입력해주세요.
                                            </div>
                                            <div id="tailTextId" class="tail-text" style="font-weight: normal;
                                                 font-style: normal; font-size: 300%; line-height: normal; text-align: center;
                                                  font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;">
                                                꼬리글을 입력해주세요.
                                            </div>
                                        </c:if>
                                        <c:if test="${styleName == 'text2-bar'}">
                                            <div id="headerTextId" class="header-text" style="font-weight: normal;
                                        font-style: normal; font-size: 300%; line-height: normal; text-align: center;
                                        font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;">
                                                머리글을 입력해주세요.
                                            </div>
                                            <div id="label-bar"
                                                 style="height: 1mm; width: 100%; background-color: black;"></div>
                                            <div id="tailTextId" class="tail-text" style="font-weight: normal;
                                         font-style: normal; font-size: 300%; line-height: normal; text-align: center;
                                          font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;">
                                                꼬리글을 입력해주세요.
                                            </div>
                                        </c:if>
                                        <c:if test="${styleName.contains('border')}">
                                            <div style="padding: 5mm; height: 100%;">
                                                <c:if test="${styleName.contains('text1')}">
                                                    <div id="contentTextId" style="font-weight: normal; margin: inherit;
                                        font-style: normal; font-size: 300%; line-height: normal; text-align: center;
                                        font-family: normal; color: initial; height: 100%; border: 2mm solid #000;
                                        display: flex; justify-content: center; align-items: center;">
                                                        중간글을 입력해주세요.
                                                    </div>
                                                </c:if>
                                                <c:if test="${styleName.contains('text2')}">
                                                    <div id="contentTextId"
                                                         style="height: 100%; border: 2mm solid #000; width: 100%;">
                                                        <div id="headerTextId" class="header-text" style="font-weight: normal;
                                                    font-style: normal; font-size: 300%; line-height: normal; text-align: center;
                                                    font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;">
                                                            머리글을 입력해주세요.
                                                        </div>
                                                        <div id="label-bar"
                                                             style="height: 1mm; width: 100%; background-color: black; display: flex; justify-content: center; align-items: center;"></div>
                                                        <div id="tailTextId" class="tail-text" style="font-weight: normal;
                                                     font-style: normal; font-size: 300%; line-height: normal; text-align: center;
                                                      font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;">
                                                            꼬리글을 입력해주세요.
                                                        </div>
                                                    </div>
                                                </c:if>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="row offset-1">
            <div class="col-xl-5 col-md-3 mb-5 text-setting">
                <c:if test="${sessionScope.label.styleName.contains('text2')}">
                    <div>
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-s font-weight-bold text-primary text-uppercase mb-1 label-font-size">
                                            머리글
                                        </div>
                                        <input type="text" class="form-control bg-light border-0 small label-font-size"
                                               placeholder="머리글을 입력해주세요."
                                               aria-label="Search" aria-describedby="basic-addon2"
                                               onchange="headerTextChange(this)">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.label.styleName.contains('text1')}">
                    <div>
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-s font-weight-bold text-success text-uppercase mb-1 label-font-size">
                                            중간글
                                        </div>
                                        <input type="text" class="form-control bg-light border-0 small label-font-size"
                                               placeholder="중간글을 입력해주세요."
                                               aria-label="Search" aria-describedby="basic-addon2"
                                               onchange="contentTextChange(this)">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.label.styleName.contains('text2')}">
                    <div>
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-s font-weight-bold text-info text-uppercase mb-1 label-font-size">
                                            꼬리글
                                        </div>
                                        <input type="text" class="form-control bg-light border-0 small label-font-size"
                                               placeholder="꼬리글을 입력해주세요."
                                               aria-label="Search" aria-describedby="basic-addon2"
                                               onchange="tailTextChange(this)">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
            <div class="col-xl-2 col-md-3 mb-4">
                <c:if test="${sessionScope.label.styleName.contains('text2')}">
                    <div>
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-s font-weight-bold text-primary text-uppercase mb-1 label-font-size">
                                            머리글
                                        </div>
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle label-font-size"
                                                    type="button"
                                                    id="headetTextFontFamilyButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                폰트
                                            </button>
                                            <div class="dropdown-menu animated--fade-in"
                                                 aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item label-font-size" title="normal"
                                                   onclick="setHeaderTextFontFamily(this)">기본</a>
                                                <c:forEach var="font" items="${fonts}">
                                                    <a class="dropdown-item label-font-size" title="${font.name}"
                                                       style="font-family: ${font.name};"
                                                       onclick="setHeaderTextFontFamily(this)">${font.name}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.label.styleName.contains('text1')}">

                    <div>
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="dropdown">
                                            <div class="text-s font-weight-bold text-success text-uppercase mb-1 label-font-size">
                                                중간글
                                            </div>
                                            <button class="btn btn-success dropdown-toggle label-font-size"
                                                    type="button"
                                                    id="contenttTextFontFamilyButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                폰트
                                            </button>
                                            <div class="dropdown-menu animated--fade-in"
                                                 aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item label-font-size" title="normal"
                                                   onclick="setContentTextFontFamily(this)">기본</a>
                                                <c:forEach var="font" items="${fonts}">
                                                    <a class="dropdown-item label-font-size" title="${font.name}"
                                                       style="font-family: ${font.name};"
                                                       onclick="setContentTextFontFamily(this)">${font.name}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.label.styleName.contains('text2')}">
                    <div>
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="dropdown">
                                            <div class="text-s font-weight-bold text-info text-uppercase mb-1 label-font-size">
                                                꼬리글
                                            </div>
                                            <button class="btn btn-info dropdown-toggle label-font-size" type="button"
                                                    id="tailTextFontFamilyButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                폰트
                                            </button>
                                            <div class="dropdown-menu animated--fade-in label-font-size"
                                                 aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item label-font-size" title="normal"
                                                   onclick="setTailTextFontFamily(this)">기본</a>
                                                <c:forEach var="font" items="${fonts}">
                                                    <a class="dropdown-item label-font-size" title="${font.name}"
                                                       style="font-family: ${font.name};"
                                                       onclick="setTailTextFontFamily(this)">${font.name}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
            <div class="col-xl-2 col-md-3 mb-4">
                <c:if test="${sessionScope.label.styleName.contains('text2')}">
                    <div>
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-s font-weight-bold text-primary text-uppercase mb-1 label-font-size">
                                            머리글
                                        </div>
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle label-font-size"
                                                    type="button"
                                                    id="headerTextFontSizeButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                글씨 크기
                                            </button>
                                            <div class="dropdown-menu animated--fade-in"
                                                 aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item label-font-size" title="0.5cm"
                                                   onclick="setHeaderTextFontSize(this)">기본</a>
                                                <c:forEach var="fontSize" items="${fontSizes}">
                                                    <a class="dropdown-item label-font-size" title="${fontSize.size}"
                                                       onclick="setHeaderTextFontSize(this)">${fontSize.size}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.label.styleName.contains('text1')}">
                    <div>
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="dropdown">
                                            <div class="text-s font-weight-bold text-success text-uppercase mb-1 label-font-size">
                                                중간글
                                            </div>
                                            <button class="btn btn-success dropdown-toggle label-font-size"
                                                    type="button"
                                                    id="contentTextFontSizeButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                글씨 크기
                                            </button>
                                            <div class="dropdown-menu animated--fade-in"
                                                 aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item label-font-size" title="0.5cm"
                                                   onclick="setContentTextFontSize(this)">기본</a>
                                                <c:forEach var="fontSize" items="${fontSizes}">
                                                    <a class="dropdown-item label-font-size" title="${fontSize.size}"
                                                       onclick="setContentTextFontSize(this)">${fontSize.size}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.label.styleName.contains('text2')}">
                    <div>
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="dropdown">
                                            <div class="text-s font-weight-bold text-info text-uppercase mb-1 label-font-size">
                                                꼬리글
                                            </div>
                                            <button class="btn btn-info dropdown-toggle label-font-size" type="button"
                                                    id="tailTextFontSizeButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                글씨 크기
                                            </button>
                                            <div class="dropdown-menu animated--fade-in"
                                                 aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item label-font-size" title="0.5cm"
                                                   onclick="setTailTextFontSize(this)">기본</a>
                                                <c:forEach var="fontSize" items="${fontSizes}">
                                                    <a class="dropdown-item label-font-size" title="${fontSize.size}"
                                                       onclick="setTailTextFontSize(this)">${fontSize.size}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>

            <div class="col-xl-2 col-md-3 mb-4">
                <c:if test="${sessionScope.label.styleName.contains('text2')}">
                    <div>
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-s font-weight-bold text-primary text-uppercase mb-1 label-font-size">
                                            머리글
                                        </div>
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle label-font-size"
                                                    type="button"
                                                    id="headerTextFontColorButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                글씨 색깔
                                            </button>
                                            <div class="dropdown-menu animated--fade-in"
                                                 aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item label-font-size" title="normal"
                                                   onclick="setHeaderTextFontColor(this)">기본</a>
                                                <c:forEach var="color" items="${colors}">
                                                    <a class="dropdown-item label-font-size" title="${color.code}"
                                                       onclick="setHeaderTextFontColor(this)">${color.name}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.label.styleName.contains('text1')}">
                    <div>
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="dropdown">
                                            <div class="text-s font-weight-bold text-success text-uppercase mb-1 label-font-size">
                                                중간글
                                            </div>
                                            <button class="btn btn-success dropdown-toggle label-font-size"
                                                    type="button"
                                                    id="contentTextFontColorButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                글씨 색깔
                                            </button>
                                            <div class="dropdown-menu animated--fade-in"
                                                 aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item label-font-size" title="normal"
                                                   onclick="setContentTextFontColor(this)">기본</a>
                                                <c:forEach var="color" items="${colors}">
                                                    <a class="dropdown-item label-font-size" title="${color.code}"
                                                       onclick="setContentTextFontColor(this)">${color.name}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.label.styleName.contains('text2')}">
                    <div>
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="dropdown">
                                            <div class="text-s font-weight-bold text-info text-uppercase mb-1 label-font-size">
                                                꼬리글
                                            </div>
                                            <button class="btn btn-info dropdown-toggle label-font-size" type="button"
                                                    id="tailTextFontColorButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                글씨 색깔
                                            </button>
                                            <div class="dropdown-menu animated--fade-in"
                                                 aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item label-font-size" title="normal"
                                                   onclick="setTailTextFontColor(this)">기본</a>
                                                <c:forEach var="color" items="${colors}">
                                                    <a class="dropdown-item label-font-size" title="${color.code}"
                                                       onclick="setTailTextFontColor(this)">${color.name}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
        <form id="context" method="post" action="print.do">
            <input id="labelBackgroundColorId" name="labelBackgroundColor" type="hidden">
            <input id="borderStyleId" name="borderStyle" type="hidden">
            <input id="barSizeId" name="barSize" type="hidden">
            <input id="barColorId" name="barColor" type="hidden">
            <input id="headerFontSizeId" name="headerFontSize" type="hidden">
            <input id="headerFontNameId" name="headerFontName" type="hidden">
            <input id="headerFontColorId" name="headerFontColor" type="hidden">
            <input id="headerInputId" name="headerFontText" type="hidden">
            <input id="contentFontSizeId" name="contentFontSize" type="hidden">
            <input id="contentFontNameId" name="contentFontName" type="hidden">
            <input id="contentFontColorId" name="contentFontColor" type="hidden">
            <input id="contentInputId" name="contentFontText" type="hidden">
            <input id="tailFontSizeId" name="tailFontSize" type="hidden">
            <input id="tailFontNameId" name="tailFontName" type="hidden">
            <input id="tailFontColorId" name="tailFontColor" type="hidden">
            <input id="tailInputId" name="tailFontText" type="hidden">
        </form>
        <div class="row">
            <div class="col-xl-1 col-md-3 mb-3 offset-8">
                <a href="${pageContext.request.contextPath}/init.do" class="btn btn-secondary btn-icon-split">
                            <span class="icon text-white-50">
                              <i class="fas fa-arrow-right"></i>
                            </span>
                    <span class="text" style="font-size:25px">이전으로</span>
                </a>
            </div>
            <div class="col-xl-1 col-md-3 mb-3">
                <a href="${pageContext.request.contextPath}/decorate.do" class="btn btn-danger btn-icon-split">
                            <span class="icon text-white-50">
                              <i class="fas fa-arrow-right"></i>
                            </span>
                    <span class="text" style="font-size:25px">초기화 하기</span>
                </a>
            </div>
            <div class="col-xl-1 col-md-3 mb-3">
                <a id="printButtonId" class="btn btn-primary btn-icon-split" onclick="goPrint()">
                            <span class="icon text-white-50">
                              <i class="fas fa-arrow-right"></i>
                            </span>
                    <span class="text" style="font-size:25px">프린터 하기</span>
                </a>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
        </div>
    </div>
</footer>
<!-- End of Content Wrapper -->

<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/sample-web-page/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/sample-web-page/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/sample-web-page/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/sample-web-page/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="${pageContext.request.contextPath}/sample-web-page/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="${pageContext.request.contextPath}/sample-web-page/js/demo/chart-area-demo.js"></script>
<script src="${pageContext.request.contextPath}/sample-web-page/js/demo/chart-pie-demo.js"></script>

</body>

</html>

