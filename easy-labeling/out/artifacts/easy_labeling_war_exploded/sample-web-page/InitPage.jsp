<%--
  Created by IntelliJ IDEA.
  User: soengwon
  Date: 2020/02/10
  Time: 12:02 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script src="${pageContext.request.contextPath}/sample-web-page/js/responsive.js"></script>
    <link href="${pageContext.request.contextPath}/sample-web-page/css/sb-admin-2.min.css" rel="stylesheet">
    <script>
        window.onload = function () {
            var nextbutton = document.getElementById('nextButton');
            nextbutton.onclick = function () {
                if (document.getElementById('widthId').value === '') {
                    alert('종이 사이즈를 반드시 선택해주세요.');
                } else if (document.getElementById('styleId').value === '') {
                    alert('라벨 스타일을 반드시 선택해주세요.');
                } else {
                    document.getElementById('context').submit();
                }
            }
        };
    </script>
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

            <!-- Topbar -->
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-2 col-md-3 mb-4 offset-1">
                        <div>
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center offset-2">
                                        <div class="col mr-2">
                                            <div class="dropdown">
                                                <button class="btn btn-warning dropdown-toggle" style="font-size: 20px"
                                                        type="button"
                                                        id="paperSizeButton" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false" title="">
                                                    종이 사이즈 선택
                                                </button>
                                                <div class="dropdown-menu animated--fade-in" style="font-size: 30px"
                                                     aria-labelledby="dropdownMenuButton">
                                                    <c:forEach var="paper" items="${paperSizes}">
                                                        <a class="dropdown-item"
                                                           title="${paper.width},${paper.height}"
                                                           onclick="setPaperSize(this)">${paper.size}</a>
                                                    </c:forEach>
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
                    <div class="col-xl-10 col-md-3 mb-4 offset-1">
                        <div>
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary" style="font-size: 30px">라벨링 스타일</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <c:forEach var="label" items="${labels}">
                                        <a class="btn btn-light btn-icon-split" style="margin: 10px"
                                           title="${label.styleName}" onclick="setLabelStyle(this)">
                                        <span class="icon text-gray-600">
                                          <i class="fas fa-arrow-right"></i>
                                        </span>
                                            <p style="margin: 20px">
                                                <img src="${pageContext.request.contextPath}/images/${label.styleName}.png"
                                                     style="width: 40rem">
                                            </p>
                                        </a>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <form id="context" method="post" action="init.do">
                    <input id="widthId" name="width" type="hidden">
                    <input id="heightId" name="height" type="hidden">
                    <input id="styleId" name="styleName" type="hidden">
                </form>
                <a id="nextButton" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm offset-10 mb-5"
                   style="font-size: 40px; padding-left: 30px; padding-right: 30px;">Next</a>

                <!-- Content Row -->

            </div>
        </div>

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

</div>

<script src="${pageContext.request.contextPath}/sample-web-page/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/sample-web-page/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/sample-web-page/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}/sample-web-page/js/sb-admin-2.min.js"></script>
<script src="${pageContext.request.contextPath}/sample-web-page/vendor/chart.js/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/sample-web-page/js/demo/chart-area-demo.js"></script>
<script src="${pageContext.request.contextPath}/sample-web-page/js/demo/chart-pie-demo.js"></script>
</body>
</html>
