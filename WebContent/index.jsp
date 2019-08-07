<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/query.year" method="post">
最小年份：<input type="text" name="beginYear" value=1988 /><br/>
最大年份：<input type="text" name="endYear" value=2000 /><br/>
<input type="submit" value="按出生年查询" />
</form>
<form action="<%=request.getContextPath() %>/query.distance" method="post">
最小里程：<input type="text" name="beginDistance" value=10415 /><br/>
最大里程：<input type="text" name="endDistance" value=10482 /><br/>
<input type="submit" value="按里程查询" />
</form>
<form action="<%=request.getContextPath() %>/query.time" method="post">
最小时间：<input type="text" name="beginTime" value=1 /><br/>
最大时间：<input type="text" name="endTime" value=12 /><br/>
<input type="submit" value="按时间查询" />
</form>
</body>
</html>