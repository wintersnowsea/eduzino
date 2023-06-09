<%@page import="com.edu.zino.domain.Adminboard"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	Adminboard adminboard = (Adminboard) request.getAttribute("adminboard");
%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Plus Admin</title>
<!-- plugins:css -->
<jsp:include page="../inc/header_link.jsp"></jsp:include>
</head>

<style type="text/css">
.ctb{
	text-align: center;
}
.ctb1{
	display: inline-block;
}
</style>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_sidebar.html -->
		<jsp:include page="../inc/sidebar.jsp"></jsp:include>
		<!-- sidebar.html end  -->

		<!-- partial  -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_settings-panel.html -->
			<div id="settings-trigger">
				<i class="mdi mdi-settings"></i>
			</div>
			<div id="theme-settings" class="settings-panel">
				<i class="settings-close mdi mdi-close"></i>
				<p class="settings-heading">SIDEBAR SKINS</p>
				<div class="sidebar-bg-options selected" id="sidebar-default-theme">
					<div class="img-ss rounded-circle bg-light border mr-3"></div>
					Default
				</div>
				<div class="sidebar-bg-options" id="sidebar-dark-theme">
					<div class="img-ss rounded-circle bg-dark border mr-3"></div>
					Dark
				</div>
				<p class="settings-heading mt-2">HEADER SKINS</p>
				<div class="color-tiles mx-0 px-4">
					<div class="tiles default primary"></div>
					<div class="tiles success"></div>
					<div class="tiles warning"></div>
					<div class="tiles danger"></div>
					<div class="tiles info"></div>
					<div class="tiles dark"></div>
					<div class="tiles light"></div>
				</div>
			</div>
			<!-- partial -->
			<!-- partial:partials/_navbar.html -->
			<jsp:include page="../inc/navbar.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper pb-0">
					<div class="page-header flex-wrap">
						<div class="header-right"></div>
								
					</div>

					<!-- table row starts here -->


					<div class="container">
						<h2>게시판 글</h2>
						<p></p>
					<form id="form-group" id="form1">
					<input type="hidden" value="<%=adminboard.getAdminboard_idx()%>">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>제목</th>
									<td><%=adminboard.getAdminboard_title() %></td>
								</tr>
									<tr>
									<th>필독여부</th>
									<td><%=adminboard.getAdminboard_sort()%></td>
								</tr>
									<tr>
									<th>누구에게</th>
									<td><%=adminboard.getTarget().getUserType() %></td>
								</tr>
									<tr>
									<th>작성일</th>
									<td><%=adminboard.getAdminboard_regdate() %></td>
								</tr>
									<tr>
									<th>내용</th>
									<td><%=adminboard.getAdminboard_content() %></td>
								</tr>
									
							</thead>
							
						</table>
					</form>
						<br>
							<div class="ctb">
								<button type="button" class="btn btn-primary active" id="bt_list" >목록</button>
							</div>
							
				
					</div>
					<!-- content-wrapper ends -->
					<!-- partial:partials/_footer.html -->
					<jsp:include page="../inc/footer.jsp"></jsp:include>
					<!-- partial:partials/_footer.html end -->
					<!-- partial -->
				</div>
				<!-- main-panel ends -->
			</div>
			<!-- partial end  -->
			<!-- page-body-wrapper ends -->
		</div>
		<!-- container-scroller -->
		<!-- plugins:js -->
		<jsp:include page="../inc/footer_link.jsp"></jsp:include>
		<!-- plugins:js end -->
		<!-- End custom js for this page -->
	</div>
	<script type="text/javascript">
		$(function(){
			//목록
			$("#bt_list").click(function(){
				location.href="/admin/board/list";
			});
			

		});
	</script>
</body>

</html>