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
					
					<form action="tourm/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="TOURM_ID" id="TOURM_ID" value="${pd.TOURM_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">线路名称:</td>
								<td><input type="text" name="LINE" id="LINE" value="${pd.LINE}" maxlength="255" placeholder="这里输入线路名称" title="线路名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">地域分类:</td>
								<td><input type="text" name="AREA" id="AREA" value="${pd.AREA}" maxlength="32" placeholder="这里输入地域分类" title="地域分类" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">天数:</td>
								<td><input type="number" name="DAYS" id="DAYS" value="${pd.DAYS}" maxlength="32" placeholder="这里输入天数" title="天数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出发日期:</td>
								<td><input class="span10 date-picker" name="STARTDATE" id="STARTDATE" value="${pd.STARTDATE}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="出发日期" title="出发日期" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">订单状态:</td>
								<td><input type="text" name="STATUS" id="STATUS" value="${pd.STATUS}" maxlength="10" placeholder="这里输入订单状态" title="订单状态" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">产品价格:</td>
								<td><input type="number" name="PRICE" id="PRICE" value="${pd.PRICE}" maxlength="32" placeholder="这里输入产品价格" title="产品价格" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">总库存:</td>
								<td><input type="number" name="TOTALNUMBER" id="TOTALNUMBER" value="${pd.TOTALNUMBER}" maxlength="32" placeholder="这里输入总库存" title="总库存" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">剩余库存:</td>
								<td><input type="number" name="SURPLUSNUMBER" id="SURPLUSNUMBER" value="${pd.SURPLUSNUMBER}" maxlength="32" placeholder="这里输入剩余库存" title="剩余库存" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">销售价格:</td>
								<td><input type="number" name="MARKETPRICE" id="MARKETPRICE" value="${pd.MARKETPRICE}" maxlength="32" placeholder="这里输入销售价格" title="销售价格" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">结算方式:</td>
								<td><input type="text" name="SETTLEMENT" id="SETTLEMENT" value="${pd.SETTLEMENT}" maxlength="32" placeholder="这里输入结算方式" title="结算方式" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注:</td>
								<td><input type="text" name="REMARK" id="REMARK" value="${pd.REMARK}" maxlength="255" placeholder="这里输入备注" title="备注" style="width:98%;"/></td>
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

<c:if test="${'edit' == msg }">
	<div>
		<iframe name="treeFrame" id="treeFrame" frameborder="0" src="<%=basePath%>/tours/list.do?TOURM_ID=${pd.TOURM_ID}" style="margin:0 auto;width:805px;height:368px;;"></iframe>
	</div>
</c:if>

<footer>
<div style="width: 100%;padding-bottom: 2px;" class="center">
	<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
	<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
</div>
</footer>

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
			if($("#LINE").val()==""){
				$("#LINE").tips({
					side:3,
		            msg:'请输入线路名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LINE").focus();
			return false;
			}
			if($("#AREA").val()==""){
				$("#AREA").tips({
					side:3,
		            msg:'请输入地域分类',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#AREA").focus();
			return false;
			}
			if($("#DAYS").val()==""){
				$("#DAYS").tips({
					side:3,
		            msg:'请输入天数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DAYS").focus();
			return false;
			}
			if($("#STARTDATE").val()==""){
				$("#STARTDATE").tips({
					side:3,
		            msg:'请输入出发日期',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#STARTING").focus();
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
			if($("#PRICE").val()==""){
				$("#PRICE").tips({
					side:3,
		            msg:'请输入产品价格',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PRICE").focus();
			return false;
			}
			if($("#TOTALNUMBER").val()==""){
				$("#TOTALNUMBER").tips({
					side:3,
		            msg:'请输入总库存',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TOTALNUMBER").focus();
			return false;
			}
			if($("#SURPLUSNUMBER").val()==""){
				$("#SURPLUSNUMBER").tips({
					side:3,
		            msg:'请输入剩余库存',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SURPLUSNUMBER").focus();
			return false;
			}
			if($("#MARKETPRICE").val()==""){
				$("#MARKETPRICE").tips({
					side:3,
		            msg:'请输入销售价格',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MARKETPRICE").focus();
			return false;
			}
			if($("#SETTLEMENT").val()==""){
				$("#SETTLEMENT").tips({
					side:3,
		            msg:'请输入结算方式',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SETTLEMENT").focus();
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