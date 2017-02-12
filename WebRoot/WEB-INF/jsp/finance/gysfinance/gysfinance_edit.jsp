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
					
					<form action="gysfinance/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="GYSFINANCE_ID" id="GYSFINANCE_ID" value="${pd.GYSFINANCE_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">供应商ID:</td>
								<td><input type="text" name="USERID" id="USERID" value="${pd.USERID}" maxlength="32" placeholder="这里输入供应商ID" title="供应商ID" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">订单数量:</td>
								<td><input type="number" name="ORDERQUANTITY" id="ORDERQUANTITY" value="${pd.ORDERQUANTITY}" maxlength="32" placeholder="这里输入订单数量" title="订单数量" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">预定数量:</td>
								<td><input type="number" name="DESTINEQUANTITY" id="DESTINEQUANTITY" value="${pd.DESTINEQUANTITY}" maxlength="32" placeholder="这里输入预定数量" title="预定数量" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">总团款:</td>
								<td><input type="number" name="ALLPAY" id="ALLPAY" value="${pd.ALLPAY}" maxlength="32" placeholder="这里输入总团款" title="总团款" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">已结算:</td>
								<td><input type="number" name="HADPAY" id="HADPAY" value="${pd.HADPAY}" maxlength="32" placeholder="这里输入已结算" title="已结算" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">未结算:</td>
								<td><input type="number" name="YETPAY" id="YETPAY" value="${pd.YETPAY}" maxlength="32" placeholder="这里输入未结算" title="未结算" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">请款中:</td>
								<td><input type="number" name="REQUESTING" id="REQUESTING" value="${pd.REQUESTING}" maxlength="32" placeholder="这里输入请款中" title="请款中" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">结算手续费:</td>
								<td><input type="number" name="FEE" id="FEE" value="${pd.FEE}" maxlength="32" placeholder="这里输入结算手续费" title="结算手续费" style="width:98%;"/></td>
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
			if($("#USERID").val()==""){
				$("#USERID").tips({
					side:3,
		            msg:'请输入供应商ID',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#USERID").focus();
			return false;
			}
			if($("#ORDERQUANTITY").val()==""){
				$("#ORDERQUANTITY").tips({
					side:3,
		            msg:'请输入订单数量',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ORDERQUANTITY").focus();
			return false;
			}
			if($("#DESTINEQUANTITY").val()==""){
				$("#DESTINEQUANTITY").tips({
					side:3,
		            msg:'请输入预定数量',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DESTINEQUANTITY").focus();
			return false;
			}
			if($("#ALLPAY").val()==""){
				$("#ALLPAY").tips({
					side:3,
		            msg:'请输入总团款',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ALLPAY").focus();
			return false;
			}
			if($("#HADPAY").val()==""){
				$("#HADPAY").tips({
					side:3,
		            msg:'请输入已结算',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#HADPAY").focus();
			return false;
			}
			if($("#YETPAY").val()==""){
				$("#YETPAY").tips({
					side:3,
		            msg:'请输入未结算',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YETPAY").focus();
			return false;
			}
			if($("#REQUESTING").val()==""){
				$("#REQUESTING").tips({
					side:3,
		            msg:'请输入请款中',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REQUESTING").focus();
			return false;
			}
			if($("#FEE").val()==""){
				$("#FEE").tips({
					side:3,
		            msg:'请输入结算手续费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FEE").focus();
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