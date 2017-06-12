<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <script type="text/javascript" src="${path}/js/jquery-1.10.1.min.js" />
    <script type="text/javascript" src="${path}/js/laytpl.js"></script>


    <script type="text/javascript">
        //点击跳转按钮
        $(document).on("click","#btn",function(){
                $.ajax({
                    type:"POST",
                    url:"/toHome.do"

                } );
        })

    </script>

</head>
<body>
<h2>Hello World!</h2>
<div>
    <img src="img/ewm.jpg" alt="项目图片" />
    <img src="e:/imgs/ewm.jpg" alt="本地图片" />
</div>
</body>
</html>
