<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!-- 已完成 -->
<head>
	<base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="快借宝，快借宝网站,理财,贷款">
    <meta name="description" content="网络银行、在线理财">
    <title>理财列表</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="/qbank/template/shop/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/global.css" />
    <link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/style.css" />
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container">
        <div id="pt" class="bm cl">
            <div class="z"> <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/product!index.action">理财</a> <em class="marginL10 marginR10">>></em><a href="/qbank/shop/product!index.action">项目列表</a></div>
        </div>
        <!--start: Navigation -->
        <div class="NavbarInverse">
            <div class="Nav">
                <ul>
                    <li class="active"><a href="javascript:void(0)">项目列表</a></li>
                    
                </ul>
            </div>
        </div>
        <!--end: Navigation -->
        <div class="main">
            <div>
                <ul class="SortBySelect">
                    <li class="select-list">
                        <dl id="select1">
                            <dt>项目状态：</dt>
                            <dd class="selected" ><a href="javascript:;">全部</a></dd>
                            <dd value="0"><a href="javascript:;">可投资</a></dd>
                            <dd value="1"><a href="javascript:;">还款中</a></dd>
                            <dd value="2"><a href="javascript:;">已还款</a></dd>
                        </dl>
                    </li>        
                    <li class="select-list">
                        <dl id="select3">
                            <dt>项目期限：</dt>
                            <dd class="selected"><a href="javascript:;">全部</a></dd>
                          
                            <dd value="2"><a href="javascript:;">6个月</a></dd>
                            <dd value="3"><a href="javascript:;">9个月</a></dd>
                            <dd value="4"><a href="javascript:;">12个月</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <div class="blank0"></div>
             <div class="course-tool-bar clearfix">
               <!--  <div class="left">
                    <span class="left">排序：</span>
                    <ul class="sortbar left">
                        <li class="active"><a href="javascript:;">发布时间<span class="sort-arrow-up"></span></a></li>
                        <li class="active"><a href="javascript:;">项目规模<span class="sort-arrow-down"></span></a></li>
                        <li><a href="javascript:;" id="rate">年化收益<span></span></a></li>
                        <li><a href="javascript:;">项目期限<span></span></a></li>
                    </ul>
                </div>
                <div class="right">
                    <span id="available" class="orange fB pointer" style="display: none;">可投项目</span>
                    <span id="history" class="orange fB pointer" style="display: block;">历史项目</span>
                </div> -->
            </div> 
            <div ID="availableshow" class="ProductBoxlist">
              <ul>
              <div id="projectList">
            <c:forEach items="${proList}" var="project" varStatus="vs">
              
                    <li>
                        <div class="ProductBox">
                            <div class="left ProductBoxphoto">
                                <a href="/qbank/shop/project!details.action?id=${project.id }"><img src="/qbank/${project.projectImageUrl} " /></a>
                            </div>
                            <div class="left marginL10 ProductBoxTitle">
                                <p class="darkblue  paddingL12 fB f16px"><a href="/qbank/shop/project!details.action?id=${project.id }">${project.projectName}<span class="ProductBoxrisk">A++</span></a></p>
                                <div>
                                    <div class="left productBoxItem" style="width:120px">
                                        <div class="left margin4">
                                            <p class="gray2 LineH24">年化收益</p>
                                            <p><span class="f20px LineH26 orange marginR4">${project.projectRate} </span><span class="f14px orange">%</span></p>
                                        </div>
                                    </div>
                                    <div class="left productBoxItem" style="width:120px">
                                        <div class="left margin4">
                                            <p class="gray2 LineH24">项目期限</p>
                                            <p><span class="f20px LineH26 gray marginR4">365</span><span class="f14px">天</span></p>
                                        </div>
                                    </div>
                                    <div class="left productBoxItem">
                                        <div class="left margin4">
                                            <p class="gray2 LineH24">项目规模</p>
                                            <p><span class="f20px LineH26 gray marginR4"><s:property value="#project.loanAmount"/></span>${project.loanAmount}<span class="f14px">元</span></p>
                                        </div>
                                    </div>
                                    <div class="left votebox">
                                        <div class="f12px gray2 left LineH24">项目进度</div>
                                        <dl class="left barbox">
                                            <dd class="barline">
                                                <div w="${(project.loanAmount-project.investAmount)*100/project.loanAmount}" style="width:0px;" class="charts"></div>
                                            </dd>
                                            <dd class="last">${(project.loanAmount-project.investAmount)*100/project.loanAmount}%</dd>
                                        </dl>
                                    </div>
                                    <div class="right dj">
                                      
                                    </div>
                                </div>
                            </div>
                            <div class="left ProductBoxDetail">
                                <p class="marginB20 f12px marginT16">可投金额：${project.investAmount}元</p>
                                <div><a href="/qbank/shop/project!details.action?id=${project.id }" class="btn btn-block  btn-cta-primary" style="width:140px;">立即投资</a></div>
                            </div>
                        </div>
                        <div class="blank0"></div>
                    </li>
                
                </c:forEach>
                </div>
                </ul>
            </div>
            <div class="page"><a href="#">首页</a><a href="#">上一页</a><a href="#">下一页</a><a href="#">尾页</a></div>
        </div>
    </div>
    <%@include file="common/footer.jsp" %>
	<%@include file="common/login_modal.jsp" %>
	<%@include file="common/signup_modal.jsp" %>
    <!-- Javascript -->
    <script type="text/javascript" src="/qbank/template/shop/js/jquery.min.js"></script>
    <script type="text/javascript" src="/qbank/template/shop/js/bootstrap.min.js"></script>
    <!-- JS Page Level -->
    <script type="text/javascript" src="/qbank/template/shop/js/SortBy.js"></script>
    <script type="text/javascript">
    $(function() {
        $(window).scroll(function() {
            if ($(window).scrollTop() > 100) {
                $("#side-bar .gotop").fadeIn();
            } else {
                $("#side-bar .gotop").hide();
            }
        });
        $("#side-bar .gotop").click(function() {
            $('html,body').animate({
                'scrollTop': 0
            }, 500);
        });
    });
    </script>
    <script language="javascript">
    function animate() {
        $(".charts").each(function(i, item) {
            var a = parseInt($(item).attr("w"));
            $(item).animate({
                width: a + "%"
            }, 1000);
        });
    }
    animate();
    </script>
    <script type="text/javascript">
    $(function() {
        $("#available").css('display', 'block');
        $("#available").css('display', 'none');
        $("#history").click(function() {
            $("#history").css('display', 'none');
            $("#available").css('display', 'block');
            $("#historyshow").css('display', 'none');
            $("#availableshow").css('display', 'block');
        });


        $("#available").click(function() {
            $("#history").css('display', 'block');
            $("#available").css('display', 'none');
            $("#availableshow").css('display', 'none');
            $("#historyshow").css('display', 'block');
        });
    });
    $('#rate').click(function() {
		var attr = $(this).find('span').attr("class");
		if(attr == 'sort-arrow-up') {
			$(this).find('span').attr("class", "sort-arrow-down");
			sortByInput(asc);
		} else {
			$(this).find('span').attr("class", "sort-arrow-up");
			sortByInput(desc);
		}
    });
	var $selectItems = $(".SortBySelect dd");
	
	$("#select1 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectA").remove();
		} else {
			var copyThisA = $(this).clone();
			if ($("#selectA").length > 0) {
				$("#selectA a").html($(this).text());
			} else {
				$(".select-result dl").append(copyThisA.attr("id", "selectA"));
			}
		}
	});
	
	
	
	$("#select3 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectC").remove();
		} else {
			var copyThisC = $(this).clone();
			if ($("#selectC").length > 0) {
				$("#selectC a").html($(this).text());
			} else {
				$(".select-result dl").append(copyThisC.attr("id", "selectC"));
			}
		}
	});
	$("body").on("click", "#selectA", function () {
		$(this).remove();
		$("#select1 .select-all").addClass("selected").siblings().removeClass("selected");
	});
		
	$("body").on("click", "#selectC", function () {
		$(this).remove();
		$("#select3 .select-all").addClass("selected").siblings().removeClass("selected");
	});
	// 根据条件查询
	$selectItems.click(function() {
		var status = $("#select1 dd[class='selected']").attr('value');
		//var rate = $("#select2 dd[class='selected']").attr('value');
		var investDeadline = $("#select3 dd[class='selected']").attr('value');
		//alert(status+"-------"+investDeadline)
		var params = {};
		if(status){
			params.status = status;
		}
		if(investDeadline){
			params.investDeadline = investDeadline;
		}
		$.ajax({
			url: "/qbank/shop/project!listForAjax.action",
			data: params,
			dataType: "json",
			async: false,
			success:function(data){
				updateData(data);
				
			}
		});
	});
	function updateData(data){
		var ht = "";
		if(data && data.list && data.list.length > 0){
			$.each(data.list, function(i, n){
				var percent =(n.loanAmount-n.investAmount)*100/n.loanAmount;
				var term="30";
				if(n.term=="2"){
					term="60"
				}if(n.term=="3"){
					term="90";
				}
				ht += "<li>";
				ht += "<div class='ProductBox'>";
				ht += "<div class='left ProductBoxphoto'>";
				ht += "<a href='#'><img src='/qbank"+n.projectImageUrl+"'></a>";
				ht += "</div>";
				ht += "<div class='left marginL10 ProductBoxTitle'>";
				ht += "<p class='darkblue paddingL12 fB f16px'><a href='/qbank/shop/project!details.action?id="+n.id+"'>"+n.projectName+"<span class='ProductBoxrisk'>&nbsp;&nbsp;&nbsp;&nbsp;A++</span></a></p>";
				ht += "<div>";
				ht += "<div class='left productBoxItem' style='width:120px'><div class='left margin4'><p class='gray2 LineH24'>年化收益</p><p><span class='f20px LineH26 gray marginR4'>"+n.projectRate+"</span><span class='f14px orange'>%</span></p></div></div>";
				ht += "<div class='left productBoxItem' style='width:120px'><div class='left margin4'><p class='gray2 LineH24'>项目期限</p><p><span class='f20px LineH26 gray marginR4'>"+term+"</span><span class='f14px orange'>天</span></p></div></div>";
				ht += "<div class='left productBoxItem' style='width:120px'><div class='left margin4'><p class='gray2 LineH24'>项目规模</p><p><span class='f20px LineH26 gray marginR4'>"+n.loanAmount+"</span><span class='f14px orange'>万元</span></p></div></div>";
				ht +="<div class='left votebox'><div class='f12px gray2 left LineH24'>项目进度</div><dl class='left barbox'><dd class='barline'><div w='20' style='width:0px;' class='charts'></div></dd><dd class='last'>20%</dd></dl></div>";
				ht += "</div>";
				ht += "</div>";
				ht += "<div class='left ProductBoxDetail'><p class='marginB20 f12px marginT16'>可投金额："+n.loanAmount+"元</p><div><a class='btn btn-block btn-cta-primary' style='width:140px;' href='/qbank/shop/project!details.action?id="+n.id+"'>查看详情</a></div></div>";
				ht += "</div>";
				ht += "<div class='blank0'><input id='input1' type='hidden' value='年收益'><input id='input2' type='hidden' value='"+n.loanAmount+"'></div>";
				ht += "</li>";
			});
		}
		$("#projectList").empty();
		$("#projectList").append(ht);
	}
    </script>
    <script>
	$("#product").addClass("active").siblings().removeClass("active");
</script>
</body>

</html>
