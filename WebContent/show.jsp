<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="pojo.PData"%>
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
    <script src="https://code.highcharts.com.cn/highcharts/modules/series-label.js"></script>
    <script src="https://code.highcharts.com.cn/highcharts/modules/oldie.js"></script>
    <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
	<% 
        List<PData> datas = (List<PData>)request.getAttribute("datas"); 
        
    %> 
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
		  <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">柱状图</a></li>
		  <li role="presentation"><a href="#profile" role="tab" data-toggle="tab">饼状图</a></li>
		  <li role="presentation"><a href="#messages" role="tab" data-toggle="tab">折线图</a></li>
		</ul>
	
		<div class="tab-content">
		  <div role="tabpanel" class="tab-pane active" id="home">
		  	<div id="container1" style="min-width:400px;height:400px"></div>
		  	<script> 
            var chart = Highcharts.chart('container1', {
			    chart: {
			        type: 'column'
			    },
			    title: {
			        text: '人员类别数量柱状图'
			    },
			    subtitle: {
			        text: '所有数据由北京交通大学提供'
			    },
			    xAxis: {
			        type: 'category',
			        labels: {
			            rotation: -15  
			        }
			    },
			    yAxis: {
			        min: 0,
			        title: {
			            text: '人员数量(个)'
			        }
			    },
			    legend: {
			        enabled: false
			    },
			    tooltip: {
			        pointFormat: '数量: <b>{point.y:.1f} 人</b>'
			    },
			    series: [{
			        name: '出生年',
			        data: [
			        	<% 
			            for(PData data:datas){ 
				        %> 
				        [<%= data.getpType() %>, <%= data.getNumber() %>],
				        <% 
				            } 
				        %> 
			        ],
			        dataLabels: {
			            enabled: true,
			            rotation: -90,
			            color: '#FFFFFF',
			            align: 'right',
			            format: '{point.y:.1f}', 
			            y: 10
			        }
			    }]
			});
        	</script>
		  </div>
		  <div role="tabpanel" class="tab-pane" id="profile">
		  	<div id="container2" style="min-width:400px;height:400px"></div>
	        <script>
	            // JS 代码 
	            Highcharts.chart('container2', {
					chart: {
							plotBackgroundColor: null,
							plotBorderWidth: null,
							plotShadow: false,
							type: 'pie'
					},
					title: {
							text: '人员类别数量分布图'
					},
					tooltip: {
							pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					},
					plotOptions: {
							pie: {
									allowPointSelect: true,
									cursor: 'pointer',
									dataLabels: {
											enabled: true,
											format: '<b>{point.name}</b>: {point.percentage:.1f} %',
											style: {
													color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
											}
									}
							}
					},
					series: [{
							name: '数量占比',
							colorByPoint: true,
							data: [
								<% 
					            for(PData data:datas){ 
						        %>
						        {
									name: <%= data.getpType() %>,
									y: <%= data.getNumber() %>,
								},
						        <% 
						            } 
						        %> 
							]
					}]
			});
	        </script>
		  </div>
		  <div role="tabpanel" class="tab-pane" id="messages">
		  	<div id="container3" style="max-width:800px;height:400px"></div>
	        <script>
	            // JS 代码 
			var chart = Highcharts.chart('container3', {
			    chart: {
			        type: 'line'
			    },
			    title: {
			        text: '人员类别数量折线图'
			    },
			    subtitle: {
			        text: '所有数据由北京交通大学提供'
			    },
			    xAxis: {
			        categories: [
			        	<% 
			            for(PData data:datas){ 
				        %>
				        <%= data.getpType() %>,
				        <% 
				            } 
				        %> 
			        	]
			    },
			    yAxis: {
			        title: {
			            text: '人员数量 (个)'
			        }
			    },
			    plotOptions: {
			        line: {
			            dataLabels: {
			                // 开启数据标签
			                enabled: true          
			            },
			            // 关闭鼠标跟踪，对应的提示框、点击事件会失效
			            enableMouseTracking: false
			        }
			    },
			    series: [{
			        name: '人员数量',
			        data: [
			        	<% 
			            for(PData data:datas){ 
				        %>
				        <%= data.getNumber() %>,
				        <% 
				            } 
				        %>
				    ]
			    }]
			});


	        </script>
		  </div>
		</div>
    </div>

    <footer class="footer">
      <div class="container">
        <p class="text-muted">@sky</p>
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