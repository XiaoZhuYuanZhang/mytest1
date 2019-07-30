<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src ="js/vue.min.js"></script>
  </head>
  <body>
    <div id="app">
    	<input type="text" @blur.prevent="check" ref="username">
    </div>
  </body>
  <script>
  	var vue = new Vue({
  		el:"#app",
  		methods:{
  			check:function(){
  				this.$http.post('checkUsername',{params:{username:this.$refs.username.value},{emulateJSON:true}}).then(function(res){
  					alert(res.body);
  				},function(){
  					console.log('请求失败');
  				})
  			}
  		}
  	})
  </script>
</html>
