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
					
					<form action="order/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="ORDER_ID" id="ORDER_ID" value="${pd.ORDER_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">分销商:</td>
								<td><input type="text" name="FXS" id="FXS" value="${pd.FXS}" maxlength="32" placeholder="这里输入分销商" title="分销商" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">供应商:</td>
								<td><input type="text" name="GYS" id="GYS" value="${pd.GYS}" maxlength="32" placeholder="这里输入供应商" title="供应商" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">预定日期:</td>
								<td><input class="span10 date-picker" name="RESERVEDATE" id="RESERVEDATE" value="${pd.RESERVEDATE}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="预定日期" title="预定日期" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出团人数:</td>
								<td><input type="number" name="PERSONS" id="PERSONS" value="${pd.PERSONS}" maxlength="32" placeholder="这里输入出团人数" title="出团人数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">总价:</td>
								<td><input type="number" name="SUM" id="SUM" value="${pd.SUM}" maxlength="32" placeholder="这里输入总价" title="总价" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">分销商支付:</td>
								<td><input type="number" name="FXSPAY" id="FXSPAY" value="${pd.FXSPAY}" maxlength="32" placeholder="这里输入分销商支付" title="分销商支付" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">分销商退款:</td>
								<td><input type="number" name="FXSREFUND" id="FXSREFUND" value="${pd.FXSREFUND}" maxlength="32" placeholder="这里输入分销商退款" title="分销商退款" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">供应商付款:</td>
								<td><input type="number" name="GYSPOS" id="GYSPOS" value="${pd.GYSPOS}" maxlength="32" placeholder="这里输入供应商付款" title="供应商付款" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">订单状态:</td>
								<td><input type="text" name="STATUS" id="STATUS" value="${pd.STATUS}" maxlength="32" placeholder="这里输入订单状态" title="订单状态" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注:</td>
								<td><input type="text" name="REMARK" id="REMARK" value="${pd.REMARK}" maxlength="255" placeholder="这里输入备注" title="备注" style="width:98%;"/></td>
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
			if($("#FXS").val()==""){
				$("#FXS").tips({
					side:3,
		            msg:'请输入分销商',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FXS").focus();
			return false;
			}
			if($("#GYS").val()==""){
				$("#GYS").tips({
					side:3,
		            msg:'请输入供应商',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#GYS").focus();
			return false;
			}
			if($("#RESERVEDATE").val()==""){
				$("#RESERVEDATE").tips({
					side:3,
		            msg:'请输入预定日期',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#RESERVEDATE").focus();
			return false;
			}
			if($("#PERSONS").val()==""){
				$("#PERSONS").tips({
					side:3,
		            msg:'请输入出团人数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PERSONS").focus();
			return false;
			}
			if($("#SUM").val()==""){
				$("#SUM").tips({
					side:3,
		            msg:'请输入总价',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SUM").focus();
			return false;
			}
			if($("#FXSPAY").val()==""){
				$("#FXSPAY").tips({
					side:3,
		            msg:'请输入分销商支付',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FXSPAY").focus();
			return false;
			}
			if($("#FXSREFUND").val()==""){
				$("#FXSREFUND").tips({
					side:3,
		            msg:'请输入分销商退款',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FXSREFUND").focus();
			return false;
			}
			if($("#GYSPOS").val()==""){
				$("#GYSPOS").tips({
					side:3,
		            msg:'请输入供应商付款',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#GYSPOS").focus();
			return false;
			}
			if($("#STATUS").val()==""){
				$("#STATUS").tips({
					side:3,
		            msg:'请输入订单状态',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#STATUS").focus();
			return false;
			}
			if($("#REMARK").val()==""){
				$("#REMARK").tips({
					side:3,
		            msg:'请输入备注',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REMARK").focus();
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