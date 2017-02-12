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
					
					<form action="receipt/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="RECEIPT_ID" id="RECEIPT_ID" value="${pd.RECEIPT_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">收据号:</td>
								<td><input type="text" name="R_ID" id="R_ID" value="${pd.R_ID}" maxlength="32" placeholder="这里输入收据号" title="收据号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">订单ID:</td>
								<td><input type="text" name="ORDER_ID" id="ORDER_ID" value="${pd.ORDER_ID}" maxlength="32" placeholder="这里输入订单ID" title="订单ID" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">交款单位:</td>
								<td><input type="text" name="PAYMENT" id="PAYMENT" value="${pd.PAYMENT}" maxlength="50" placeholder="这里输入交款单位" title="交款单位" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">收款方式:</td>
								<td><input type="text" name="METHOD" id="METHOD" value="${pd.METHOD}" maxlength="32" placeholder="这里输入收款方式" title="收款方式" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">收款金额:</td>
								<td><input type="number" name="AMOUNT" id="AMOUNT" value="${pd.AMOUNT}" maxlength="32" placeholder="这里输入收款金额" title="收款金额" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">收款事由:</td>
								<td><input type="text" name="REASON" id="REASON" value="${pd.REASON}" maxlength="32" placeholder="这里输入收款事由" title="收款事由" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">入账日期:</td>
								<td><input class="span10 date-picker" name="ACCOUNTDATE" id="ACCOUNTDATE" value="${pd.ACCOUNTDATE}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="入账日期" title="入账日期" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">创建日期:</td>
								<td><input class="span10 date-picker" name="CREATEDATE" id="CREATEDATE" value="${pd.CREATEDATE}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="创建日期" title="创建日期" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">财务主管:</td>
								<td><input type="text" name="FINANCER" id="FINANCER" value="${pd.FINANCER}" maxlength="32" placeholder="这里输入财务主管" title="财务主管" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">记账:</td>
								<td><input type="text" name="ACCOUNTOR" id="ACCOUNTOR" value="${pd.ACCOUNTOR}" maxlength="32" placeholder="这里输入记账" title="记账" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出纳:</td>
								<td><input type="text" name="CASHIER" id="CASHIER" value="${pd.CASHIER}" maxlength="32" placeholder="这里输入出纳" title="出纳" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">审核:</td>
								<td><input type="text" name="AUDITOR" id="AUDITOR" value="${pd.AUDITOR}" maxlength="32" placeholder="这里输入审核" title="审核" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">经办:</td>
								<td><input type="text" name="MANAGER" id="MANAGER" value="${pd.MANAGER}" maxlength="32" placeholder="这里输入经办" title="经办" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">收据状态:</td>
								<td><input type="text" name="STATUS" id="STATUS" value="${pd.STATUS}" maxlength="32" placeholder="这里输入收据状态" title="收据状态" style="width:98%;"/></td>
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
			if($("#R_ID").val()==""){
				$("#R_ID").tips({
					side:3,
		            msg:'请输入收据号',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#R_ID").focus();
			return false;
			}
			if($("#ORDER_ID").val()==""){
				$("#ORDER_ID").tips({
					side:3,
		            msg:'请输入订单ID',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ORDER_ID").focus();
			return false;
			}
			if($("#PAYMENT").val()==""){
				$("#PAYMENT").tips({
					side:3,
		            msg:'请输入交款单位',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PAYMENT").focus();
			return false;
			}
			if($("#METHOD").val()==""){
				$("#METHOD").tips({
					side:3,
		            msg:'请输入收款方式',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#METHOD").focus();
			return false;
			}
			if($("#AMOUNT").val()==""){
				$("#AMOUNT").tips({
					side:3,
		            msg:'请输入收款金额',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#AMOUNT").focus();
			return false;
			}
			if($("#REASON").val()==""){
				$("#REASON").tips({
					side:3,
		            msg:'请输入收款事由',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REASON").focus();
			return false;
			}
			if($("#ACCOUNTDATE").val()==""){
				$("#ACCOUNTDATE").tips({
					side:3,
		            msg:'请输入入账日期',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ACCOUNTDATE").focus();
			return false;
			}
			if($("#CREATEDATE").val()==""){
				$("#CREATEDATE").tips({
					side:3,
		            msg:'请输入创建日期',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CREATEDATE").focus();
			return false;
			}
			if($("#FINANCER").val()==""){
				$("#FINANCER").tips({
					side:3,
		            msg:'请输入财务主管',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FINANCER").focus();
			return false;
			}
			if($("#ACCOUNTOR").val()==""){
				$("#ACCOUNTOR").tips({
					side:3,
		            msg:'请输入记账',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ACCOUNTOR").focus();
			return false;
			}
			if($("#CASHIER").val()==""){
				$("#CASHIER").tips({
					side:3,
		            msg:'请输入出纳',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CASHIER").focus();
			return false;
			}
			if($("#AUDITOR").val()==""){
				$("#AUDITOR").tips({
					side:3,
		            msg:'请输入审核',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#AUDITOR").focus();
			return false;
			}
			if($("#MANAGER").val()==""){
				$("#MANAGER").tips({
					side:3,
		            msg:'请输入经办',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MANAGER").focus();
			return false;
			}
			if($("#STATUS").val()==""){
				$("#STATUS").tips({
					side:3,
		            msg:'请输入收据状态',
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