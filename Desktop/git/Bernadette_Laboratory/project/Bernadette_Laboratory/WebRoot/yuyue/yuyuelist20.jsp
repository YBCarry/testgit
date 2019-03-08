<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>Bernadette在线实验室管理系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="lib/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
  <body class=""> 
  <!--<![endif]-->
    
    <%@ include file="../top.jsp" %>
    


    
    <%@ include file="../left.jsp" %>
    

	

    
    <div class="content">
        
        <div class="header">
            
            <h1 class="page-title">${title }</h1>
        </div>
        
                

        <div class="container-fluid">
            <div class="row-fluid">

<form action="${url }" method="post">                    

          &nbsp;&nbsp;&nbsp;姓名：
            <input name="xingming" type="text" class="input-xlarge"  value="${xingming }">
           
           &nbsp;&nbsp;&nbsp;实验室名称：
            <input name="mingchen" type="text" class="input-xlarge"  value="${mingchen }">
        
            <input type="submit" class="button button-small border-green"   value="查询" />
   
 

</form>

<div class="well">
    <table class="table">
      <thead>
        <tr>
        <th>预约用户姓名</th>
          <th>实验室类型</th>
          <th>实验室名称</th>
          <th>负责人</th>
          <th>负责人电话</th>
          <th>日期</th>
          <th>时间段</th>
          <th>预约时间</th>
          <th>审核状态</th>
         
          
          
   
        
          <th >操作</th>
        </tr>
      </thead>
      <tbody>
      
      <c:forEach items="${list}" var="bean">
        <tr>
         <td>${bean.user.xingming }</td>
          <td>${bean.lab.leixing }</td>
          <td>${bean.lab.mingchen }</td>
          <td>${bean.lab.fzr }</td>
          <td>${bean.lab.dianhua }</td>
         <td>${bean.riqi }</td>
          <td>${bean.sjd }</td>
          <td>${bean.shijian }</td>
          <td>${bean.shenhe }</td>
        
         
          
          <td>
            <a  href="${url2 }update30?id=${bean.id }&menu=${menu }">查看</a> 
            
        	 <c:if test="${bean.shenhe=='审核中'}">
        	 <a  href="${url2 }update10?id=${bean.id }&menu=${menu }" onclick="{if(confirm('确认审核?')){return true;}return false;}">审核</a>
        	 </c:if>
        	 
          </td>
        </tr>
        </c:forEach>
        
        
        
        
      </tbody>
    </table>
</div>
<div class="pagination">
    ${pagerinfo }
</div>





                    
                    
                    
            </div>
        </div>
    </div>
    
    
    <%@ include file="../bottom.jsp" %>
    


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  </body>
</html>
