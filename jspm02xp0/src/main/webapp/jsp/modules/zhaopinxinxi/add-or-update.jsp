<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
	</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="contentText">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑招聘信息</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>招聘信息管理</span></li>
								<li class="breadcrumb-item active"><span>编辑招聘信息</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">招聘信息信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>招聘编号</label>
										<input id="zhaopinbianhao" name="zhaopinbianhao" class="form-control" value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>企业账号</label>
										<input id="qiyezhanghao" name="qiyezhanghao" class="form-control" placeholder="企业账号">
									</div>
									<div class="form-group col-md-6">
										<label>企业名称</label>
										<input id="qiyemingcheng" name="qiyemingcheng" class="form-control" placeholder="企业名称">
									</div>
									<div class="form-group col-md-6">
										<label>联系方式</label>
										<input id="lianxifangshi" name="lianxifangshi" class="form-control" placeholder="联系方式">
									</div>
									<div class="form-group col-md-6">
										<label>邮箱</label>
										<input id="youxiang" name="youxiang" class="form-control" placeholder="邮箱">
									</div>
									<div class="form-group col-md-6">
										<label>招聘人数</label>
										<input id="zhaopinrenshu" name="zhaopinrenshu" class="form-control" placeholder="招聘人数">
									</div>
									<div class="form-group col-md-6">
										<label>招聘岗位</label>
										<input id="zhaopingangwei" name="zhaopingangwei" class="form-control" placeholder="招聘岗位">
									</div>
									<div class="form-group col-md-6">
										<label>图片</label>
										<div><img id="tupianImg" src="" width="100" height="100">
										<div class="upload">选择文件<input name="file" type="file" id="tupianupload" class="form-control-file"></div>
										<input name="tupian" id="tupian-input" type="hidden"></div>
									</div>
										
											<div class="form-group  col-md-12">
												<label>职位要求</label>
												<div><div class="upload"><input id="zhiweiyaoqiuupload" name="file" type="file">选择文件</div>
												<script id="zhiweiyaoqiuEditor" type="text/plain" style="width:800px;height:230px;"></script>
												<script type="text/javascript">
												    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
												   //相见文档配置属于你自己的编译器
												 var zhiweiyaoqiuUe = UE.getEditor('zhiweiyaoqiuEditor', {
													toolbars: [
														[
															'undo', //撤销
															'bold', //加粗
															'redo', //重做
															'underline', //下划线
															'horizontal', //分隔线
															'inserttitle', //插入标题
															'cleardoc', //清空文档
															'fontfamily', //字体
															'fontsize', //字号
															'paragraph', //段落格式
															'inserttable', //插入表格
															'justifyleft', //居左对齐
															'justifyright', //居右对齐
															'justifycenter', //居中对
															'justifyjustify', //两端对齐
															'forecolor', //字体颜色
															'fullscreen', //全屏
															'edittip ', //编辑提示
															'customstyle', //自定义标题
															 ]
														]
													});
												</script>
												<input type="hidden" name="zhiweiyaoqiu" id="zhiweiyaoqiu-input">
												</div>
											</div>	
											<div class="form-group  col-md-12">
												<label>工资待遇</label>
												<div><div class="upload"><input id="gongzidaiyuupload" name="file" type="file">选择文件</div>
												<script id="gongzidaiyuEditor" type="text/plain" style="width:800px;height:230px;"></script>
												<script type="text/javascript">
												    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
												   //相见文档配置属于你自己的编译器
												 var gongzidaiyuUe = UE.getEditor('gongzidaiyuEditor', {
													toolbars: [
														[
															'undo', //撤销
															'bold', //加粗
															'redo', //重做
															'underline', //下划线
															'horizontal', //分隔线
															'inserttitle', //插入标题
															'cleardoc', //清空文档
															'fontfamily', //字体
															'fontsize', //字号
															'paragraph', //段落格式
															'inserttable', //插入表格
															'justifyleft', //居左对齐
															'justifyright', //居右对齐
															'justifycenter', //居中对
															'justifyjustify', //两端对齐
															'forecolor', //字体颜色
															'fullscreen', //全屏
															'edittip ', //编辑提示
															'customstyle', //自定义标题
															 ]
														]
													});
												</script>
												<input type="hidden" name="gongzidaiyu" id="gongzidaiyu-input">
												</div>
											</div>	
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
										<button id="exitBtn" type="button" class="btn btn-primary btn-lg">取消</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "zhaopinxinxi";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};


			function zhaopinbianhaoUuid(){
				if($("#zhaopinbianhao").val() == null || $("#zhaopinbianhao").val() == "null" || $("#zhaopinbianhao").val() == ""){
					$("#zhaopinbianhao").attr("value",Math.round(new Date().getTime()/1000));
				}
			}				

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "zhaopinxinxi/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
			$('#tupianupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('tupian-input').setAttribute('value',baseUrl+"upload/"+data.result.file);
					if(document.getElementById('tupianFileName') != null){
						document.getElementById('tupianFileName').innerHTML = "上传成功!";
					}				
					$("#tupianImg").attr("src",baseUrl+"upload/"+data.result.file);								
				}
			});
			$('#zhiweiyaoqiuupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {	
					UE.getEditor('zhiweiyaoqiuEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560>');					
				}
			});
			$('#gongzidaiyuupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {	
					UE.getEditor('gongzidaiyuEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560>');					
				}
			});
		}  
		//取消 
		function cancel() {
			window.location.href="list.jsp";
		}

		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("zhaopinxinxi/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
						let flag = true;
						if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
						
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
			if(ruleForm.zhiweiyaoqiu != null && ruleForm.zhiweiyaoqiu != 'null' && ruleForm.zhiweiyaoqiu != ''){
				var zhiweiyaoqiuMes = '' + ruleForm.zhiweiyaoqiu;
				var zhiweiyaoqiuUeditor = UE.getEditor('zhiweiyaoqiuEditor');
				zhiweiyaoqiuUeditor.ready(function() {
					zhiweiyaoqiuUeditor.setContent(zhiweiyaoqiuMes);
				});
			}
			if(ruleForm.gongzidaiyu != null && ruleForm.gongzidaiyu != 'null' && ruleForm.gongzidaiyu != ''){
				var gongzidaiyuMes = '' + ruleForm.gongzidaiyu;
				var gongzidaiyuUeditor = UE.getEditor('gongzidaiyuEditor');
				gongzidaiyuUeditor.ready(function() {
					gongzidaiyuUeditor.setContent(gongzidaiyuMes);
				});
			}
		}  

		// 获取富文本框内容
		function getContent(){
			if(UE.getEditor('zhiweiyaoqiuEditor').hasContents()){
				$('#zhiweiyaoqiu-input').attr('value',UE.getEditor('zhiweiyaoqiuEditor').getPlainTxt());
			}
			if(UE.getEditor('gongzidaiyuEditor').hasContents()){
				$('#gongzidaiyu-input').attr('value',UE.getEditor('gongzidaiyuEditor').getPlainTxt());
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    qiyezhanghao: {
					},
				    qiyemingcheng: {
					},
				    lianxifangshi: {
					},
				    youxiang: {
					},
				    zhaopinrenshu: {
					},
				    zhaopingangwei: {
					},
				    tupian: {
					},
				    zhiweiyaoqiu: {
					},
				    gongzidaiyu: {
					},
				    sfsh: {
					},
				    shhf: {
					},
				},
				messages: {
					qiyezhanghao: {
					},
					qiyemingcheng: {
					},
					lianxifangshi: {
					},
					youxiang: {
					},
					zhaopinrenshu: {
					},
					zhaopingangwei: {
					},
					tupian: {
					},
					zhiweiyaoqiu: {
					},
					gongzidaiyu: {
					},
					sfsh: {
					},
					shhf: {
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("zhaopinxinxi/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												//注册表单验证
						$(validform());	
					}
				});
			}else{
				zhaopinbianhaoUuid();

		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
		}		
		function calculationSE(colName){
			//单列求和接口
			http("zhaopinxinxi"+colName,"GET",{
				tableName: "zhaopinxinxi",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						if(res.data !=null && res.data.qiyezhanghao != null && res.data.qiyezhanghao != ''){
							$('#qiyezhanghao').val(res.data.qiyezhanghao)
						}
						if(res.data !=null && res.data.qiyemingcheng != null && res.data.qiyemingcheng != ''){
							$('#qiyemingcheng').val(res.data.qiyemingcheng)
						}
						if(res.data !=null && res.data.lianxifangshi != null && res.data.lianxifangshi != ''){
							$('#lianxifangshi').val(res.data.lianxifangshi)
						}
						if(res.data !=null && res.data.youxiang != null && res.data.youxiang != ''){
							$('#youxiang').val(res.data.youxiang)
						}
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#zhaopinbianhao").val(ruleForm.zhaopinbianhao);	
			$("#qiyezhanghao").val(ruleForm.qiyezhanghao);	
			$("#qiyemingcheng").val(ruleForm.qiyemingcheng);	
			$("#lianxifangshi").val(ruleForm.lianxifangshi);	
			$("#youxiang").val(ruleForm.youxiang);	
			$("#zhaopinrenshu").val(ruleForm.zhaopinrenshu);	
			$("#zhaopingangwei").val(ruleForm.zhaopingangwei);	
			$("#tupian-input").val(ruleForm.tupian);
			$("#zhiweiyaoqiu").val(ruleForm.zhiweiyaoqiu);	
			$("#gongzidaiyu").val(ruleForm.gongzidaiyu);	
				
						$("#shhf").val(ruleForm.shhf);	
		}		
		//图片显示
		function showImg(){
			var tupianFileName = "\"" + ruleForm.tupian + "\"";
			$("#tupianImg").attr("src",ruleForm.tupian);
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.zhaopinbianhao != null && res.data.zhaopinbianhao != ''){

					$("#zhaopinbianhao").val(res.data.zhaopinbianhao);
					}
					if(res.data != null && res.data != '' && res.data.qiyezhanghao != null && res.data.qiyezhanghao != ''){

					$("#qiyezhanghao").val(res.data.qiyezhanghao);
					}
					if(res.data != null && res.data != '' && res.data.qiyemingcheng != null && res.data.qiyemingcheng != ''){

					$("#qiyemingcheng").val(res.data.qiyemingcheng);
					}
					if(res.data != null && res.data != '' && res.data.lianxifangshi != null && res.data.lianxifangshi != ''){

					$("#lianxifangshi").val(res.data.lianxifangshi);
					}
					if(res.data != null && res.data != '' && res.data.youxiang != null && res.data.youxiang != ''){

					$("#youxiang").val(res.data.youxiang);
					}
					if(res.data != null && res.data != '' && res.data.zhaopinrenshu != null && res.data.zhaopinrenshu != ''){

					$("#zhaopinrenshu").val(res.data.zhaopinrenshu);
					}
					if(res.data != null && res.data != '' && res.data.zhaopingangwei != null && res.data.zhaopingangwei != ''){

					$("#zhaopingangwei").val(res.data.zhaopingangwei);
					}
					if(res.data != null && res.data != '' && res.data.tupian != null && res.data.tupian != ''){

					$("#tupianImg").attr("src",res.data.tupian);
					$("#tupian-input").val(res.data.tupian);
					}
					if(res.data != null && res.data != '' && res.data.zhiweiyaoqiu != null && res.data.zhiweiyaoqiu != ''){

					$("#zhiweiyaoqiu").val(res.data.zhiweiyaoqiu);
					}
					if(res.data != null && res.data != '' && res.data.gongzidaiyu != null && res.data.gongzidaiyu != ''){

					$("#gongzidaiyu").val(res.data.gongzidaiyu);
					}
					if(res.data != null && res.data != '' && res.data.sfsh != null && res.data.sfsh != ''){


										}
					if(res.data != null && res.data != '' && res.data.shhf != null && res.data.shhf != ''){

					$("#shhf").val(res.data.shhf);
					}
				}
			});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
