<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Account don't have result</title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="Style/css/bootstrap.min.css" />
<link rel="stylesheet" href="Style/css/font-awesome.min.css" />


<!-- page specific plugin styles -->
<link rel="stylesheet" href="Style/js/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="Style/css/fullcalendar.min.css" />


<!-- text fonts -->
<link rel="stylesheet" href="Style/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="Style/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<link rel="stylesheet" href="Style/css/ace-skins.min.css" />
<link rel="stylesheet" href="Style/css/ace-rtl.min.css" />

<!-- ace settings handler -->
<script src="Style/js/ace-extra.min.js"></script>

<link rel="stylesheet " href="Style/css/template.css" type="text/css ">

<script src="Style/js/jquery-2.1.4.min.js"></script>

<script src="Style/js/bootstrap.min.js"></script>

<!-- ace scripts -->
<script src="Style/js/ace-elements.min.js"></script>
<script src="Style/js/ace.min.js"></script>

<!-- Show thông báo ra màn hình -->
<script type="text/javascript">
	function show_comfirm() {
		var comfirmBox;
		comfirmBox = confirm("Bạn có chắc chắn muốn xóa kết quả ?");
		if (comfirmBox == true) {
			return true;
		} else {
			return false;
		}
	}
</script>



</head>

<body>
<body class="no-skin" style="font-size: 14px;">

	<!-- Insert file notification -->
	<jsp:include page="Notification.jsp" />

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<!-- Insert file menu -->
		<jsp:include page="MenuAdmin.jsp" />

		<div class="main-content">

			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
						</li>

						<li><a href="ViewResult.jsp">Manage Result</a></li>
						<li><a href="ViewResult.jsp">View Result</a></li>
						<li class="active">Account Don't Have Result</li>
					</ul>
					<!-- /.breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- /.nav-search -->
				</div>

				<div class="page-content">
					<!-- /.ace-settings-container -->


					<div class="page-header">
						<h1>
							View Result <small> <i
								class="ace-icon fa fa-angle-double-right"></i> overview &amp;
								stats
							</small>
						</h1>
					</div>


					<div class="">
						<h2>List user don't have result</h2>

						Date : <select name="date" id="date"
							style="border: 1px solid #00ffc1">
							<option>Choose date</option>
							<option>11-10-2017</option>
							<option>12-10-2017</option>
							<option>13-10-2017</option>
							<option>14-10-2017</option>
						</select> <span style="margin-left: 50px;">Class : </span> <select
							name="class" id="class" style="border: 1px solid #00ffc1">
							<option>Choose class</option>
							<option>C#-001</option>
							<option>JAVA-001</option>
							<option>MMT-001</option>
							<option>ĐHMT-001</option>
							<option>CNPM-001</option>
						</select>
						<%
					         Date dNow = new Date( );
					         SimpleDateFormat ft = 
					         new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
					         out.print( "<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
					      %>

						<table border='1' style="width: 100%"
							class="table table-hover table-bordered table-striped">
							<tr style="background: skyblue">
								<!-- 								<th>resulttestid</th> -->
								<th>userid</th>
								<th>username</th>
								<th>fullname</th>
								<th>Classname</th>
								<!-- 								<th>testid</th> -->
							</tr>
							<tbody id="myTable">
								<c:forEach items="${result}" var="list">

									<tr>
										<%-- 										<td>${list.resulttestid}</td> --%>
										<td>${list.userid}</td>
										<td>${list.username}</td>
										<td>${list.fullname}</td>
										<td>${list.classes}</td>
										<%-- 										<td>${list.testid}</td> --%>
									</tr>

								</c:forEach>
							</tbody>
						</table>
						<ul class="pagination">
							<!-- numberpage trong HomeController -->
							<c:if test="${numberpage==1}">
								<li class="disabled"><a href="">&laquo;</a></li>
								<li><a href="AccountDontHaveResult?pageid=1">1</a></li>
								<li><a href="AccountDontHaveResult?pageid=2">2</a></li>
								<li><a href="AccountDontHaveResult?pageid=${numberpage+1}">&raquo;</a></li>
							</c:if>

							<c:if test="${numberpage==maxpageid}">
								<li class="disabled"><a href="">&laquo;</a></li>
								<li><a href="AccountDontHaveResult?pageid=1">1</a></li>
								<li><a href="AccountDontHaveResult?pageid=2">2</a></li>
								<li class="disabled"><a href="#">&raquo;</a></li>
							</c:if>

							<c:if test="${numberpage>1 && numberpage<maxpageid}">
								<li><a href="AccountDontHaveResult?pageid=${numberpage-1}">&laquo;</a></li>
								<li><a href="AccountDontHaveResult?pageid=1">1</a></li>
								<li><a href="AccountDontHaveResult?pageid=2">2</a></li>
								<li><a href="AccountDontHaveResult?pageid=${numberpage+1}">&raquo;</a></li>
							</c:if>
						</ul>
					</div>



				</div>
			</div>
			<!--/.page-header -->
		</div>
		<!-- /.page-content -->
	</div>


	<!-- /.main-content -->

	<!--     Include file Footer -->
	<%-- 	<jsp:include page="Footer.jsp" /> --%>

	<div class="footer">
		<div class="footer-inner">
			<div class="footer-content">
				<span class="bigger-120"> <span class="blue bolder">DUT</span>
					Application &copy; 2022-2023
				</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
						<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-rss-square orange bigger-150"></i>
				</a>
				</span>
			</div>
		</div>
	</div>

	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>

	<!-- /.main-container -->

</body>

</html>
