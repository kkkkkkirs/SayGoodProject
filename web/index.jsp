<%--
  Created by IntelliJ IDEA.
  User: kriszhang
  Date: 16/2/3
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>

      <meta charset="utf-8">
    <title>SayGood</title>
      <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,maximum-scale=1,user-scalable=no"><meta name="format-detection" content="telephone=no"><meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
  </head>
  <body>
       <div style="background-color: olive;overflow: auto" >
         <p style="background-color: darkseagreen;width: 100%;">
           <h3 style="color: slateblue">首页</h3>
         </p>
       </div>

  </body>
</html>
