<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<script type="text/javascript" src="${path}/js/jquery-1.10.1.min.js" />
<script type="text/javascript" src="${path}/js/laytpl.js"></script>


<script type="text/javascript">

    $(document).on("click","#btn",function(){
        $.ajax({
            type:"POST",
            url:"/queryCity.do",
            data:{id:$("#cityid").val(),citycode:$("#citycode").val()},
            datatype:json,
            success:function(data){
                var getlpl=document.getElementById("demo").innerHTML;
                laytpl(getlpl).render(data,function(html){
                    document.getElementById("view").innerHTML=html;
                });
            }
        })
    })

</script>
<body>
<form id="form1" action="queryCity.do" method="post">
    <span>citycode:</span>
    <input width="50" id="citycode" name="citycode" />
    <span>id:</span>
    <input  width="30" id="cityid" name="id"/>
    <button id="btn" value="查询"></button>
</form>
<span>查询结果</span>
<table>
    <thead>
    <tr>
        <th width="10">id</th>
        <th width="30">city_code</th>
        <th width="30">city_jb</th>
        <th width="50">province_code</th>
        <th width="50">state</th>
        <th width="50">cityname</th>
        <th width="50">city</th>
        <th width="50">province</th>
    </tr>

    </thead>

    <tbody id="view"></tbody>
</table>

<script id="demo" type="text/html">
    {{# for (var i=0;i<d.row.length;i++){ }}
            <tr>
                <td>{{d.row[i].id}}</td>
                <td>{{d.row[i].citycode}}</td>
                <td>{{d.row[i].cityjb}}</td>
                <td>{{d.row[i].provincecode}}</td>
                <td>{{d.row[i].state}}</td>
                <td>{{d.row[i].cityname}}</td>
                <td>{{d.row[i].city}}</td>
                <td>{{d.row[i].province}}</td>
            </tr>
  {{#  } }}

</script>
</body>
</html>


