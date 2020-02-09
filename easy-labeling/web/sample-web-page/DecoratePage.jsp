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

                    <div class="col-xl-8 col-md-3 mb-4 offset-2">
                        <div>
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary" style="font-size: 30px">라벨링 예시</h6>
                                </div>

                                <!--                                        text-1 -->
                                <c:set var="styleName" value="${sessionScope.label.styleName}"/>
                                <div class="card-body">
                                    <div style="width: ${sessionScope.width}; height: ${sessionScope.height}; left: 0; right: 0; margin-left: auto; margin-right: auto; top: 0; bottom: 0; margin-top: auto; margin-bottom: auto; background-color: #fff; border: 1px solid #000;"
                                    <c:if test="${styleName == 'text1'}">
                                        <div id="contentTextId" class="content-text" style="font-weight: normal;
                                                font-style: normal; font-size: 300%; line-height: normal; text-align: center;
                                                font-family: normal; color: initial; height: 100%; display: flex; justify-content: center; align-items: center;">
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
                                        font-family: normal; color: initial; padding-top: 25%; height: 100%; border: 2mm solid #000; ">
                                                    중간글을 입력해주세요.
                                                </div>
                                            </c:if>
                                            <c:if test="${styleName.contains('text2')}">
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


        <div class="row offset-1">
            <div class="col-xl-5 col-md-3 mb-5 text-setting">
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
            </div>
            <div class="col-xl-2 col-md-3 mb-4">
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
                                        <!--
                                                                                    font-family: 'Nanum Gothic', sans-serif;
                                                                                    font-family: 'Noto Sans KR', sans-serif;
                                                                                    font-family: 'Nanum Myeongjo', serif;
                                                                                    font-family: 'Gothic A1', sans-serif;
                                                                                    font-family: 'Nanum Gothic Coding', monospace;
                                                                                    font-family: 'Nanum Pen Script', cursive;
                                                                                    font-family: 'Sunflower', sans-serif;
                                                                                    font-family: 'Nanum Brush Script', cursive;
                                                                                    font-family: 'Black Han Sans', sans-serif;
                                                                                    font-family: 'Do Hyeon', sans-serif;
                                                                                    font-family: 'Noto Serif KR', serif;
                                                                                    font-family: 'Jua', sans-serif;
                                        -->
                                        <div class="dropdown-menu animated--fade-in"
                                             aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item label-font-size" title="normal"
                                               onclick="setHeaderTextFontFamily(this)">기본</a>
                                            <a class="dropdown-item label-font-size" title="Nanum Gothic"
                                               style="font-family:  Nanum Gothic;"
                                               onclick="setHeaderTextFontFamily(this)">Nanum Gothic</a>
                                            <a class="dropdown-item label-font-size" title="Noto Sans KR"
                                               style="font-family:  Noto Sans KR;"
                                               onclick="setHeaderTextFontFamily(this)">Noto Sans KR</a>

                                            <a class="dropdown-item label-font-size" title="Nanum Myeongjo"
                                               style="font-family:  Nanum Myeongjo;"
                                               onclick="setHeaderTextFontFamily(this)">Nanum Myeongjo</a>
                                            <a class="dropdown-item label-font-size" title="Gothic A1"
                                               style="font-family:  Gothic A1;"
                                               onclick="setHeaderTextFontFamily(this)">Gothic A1</a>
                                            <a class="dropdown-item label-font-size" title="Nanum Gothic Coding"
                                               style="font-family:  Nanum Gothic Coding;"
                                               onclick="setHeaderTextFontFamily(this)">Nanum Gothic Coding</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                                            <a class="dropdown-item label-font-size" title="궁서체"
                                               onclick="setContentTextFontFamily(this)">궁서체</a>
                                            <a class="dropdown-item label-font-size" title="나눔고딕"
                                               onclick="setContentTextFontFamily(this)">나눔고딕</a>
                                            <a class="dropdown-item label-font-size" title="나눔명조"
                                               onclick="setContentTextFontFamily(this)">나눔명조</a>
                                            <a class="dropdown-item label-font-size" title="serif"
                                               onclick="setContentTextFontFamily(this)">serif</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                                            <a class="dropdown-item" title="normal"
                                               onclick="setTailTextFontFamily(this)">기본</a>
                                            <a class="dropdown-item" title="궁서체"
                                               onclick="setTailTextFontFamily(this)">궁서체</a>
                                            <a class="dropdown-item" title="나눔고딕"
                                               onclick="setTailTextFontFamily(this)">나눔고딕</a>
                                            <a class="dropdown-item" title="나눔명조"
                                               onclick="setTailTextFontFamily(this)">나눔명조</a>
                                            <a class="dropdown-item" title="serif"
                                               onclick="setTailTextFontFamily(this)">serif</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-2 col-md-3 mb-4">
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
                                            <a class="dropdown-item label-font-size" title="1cm"
                                               onclick="setHeaderTextFontSize(this)">1cm</a>
                                            <a class="dropdown-item label-font-size" title="2cm"
                                               onclick="setHeaderTextFontSize(this)">2cm</a>
                                            <a class="dropdown-item label-font-size" title="3cm"
                                               onclick="setHeaderTextFontSize(this)">3cm</a>
                                            <a class="dropdown-item label-font-size" title="4cm"
                                               onclick="setHeaderTextFontSize(this)">4cm</a>
                                            <a class="dropdown-item label-font-size" title="5cm"
                                               onclick="setHeaderTextFontSize(this)">5cm</a>
                                            <a class="dropdown-item label-font-size" title="6cm"
                                               onclick="setHeaderTextFontSize(this)">6cm</a>
                                            <a class="dropdown-item label-font-size" title="7cm"
                                               onclick="setHeaderTextFontSize(this)">7cm</a>
                                            <a class="dropdown-item label-font-size" title="8cm"
                                               onclick="setHeaderTextFontSize(this)">8cm</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                                            <a class="dropdown-item label-font-size" title="0.1cm"
                                               onclick="setContentTextFontSize(this)">0.1cm</a>
                                            <a class="dropdown-item label-font-size" title="0.2cm"
                                               onclick="setContentTextFontSize(this)">0.2cm</a>
                                            <a class="dropdown-item label-font-size" title="0.6cm"
                                               onclick="setContentTextFontSize(this)">0.6cm</a>
                                            <a class="dropdown-item label-font-size" title="1cm"
                                               onclick="setContentTextFontSize(this)">1cm</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                                            <a class="dropdown-item label-font-size" title="0.1cm"
                                               onclick="setTailTextFontSize(this)">0.1cm</a>
                                            <a class="dropdown-item label-font-size" title="0.2cm"
                                               onclick="setTailTextFontSize(this)">0.2cm</a>
                                            <a class="dropdown-item label-font-size" title="0.6cm"
                                               onclick="setTailTextFontSize(this)">0.6cm</a>
                                            <a class="dropdown-item label-font-size" title="1cm"
                                               onclick="setTailTextFontSize(this)">1cm</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-2 col-md-3 mb-4">
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
                                            <a class="dropdown-item label-font-size" title="#fff"
                                               onclick="setHeaderTextFontColor(this)">흰색</a>
                                            <a class="dropdown-item label-font-size" title="#f00"
                                               onclick="setHeaderTextFontColor(this)">빨강</a>
                                            <a class="dropdown-item label-font-size" title="#0f0"
                                               onclick="setHeaderTextFontColor(this)">초록</a>
                                            <a class="dropdown-item label-font-size" title="#00f"
                                               onclick="setHeaderTextFontColor(this)">파랑</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                                            <a class="dropdown-item label-font-size" title="#fff"
                                               onclick="setContentTextFontColor(this)">흰색</a>
                                            <a class="dropdown-item label-font-size" title="#f00"
                                               onclick="setContentTextFontColor(this)">빨강</a>
                                            <a class="dropdown-item label-font-size" title="#0f0"
                                               onclick="setContentTextFontColor(this)">초록</a>
                                            <a class="dropdown-item label-font-size" title="#00f"
                                               onclick="setContentTextFontColor(this)">파랑</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                                            <a class="dropdown-item label-font-size" title="#fff"
                                               onclick="setTailTextFontColor(this)">흰색</a>
                                            <a class="dropdown-item label-font-size" title="#f00"
                                               onclick="setTailTextFontColor(this)">빨강</a>
                                            <a class="dropdown-item label-font-size" title="#0f0"
                                               onclick="setTailTextFontColor(this)">초록</a>
                                            <a class="dropdown-item label-font-size" title="#00f"
                                               onclick="setTailTextFontColor(this)">파랑</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-xl-1 col-md-3 mb-3 offset-8">
                <a href="#" class="btn btn-secondary btn-icon-split">
                            <span class="icon text-white-50">
                              <i class="fas fa-arrow-right"></i>
                            </span>
                    <span class="text" style="font-size:25px">이전으로</span>
                </a>
            </div>
            <div class="col-xl-1 col-md-3 mb-3">
                <a href="#" class="btn btn-danger btn-icon-split">
                            <span class="icon text-white-50">
                              <i class="fas fa-arrow-right"></i>
                            </span>
                    <span class="text" style="font-size:25px">초기화 하기</span>
                </a>
            </div>
            <div class="col-xl-1 col-md-3 mb-3">
                <a href="#" class="btn btn-primary btn-icon-split">
                            <span class="icon text-white-50">
                              <i class="fas fa-arrow-right"></i>
                            </span>
                    <span class="text" style="font-size:25px">프린터 하기</span>
                </a>
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
    <!-- End of Footer -->

</div>
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
