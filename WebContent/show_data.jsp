<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="pojo.Person"%>
<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>信息统计页面</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <script src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
    <script src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
    <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">信息统计页面</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">主页</a></li>
            <li><a href="#about">关于</a></li>
            <li><a href="#contact">联系我们</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <!-- Begin page content -->
    <div class="container">
      	<div class="page-header">
        	<h1>请选择展示方式</h1>
      	</div>
      	<ul class="nav nav-tabs" role="tablist">
		  <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">æ±ç¶å¾</a></li>
		  <li role="presentation"><a href="#profile" role="tab" data-toggle="tab">é¥¼ç¶å¾</a></li>
		  <li role="presentation"><a href="#messages" role="tab" data-toggle="tab">æçº¿å¾</a></li>
		  <li role="presentation"><a href="#settings" role="tab" data-toggle="tab">éå­å¡å¾</a></li>
		</ul>
	
		<div class="tab-content">
		  <div role="tabpanel" class="tab-pane active" id="home">
		  	<div id="container" style="min-width:400px;height:400px"></div>
		  	<script>
            // JS ä»£ç  
            var chart = Highcharts.chart('container', {
			    chart: {
			        type: 'column'
			    },
			    title: {
			        text: 'äººååºçå¹´åå¸å¾'
			    },
			    subtitle: {
			        text: 'æ°æ®ç±åäº¬äº¤éå¤§å­¦æä¾'
			    },
			    xAxis: {
			        type: 'category',
			        labels: {
			            rotation: 0  // è®¾ç½®è½´æ ç­¾æè½¬è§åº¦
			        }
			    },
			    yAxis: {
			        min: 0,
			        title: {
			            text: 'äººæ° (ä¸ª)'
			        }
			    },
			    legend: {
			        enabled: false
			    },
			    tooltip: {
			        pointFormat: 'äººå£æ°é: <b>{point.y:.1f} ä¸ª</b>'
			    },
			    series: [{
			        name: 'æ»äººå£',
			        data: [
			            ['1998', 1000],
			            ['2000', 23.50],
			            ['åäº¬', 21.51],
			            ['å¾·é', 16.78],
			            ['æåæ¯', 16.06],
			            ['å¤©æ´¥', 15.20],
			            ['ä¼æ¯å¦å¸å°', 14.16],
			            ['ä¸äº¬', 13.51],
			            ['å¹¿å·', 13.08],
			            ['å­ä¹°', 12.44],
			            ['è«æ¯ç§', 12.19],
			            ['å£ä¿ç½', 12.03],
			            ['æ·±å³', 10.46],
			            ['éå è¾¾', 10.07],
			            ['æåå°', 10.05],
			            ['é¦å°', 9.99],
			            ['æ­¦æ±', 9.78],
			            ['éæ²è¨', 9.73],
			            ['å¼ç½', 9.27],
			            ['å¢¨è¥¿å¥', 8.87]
			        ],
			        dataLabels: {
			            enabled: true,
			            rotation: -90,
			            color: '#FFFFFF',
			            align: 'right',
			            format: '{point.y:.1f}', // :.1f ä¸ºä¿ç 1 ä½å°æ°
			            y: 10
			        }
			    }]
			});
        	</script>
		  </div>
		  <div role="tabpanel" class="tab-pane" id="profile">b</div>
		  <div role="tabpanel" class="tab-pane" id="messages">c</div>
		  <div role="tabpanel" class="tab-pane" id="settings">d</div>
		</div>
    </div>

    <footer class="footer">
      <div class="container">
        <p class="text-muted">Place sticky footer content here.</p>
      </div>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>