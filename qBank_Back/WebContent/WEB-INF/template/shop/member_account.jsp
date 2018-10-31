<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="快借宝，快借宝网站,理财,贷款">
    <meta name="description" content="网络银行、在线理财">
    <title>资产统计</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z"> <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em><a href="/qbank/shop/personal_index!index.action">个人中心</a></div>
        </div>
        <div class="main">
            <div class="personal_info_banner">
                <div id="nav">
                    <%@include file="common/personal_nav.jsp" %>
                </div>
                <div style="margin:40px 0px;">
                    <!--资产总计开始-->
                    <div class="marginB40" style="height:180px;padding:20px;background-color:#f4f4f4">
                        <div class="left perisonDetail" style="margin-left:20px;">
                            <ul>
                                <li>
                                    <div class=""><span class="gray marginR4 f16px fB">资产总计</span></div>
                                </li>
                                <li>
                                    <div><span class="marginR4 f26px fB gray">${account.totalAmount}</span><span class="f12px gray">元</span></div>
                                    <div class="blank20"></div>
                                </li>
                                <li>
                                    <div class="left gray marginR20">可用余额</div>
                                    <div class="left gray">${account.amount}元</div>
                                </li>
                                <li>
                                    <div class="left gray marginR20">总资产</div>
                                    <div class="left gray">${account.totalAmount}元</div>
                                </li>
<!--                                 <li>
                                    <div class="left gray marginR20">待收本金</div>
                                    <div class="left gray">749,236.00元</div>
                                </li> -->
                                <li>
                                    <div class="left gray marginR20">冻结资金</div>
                                    <div class="left gray">${account.frozenAmount}元</div>
                                </li>
                            </ul>
                        </div>
                        <div class="left perisonDetail" style=" width:700px;">
                          
                        </div>
                    </div>
                    <div class="blank0"></div>
                    <!--资产总计结束-->
<!--                     累计收益开始
                    <div class="marginB40" style="height:180px;padding:20px; background-color:#f4f4f4">
                        <div class="left perisonDetail" style="margin-left:20px;">
                            <ul>
                                <li>
                                    <div><span class="gray marginR4 f16px fB">累计收益</span><span class="informationMark btn-hover-info add-tooltip" data-placement="right" data-toggle="tooltip" data-original-title="累计收益"></span></div>
                                </li>
                                <li>
                                    <div><span class="marginR4 f26px fB gray">996,078,284.00</span><span class="f12px gray">元</span></div>
                                    <div class="blank20"></div>
                                </li>
                                <li>
                                    <div><span class="gray marginR4">净收益</span><span class="informationMark btn-hover-info add-tooltip" data-placement="right" data-toggle="tooltip" data-original-title="净收益"></span><span class="gray marginL20">749,236.00元</span></div>
                                </li>
                            </ul>
                        </div>
                        <div class="left perisonDetail" style=" width:700px;">
                            <div id="main1" style="height:220px; margin:0px; padding:0px;"></div>
                        </div>
                    </div>
                    <div class="blank0"></div>
                    累计收益结束-->
<!--                     待收收益开始
                    <div class="marginB40" style="height:180px;padding:20px; background-color:#f4f4f4">
                        <div class="left perisonDetail" style="margin-left:20px;">
                            <ul>
                                <li>
                                    <div><span class="gray marginR4 f16px fB">待收收益</span></div>
                                </li>
                                <li>
                                    <div><span class="marginR4 f26px fB gray">996284.00</span><span class="f12px gray">元</span></div>
                                    <div class="blank20"></div>
                                </li>
                                <li>
                                    <div class="left gray marginR20">定期待收</div>
                                    <div class="left gray">7492.00元</div>
                                </li>
                                <li>
                                    <div class="left gray marginR20">持有项目</div>
                                    <div class="left gray">7</div>
                                </li>
                            </ul>
                        </div>
                        <div class="left perisonDetail" style=" width:700px;">
                            <div id="main1" style="height:220px; margin:0px; padding:0px;"></div>
                        </div>
                    </div>
                    <div class="blank0"></div>
                    待收收益结束 -->
                    <!--已收收益开始-->
                    <div class="marginB40" style="height:180px;padding:20px; background-color:#f4f4f4">
                        <div class="left perisonDetail" style="margin-left:20px;">
                            <ul>
                                <li>
                                    <div><span class="gray marginR4 f16px fB">已收收益</span></div>
                                </li>
                                <li>
                                    <div><span class="marginR4 f26px fB gray">${accountProfitAmount }</span><span class="f12px gray">元</span></div>
                                    <div class="blank20"></div>
                                </li>
                                <li>
                                    <div class="left gray marginR20">定期已收</div>
                                    <div class="left gray">${accountProfitAmount_1 }元</div>
                                </li>
                                <li>
                                    <div class="left gray marginR20">持有项目</div>
                                    <div class="left gray">${accountProjectNumber }</div>
                                </li>
                            </ul>
                        </div>
                        <div class="left perisonDetail" style=" width:700px;">
                            <div id="main1" style="height:220px; margin:0px; padding:0px;"></div>
                        </div>
                    </div>
                    <div class="blank0"></div>
                    <!--已收收益结束-->
                    <!-- 待收收益开始 -->
                    <div class="marginB40" style="height:180px;padding:20px; background-color:#f4f4f4">
                        <div class="left perisonDetail" style="margin-left:20px;">
                            <ul>
                                <li>
                                    <div><span class="gray marginR4 f16px fB">累计充值</span></div>
                                </li>
                                <li>
                                    <div><span class="marginR4 f26px fB gray">${accountRechargeAmount }</span><span class="f12px gray">元</span></div>
                                    <div class="blank20"></div>
                                </li>
                            </ul>
                       </div> 

                        <div class="left perisonDetail" style=" width:700px;">
                            <div id="main1" style="height:220px; margin:0px; padding:0px;"></div>
                        </div>
                    </div>
                    <div class="blank0"></div>
                    
                    <div class="marginB40" style="height:180px;padding:20px; background-color:#f4f4f4">
                        <div class="left perisonDetail" style="margin-left:20px;">
                            <ul>
                                <li>
                                    <div><span class="gray marginR4 f16px fB">累计提现</span></div>
                                </li>
                                <li>
                                    <div><span class="marginR4 f26px fB gray">${accountCashAmount }</span><span class="f12px gray">元</span></div>
                                    <div class="blank20"></div>
                                </li>
                            </ul>
                       </div> 

                        <div class="left perisonDetail" style=" width:700px;">
                            <div id="main1" style="height:220px; margin:0px; padding:0px;"></div>
                        </div>
                    </div>
                    <div class="blank0"></div>                    
                    <!--待收收益结束-->
                    
                    <!--累计投资开始-->
                    <div class="marginB40" style="height:180px;padding:20px; background-color:#f4f4f4">
                        <div class="left perisonDetail" style="margin-left:20px;">
                            <ul>
                                <li>
                                    <div><span class="gray marginR4 f16px fB">累计投资</span></div>
                                </li>
                                <li>
                                    <div><span class="marginR4 f26px fB gray">${accountProjectAmount }</span><span class="f12px gray">元</span></div>
                                    <div class="blank20"></div>
                                </li>
                                <li>
                                    <div class="left gray marginR20">历史项目</div>
                                    <div class="left gray">${accountProjectAmount_1 }元</div>
                                </li>
                                <li>
                                    <div class="left gray marginR20">目前项目</div>
                                    <div class="left gray">${accountProjectAmount_2 }元</div>
                                </li>
                            </ul>
                        </div>
                        <div class="left perisonDetail" style=" width:700px;">
                            <div id="main1" style="height:220px; margin:0px; padding:0px;"></div>
                        </div>
                    </div>
                    <div class="blank0"></div>
                    <!--累计投资结束-->
                </div>
            </div>
        </div></div>
        <%@include file="common/footer.jsp" %>
        <!-- Javascript -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- JS Page Level -->
        <script type="text/javascript" src="js/NavScroll.js"></script>
        <script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
        <!-- ECharts单文件引入 -->
        <script type="text/javascript" src="js/echarts.js"></script>
        <script type="text/javascript" src="js/echartsForUser.js"></script>
        <!--<script type="text/javascript" src="js/Custom.js"></script>-->
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
        jQuery("#nav").slide({
            defaultIndex: "2",
            titCell: "#navs dt",
            mainCell: "#menu"
        });
        </script>
        <script>
			$("#5").addClass("active").siblings().removeClass("active");
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
</body>

</html>
