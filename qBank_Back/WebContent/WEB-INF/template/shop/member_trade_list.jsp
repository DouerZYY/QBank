<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page  import="java.util.*" %>
<%@page  import="java.text.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="快借宝，快借宝网站,理财,贷款">
    <meta name="description" content="网络银行、在线理财">
    <title>交易记录</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<%
	DateFormat df = DateFormat.getDateInstance();
%>

<body style="overflow-x: hidden;">

    <%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z"> <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em><a href="javascript:;">个人中心</a></div>
        </div>
        
        <div class="main">
            <div class="personal_info_banner">
              <div id="nav">
                    <%@include file="common/personal_nav.jsp" %>
        	</div>  
                <div style="margin:4px 0px;">
                    <!--消息开始-->
                    <div class="marginB20 Padding20">
                        <div class=" blank20"></div>
                        <div>
                            <div class="left">
                                 <ul class="SortBySelect2">
				                  <li class="select-list2">
				                    <dl id="select1">
				                      <dd class="select-all2 selected" value="">
				                        <a href="javascript:void(0);">全部</a>
				                      </dd>
				                      <dd  value="0">
				                        <a href="javascript:void(0);">最近7天</a>
				                      </dd>
				                      <dd value="1">
				                        <a href="javascript:void(0);">一个月</a>
				                      </dd>
				                      <dd value="2">
				                        <a href="javascript:void(0);">三个月</a>
				                      </dd>
				                      <dd value="3">
				                        <a href="javascript:void(0);">半年</a>
				                      </dd>
				                    </dl>
				                  </li>
				                </ul>
                            </div>
                           
                        </div>
                        <div class="blank0"></div>
                        <div class="SortBySelectTab">
                           <ul>
				              <li class="active">全部</li>
				              <li value="1">充值</li>
				              <li value="2">提现</li>
				              <li value="0">投资</li>
				              <li value="3">收益</li>
				            </ul>
                        </div>
                        <div class="blank0"></div>
                        <!--近期交易开始-->
                        <div>
                            <div class="PerProductListTitleNew">
                                <div class="left w140 marginL10 marginR30"><span>交易时间</span></div>
                                <div class="left w140 marginR10"><span>交易类型</span></div>
                                <div class="left w120 marginR10"><span>金额</span></div>
                                <!-- <div class="left w400 marginR10"><span>明细</span></div> -->
                            </div>
                            <div class="PerProductListNew">
                                <ul id="lists">
                  				<c:forEach items="${accountRecordList}" var="accountRecord" varStatus="vs">
                                    <li>
                                        <div class="left w140 marginR30"><fmt:formatDate value="${accountRecord.createDate}" pattern="yyyy-MM-dd" /></div>
                                        <div class="left w140">
                                        	<c:choose>
                                        		<c:when test="${accountRecord.actionType==0}">
                                        			充值
                                        		</c:when>
                                        		<c:when test="${accountRecord.actionType==1}">
                                        			提现
                                        		</c:when>
                                        		<c:when test="${accountRecord.actionType==2}">
                                        			投资
                                        		</c:when>
                                        		<c:when test="${accountRecord.actionType==3}">
                                        		收益
                                        		</c:when>  	
                                        	                                        		
                                        	</c:choose>
                                        </div>
                                        <div class="left w120 marginL10">${accountRecord.amount}元</div>
                                        <!-- <div class="left w400 marginL10">12312312</div> -->
                                    </li>
                                    
                                </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <!--近期交易结束-->
                        <div class="page"><a id="first">首页</a><a id="pre">上一页</a><a id="next">下一页</a><a id="last">尾页</a></div>
                        <div class="blank0"></div>
                    </div>
                    <!--消息结束-->
                </div>
            </div>
            <div class="blank0"></div>
        </div>
        <%@include file="common/footer.jsp" %>
        <!-- Javascript -->
        <script type="text/javascript" src="/qbank/template/shop/js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- JS Page Level -->
        <script type="text/javascript" src="js/NavScroll.js"></script>
        <script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
        <script type="text/javascript" src="js/SortBy.js"></script>
        <script type="text/javascript">
		var totalPage = '${totalPage}';
		var page = 1;
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
            
            selectEvents();
            
        	$(".SortBySelect2 dd").click(function(){
				if("LI" == this.nodeName){
					$.each($(this).siblings(), function(i, n){
						$(n).attr("class", "");
					})
					$(this).attr("class", "active");
				}else if("DD" == this.nodeName){
					$.each($(this).siblings(), function(i, n){
						$(n).attr("class", "");
					})
					$(this).attr("class", "select-all2 selected");
				}
				page = 1;
				selectEvents();
			});
			$(".SortBySelectTab li").click(function(){
				if("LI" == this.nodeName){
					$.each($(this).siblings(), function(i, n){
						$(n).attr("class", "");
					})
					$(this).attr("class", "active");
				}else if("DD" == this.nodeName){
					$.each($(this).siblings(), function(i, n){
						$(n).attr("class", "");
					})
					$(this).attr("class", "select-all2 selected");
				}
				page = 1;
				selectEvents();
			});
			$(".page #first").click(function(){
				page = 1;
				selectEvents();
			})
			$(".page #next").click(function(){
				++page;
				if(page>totalPage){
					page = totalPage; 
				}
				selectEvents();
			})
			$(".page #pre").click(function(){
				--page;
				if(page<=1){
					page = 1;
				}
				selectEvents();
			})
			$(".page #last").click(function(){
				page = totalPage; 
				selectEvents();
			})
        });
        function selectEvents(){
			if("LI" == this.nodeName){
				$.each($(this).siblings(), function(i, n){
					$(n).attr("class", "");
				})
				$(this).attr("class", "active");
			}else if("DD" == this.nodeName){
				$.each($(this).siblings(), function(i, n){
					$(n).attr("class", "");
				})
				$(this).attr("class", "select-all2 selected");
			}
			var dateType = $("#select1 dd[class='select-all2 selected']").attr('value');
			var transType = $(".SortBySelectTab li[class='active']").attr('value');
			var param = {};
			param.page = page;
			if(dateType){
				param.dateType = dateType;
			}
			if(transType){
				param.transType = transType;
			}
			$.ajax({
				url: "/qbank/shop/member!transAjaxList.action",
				data: param,
				dataType: "json",
				async: false,
				success:function(data){
					var htmlContent = "";
					totalPage = data.pageCount;
					if(data && data.list && data.list.length > 0){
						$.each(data.list, function(i, n){
							var actionType = "未知";
							if(0 == n.actionType){
								actionType = "投资";
							}else if(1 == n.actionType){
								actionType = "充值";
							}else if(2 == n.actionType){
								actionType = "提现";
							}else if(3 == n.actionType){
								actionType = "收益";
							}
							htmlContent += "<li>";
							htmlContent += "<div class='left w140 marginR30'>"+n.createDate+"</div>";
							htmlContent += "<div class='left w140'>"+actionType+"</div>";
							htmlContent += "<div class='left w120 marginL10'>"+n.amount+"</div>";
							htmlContent += "</li>";
						})
					}else{
						htmlContent = "<li>无记录哦</li>"
					}
					var $ulTag = $('#lists');
					$ulTag.empty();
					$ulTag.append(htmlContent);
				}
			})
		}
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

            $(".btn-slide").click(function() {
                $(".PanelSortBy").slideToggle(0);
                $(this).toggleClass("active");
                return false;
            });


        });
        </script>
        <script type="text/javascript">
        jQuery("#nav").slide({
            defaultIndex: "1",
            titCell: "#navs dt",
            mainCell: "#menu"
        });
        </script>
        <script>
			$("#4").addClass("active").siblings().removeClass("active");
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
</body>

</html>
