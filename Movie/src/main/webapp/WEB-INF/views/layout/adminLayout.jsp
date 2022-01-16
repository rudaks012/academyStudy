<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="resources/admin/vendors/feather/feather.css">
<link rel="stylesheet"
	href="resources/admin/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="resources/admin/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="resources/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<link rel="stylesheet"
	href="resources/admin/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" type="text/css"
	href="resources/admin/js/select.dataTables.min.css">
<link rel="stylesheet"
	href="resources/admin/vendors/mdi/css/materialdesignicons.min.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="resources/admin/css/vertical-layout-light/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="resources/admin/ima	ges/favicon.png" />

</head>
<body>
	<div class="container-scroller">



		<div class="container-fluid page-body-wrapper">

			<tiles:insertAttribute name="aheader" />
			<tiles:insertAttribute name="asidebar" />
			<div class="main-panel">
				<tiles:insertAttribute name="abody" />
				<tiles:insertAttribute name="afooter" />
			</div>
		</div>

	</div>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="resources/admin/vendors/js/vendor.bundle.base.js"></script>

	<script src="resources/admin/vendors/chart.js/Chart.min.js"></script>
	<script
		src="resources/admin/vendors/datatables.net/jquery.dataTables.js"></script>
	<script
		src="resources/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
	<script src="resources/admin/js/dataTables.select.min.js"></script>


	<script src="resources/admin/js/off-canvas.js"></script>
	<script src="resources/admin/js/hoverable-collapse.js"></script>
	<script src="resources/admin/js/template.js"></script>
	<script src="resources/admin/js/settings.js"></script>
	<script src="resources/admin/js/todolist.js"></script>

	<script src="resources/admin/js/dashboard.js"></script>
	<script src="resources/admin/js/Chart.roundedBarCharts.js"></script>
	<!-- End custom js for this page-->

</body>
</html>