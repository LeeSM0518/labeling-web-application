<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sangminlee
  Date: 2020/02/19
  Time: 9:59 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Easy Labeling</title>
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Do+Hyeon|Gothic+A1|Jua|Nanum+Brush+Script|Nanum+Gothic|Nanum+Gothic+Coding|Nanum+Myeongjo|Nanum+Pen+Script|Noto+Sans+KR|Noto+Serif+KR|Sunflower:300&display=swap"
          rel="stylesheet">
    <script>
        function goHome() {
            location.href = 'print.do';
        }
    </script>
</head>
<body>
<div id="background" style="width: ${sessionScope.get("width")}; height: ${sessionScope.get("height")};
        background-color: ${sessionScope.get("labelBackgroundColor")};" onclick="goHome()">
    <c:if test="${sessionScope.label.styleName == 'text1'}">
        <div id="content"
             style="font-size: ${sessionScope.get("contentFontSize")}; font-family: ${sessionScope.get("contentFontName")};
                     color: ${sessionScope.get("contentFontColor")}; height: 100%;
                     display: flex; justify-content: center; align-items: center;">
                ${sessionScope.get("contentFontText")}
        </div>
    </c:if>
    <c:if test="${sessionScope.label.styleName == 'text2'}">
        <div style="font-size: ${sessionScope.get("headerFontSize")}; font-family: ${sessionScope.get("headerFontName")};
                color: ${sessionScope.get("headerFontColor")}; height: 50%;
                display: flex; justify-content: center; align-items: center;">
                ${sessionScope.get("headerFontText")}
        </div>
        <div style="font-size: ${sessionScope.get("tailFontSize")}; font-family: ${sessionScope.get("tailFontName")};
                color: ${sessionScope.get("tailFontColor")}; height: 50%;
                display: flex; justify-content: center; align-items: center;">
                ${sessionScope.get("tailFontText")}
        </div>
    </c:if>
    <c:if test="${sessionScope.label.styleName == 'text2-bar'}">
        <div id="headerTextId" class="header-text"
             style="font-size: ${sessionScope.get("headerFontSize")}; font-family: ${sessionScope.get("headerFontName")};
                     color: ${sessionScope.get("headerFontColor")}; height: ${sessionScope.get("headerHeight")}mm; display: flex;
                     justify-content: center; align-items: center;">
                ${sessionScope.get("headerFontText")}
        </div>
        <div id="label-bar"
             style="height: ${sessionScope.get("barSize")}; width: 100%;
                     background-color: ${sessionScope.get("barColor")};"></div>
        <div id="tailTextId" class="tail-text" style="font-size: ${sessionScope.get("tailFontSize")};
                font-family: ${sessionScope.get("tailFontName")};
                color: ${sessionScope.get("tailFontColor")};
                height: ${sessionScope.get("tailHeight")}mm; display: flex; justify-content: center; align-items: center;">
                ${sessionScope.get("tailFontText")}
        </div>
    </c:if>
    <c:if test="${sessionScope.label.styleName.contains('border')}">
        <div style="padding: 5mm;">
            <c:if test="${sessionScope.label.styleName.contains('text1')}">
                <div style="font-size: ${sessionScope.get("contentFontSize")}; font-family: ${sessionScope.get("contentFontName")};
                        color: ${sessionScope.get("contentFontColor")};
                        height: ${sessionScope.get("contentHeight")}; border: ${sessionScope.get("borderStyle")};
                        display: flex; justify-content: center; align-items: center;">
                        ${sessionScope.get("contentFontText")}
                </div>
            </c:if>
            <c:if test="${sessionScope.label.styleName.contains('text2')}">
                <div id="contentTextId"
                     style="border: ${sessionScope.get("borderStyle")}; width: 100%;">
                    <div class="header-text"
                         style="font-size: ${sessionScope.get("headerFontSize")}; font-family: ${sessionScope.get("headerFontName")};
                                 color: ${sessionScope.get("headerFontColor")}; height: ${sessionScope.get("headerHeight")}mm;
                         display: flex; justify-content: center; align-items: center;">
                            ${sessionScope.get("headerFontText")}
                    </div>
                    <div style="height: ${sessionScope.get("barSize")}; width: 100%;
                            background-color: ${sessionScope.get("barColor")}; display: flex; justify-content: center; align-items: center;"></div>
                    <div class="tail-text" style="font-size: ${sessionScope.get("tailFontSize")};
                            font-family: ${sessionScope.get("tailFontName")}; color: ${sessionScope.get("tailFontColor")};
                            height: ${sessionScope.get("tailHeight")}mm; display: flex; justify-content: center; align-items: center;">
                            ${sessionScope.get("tailFontText")}
                    </div>
                </div>
            </c:if>
        </div>
    </c:if>
</div>
</body>
</html>
