<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="tours/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="TOURS_ID" id="TOURS_ID" value="${pd.TOURS_ID}"/>
						<input type="hidden" name="_ID" id="_ID" value="${pd._ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">主表ID:</td>
								<td><input type="text" name="TOURM_ID" id="TOURM_ID" value="${pd.TOURM_ID}" maxlength="32" placeholder="这里输入主表ID" title="主表ID" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">酒店ID:</td>
								<td><input type="text" name="HOTEL_ID" id="HOTEL_ID" value="${pd.HOTEL_ID}" maxlength="32" placeholder="这里输入酒店ID" title="酒店ID" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">航空ID:</td>
								<td><input type="text" name="AIRPORT_ID" id="AIRPORT_ID" value="${pd.AIRPORT_ID}" maxlength="32" placeholder="这里输入航空ID" title="航空ID" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">标题:</td>
								<td><input type="text" name="TITLE" id="TITLE" value="${pd.TITLE}" maxlength="100" placeholder="这里输入标题" title="标题" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">交通类型:</td>
								<td><input type="text" name="TRAFFIC" id="TRAFFIC" value="${pd.TRAFFIC}" maxlength="32" placeholder="这里输入交通类型" title="交通类型" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">用餐:</td>
								<td><input type="text" name="DINNER" id="DINNER" value="${pd.DINNER}" maxlength="32" placeholder="这里输入用餐" title="用餐" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">住宿:</td>
								<td><input type="text" name="LODGING" id="LODGING" value="${pd.LODGING}" maxlength="32" placeholder="这里输入住宿" title="住宿" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">行程:</td>
								<td><input type="text" name="TRAVEL" id="TRAVEL" value="${pd.TRAVEL}" maxlength="21845" placeholder="这里输入行程" title="行程" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
					</form>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#TOURM_ID").val()==""){
				$("#TOURM_ID").tips({
					side:3,
		            msg:'请输入主表ID',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TOURM_ID").focus();
			return false;
			}
			if($("#HOTEL_ID").val()==""){
				$("#HOTEL_ID").tips({
					side:3,
		            msg:'请输入酒店ID',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#HOTEL_ID").focus();
			return false;
			}
			if($("#AIRPORT_ID").val()==""){
				$("#AIRPORT_ID").tips({
					side:3,
		            msg:'请输入航空ID',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#AIRPORT_ID").focus();
			return false;
			}
			if($("#TITLE").val()==""){
				$("#TITLE").tips({
					side:3,
		            msg:'请输入标题',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TITLE").focus();
			return false;
			}
			if($("#TRAFFIC").val()==""){
				$("#TRAFFIC").tips({
					side:3,
		            msg:'请输入交通类型',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TRAFFIC").focus();
			return false;
			}
			if($("#DINNER").val()==""){
				$("#DINNER").tips({
					side:3,
		            msg:'请输入用餐',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DINNER").focus();
			return false;
			}
			if($("#LODGING").val()==""){
				$("#LODGING").tips({
					side:3,
		            msg:'请输入住宿',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LODGING").focus();
			return false;
			}
			if($("#TRAVEL").val()==""){
				$("#TRAVEL").tips({
					side:3,
		            msg:'请输入行程',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TRAVEL").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>