<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="UTF-8">
<title>在线书城首页</title>
<link type="text/css" rel="stylesheet"
	href="${base}/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${base}/css/index.css" />
<link rel="stylesheet" type="text/css" href="${base}/css/animate.css" />
<link rel="stylesheet" type="text/css" href="${base}/css/bootstrapValidator.min.css">
<title>在线书城</title>
</head>
<body>
	<jsp:include page="comm/header.jsp"><jsp:param  name="pIndex" value="1"/></jsp:include>

	<!--图书内容部分 begin-->
	<div class="container">
		<c:forEach var="cate" items="${cates}">
			<div id="datatable${cate.cateid}" class="container"></div>
		</c:forEach>
	</div>
	<%@ include file="comm/footer.jsp"%>

	<!--图书内容部分end-->


	<script src="${base}/dist/js/jquery.min.js"></script>
	<script src="${base}/js/carousel.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="${base}/dist/js/bootstrap.min.js"></script>
	<script src="${base}/js/wow.js"></script>
	<script src="${base}/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript">
		<c:forEach var="cate" items="${cates}">
		$("#datatable${cate.cateid}").load(
				"${base}/book/showData?now=1&size=4&cate=${cate.cateid}");
		</c:forEach>
		$(document).ready(function() {
			$("#form1").bootstrapValidator(
							{
								message : 'This value is not valid',

								fields : {
									username : {
										message : '用户名无效',
										validators : {
											notEmpty : {
												message : '用户名不能为空'
											},
											stringLength : {
												min : 6,
												max : 30,
												message : '用户名必须在6~30个字符之间'
											},
											regexp : {
												regexp : /^[a-z][a-zA-Z0-9]+$/,
												message : '用户名只能是小写字母开头,不能有中文'
											}
											
											
										}
									},
									

									password : {
										message : '密码无效',
										validators : {
											notEmpty : {
												message : '密码不能为空'
											},
											stringLength : {
												min : 6,
												max : 8,
												message : '密码必须在6~20个字符之间'
											},
											different : {
												field : 'username',
												message : '密码不能和用户名一样'
											}

										}
									},

									repassword : {
										message : '密码无效',
										validators : {
											notEmpty : {
												message : '密码不能为空'
											},

											identical : {
												field : 'password',
												message : '两次密码输入不一致'
											},
											different : {
												field : 'username',
												message : '密码不能和用户名一样'
											}

										}
									},

									email : {
										message : '邮箱无效',
										validators : {
											notEmpty : {
												message : '邮箱不能为空'
											},
											regexp : {
												regexp : /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/,
												message : '邮箱格式不正确'
											}

										}
									},
									phone : {
										message : '电话无效',
										validators : {
											notEmpty : {
												message : '电话不能为空'
											},
											regexp : {
												regexp : /^[1][3,4,5,7,8,9][0-9]{9}$/,
												message : '电话格式不正确'
											}

										}
									}

								}

							});
			$("#form2").bootstrapValidator(
					{
						message : 'This value is not valid',

						fields : {
					
							username:{
								message : '用户名无效',
								validators:{
									notEmpty : {
										message : '用户名不能为空'
									}
								}
							},
							
							password:{
								message : '密码无效',
								validators:{
									notEmpty : {
										message : '密码不能为空'
									}
								}
							}

							
						}
					});
		});
	</script>
</body>
</html>