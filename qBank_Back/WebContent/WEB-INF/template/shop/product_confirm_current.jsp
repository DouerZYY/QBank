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
			<title>理财_活期</title> <!-- Global CSS -->
			<link rel="stylesheet" href="css/bootstrap.min.css">
				<link rel="stylesheet" type="text/css" href="css/global.css" />
				<link rel="stylesheet" type="text/css" href="css/style.css" />
				<link rel="stylesheet" href="css/baguettebox.min.css">
</head>

<body style="overflow-x: hidden;">
	<%@include file="common/header1.jsp"; %>
	<div id="container" class="ui-container light-gray">
		<div id="pt" class="bm cl">
			<div class="z">
				<span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em
					class="marginL10 marginR10">>></em><a href="/qbank/shop/product!index.action">项目列表</a><em
					class="marginL10 marginR10">>></em> <a href="javascript:;">活期</a>
			</div>
		</div>
		<div class="main">
			<div class="productDetailpage productDetailpanel">
				<div class="CI-item">
					<div class="lef darkblue fB f20px">单次转入</div>
					<div class="blank16"></div>
					<ul>
						<li>
							<div class="left w130">可用余额</div>
							<div class="left">
								<span class="f16px orange fB">0.50</span>元
							</div>
							<div class="left">
								<p class="f12px gray3 CI-tips">
									目前仅支持使用监管账户余额转入，用户可先充值到监管账户。<a class="orange" href="/qbank/shop/personal_recharge!index.action"
										target="">充值 ></a>
								</p>
							</div>
						</li>
						<li>
							<div class="left w130">转入金额</div>
							<div class="ProductDetailAmount">
								<input name="Amount" placeholder="单位（元）" type="text" value="">
							</div>
							<div class="blank0"></div>
							<div class="f12px gray3 CI-tips">
								当前可投：<span>0</span>元
							</div>
						</li>
						<li>
							<div class="left w130">风险评级：</div>
							<div>低风险（由银行评估）</div>
						</li>
						<li>
							<div style="margin-left: 130px;">
								<a href="/qbank/shop/product_complete!index.action" class="btn btn-cta btn-cta-primary">确认转账活期理财</a>
							</div>
						</li>
					</ul>
				</div>
				<div class="currentQA">
					<h2 class="picGuide">常见问题</h2>
					<ul>
						<li><span class="num">Q：项目期限都有多长时间的？</span> <span>A：项目期限一般有3个月、6个月、12个月和24个月的，并且爱投资正在筹划更短期灵活的产品。</span>
						</li>
						<li><span class="num">Q：项目的还款方式有哪些？</span> <span>A：目前，爱投资平台有3种还款方式：</span>
							<span class="td15">①
								按月付息到期还本，是指每个月支付一定的利息，项目到期后一次性支付本金。这样，可将每月收到的利息循环投资以达到利益</span><span
							class="td15">最大化。</span> <span class="td15">②
								等额本息按月付款，是指每个月支付一部分本金和利息，每个月支付的金额相同。这样，每个月回收一部分本金和利息可减少投</span><span
							class="td15">资风险。</span> <span class="td15">③
								到期还本付息，是指投资项目到期后一次性支付所有的本金和利息。这样，对于投资者来说比较省心，项目到期后直接续投或提</span><span
							class="td15">现。</span></li>
						<li><span class="num">Q：充值、提现是否需要费用？</span> <span>A：充值是免费的，到期的本金和利息提现也是不收取任何费用的。</span>
						</li>
						<li><span class="num">Q：投资后的钱可以赎回吗？</span> <span>A：已投资的项目，在持有30天后可根据需要自由定价，放入债权市场进行转让，提前收回资金，大大提高了资金的流动性。</span>
						</li>
						<li><span class="num">Q：企业无力偿还怎么办？</span> <span>A：如果出现企业无力偿还的情况，爱投资会启用风险保障金先行垫付投资者的一部分本息，然后由第三方合作机构根据合同条款进行</span><span
							class="td15">全额代偿。</span></li>
						<li><span class="num">Q：投资会签署合同吗？</span> <span>A：投资者投资之后会跟爱投资，借款企业，保障机构之间签订合同，该合同是一份电子合同。电子合同是法律认可的书面合同形式之</span><span
							class="td15">一。并且爱投资的合同是由金杜律师事务所草拟，CFCA认证加密的。</span></li>
					</ul>
				</div>
				<div class="blank0"></div>
			</div>
		</div>
	</div>
	<%@include file="common/footer.jsp"%>
	<%@include file="common/login_modal.jsp"%>
	<%@include file="common/signup_modal.jsp"%>
	<!-- Javascript -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- ECharts单文件引入 -->
	<script type="text/javascript" src="js/echarts.js"></script>
	<script type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });

        // 使用
        require(
            [
                'echarts',
                'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
            ],
            function(ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main'));

                option = {
                    title: {
                        text: '年化收益趋势',
                        subtext: ''
                    },
                    tooltip: {
                        trigger: 'axis'
                    },
                    toolbox: {
                        show: false,
                    },
                    calculable: true,
                    xAxis: [{
                        type: 'category',
                        boundaryGap: false,
                        data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
                    }],
                    yAxis: [{
                        type: 'value',
                        axisLabel: {
                            formatter: '{value}'
                        }
                    }],
                    series: [{
                        name: '最高气温',
                        type: 'line',
                        data: [11, 11, 15, 13, 12, 13, 10],
                        markPoint: {
                            data: [{
                                type: 'max',
                                name: '最大值'
                            }, {
                                type: 'min',
                                name: '最小值'
                            }]
                        },
                        markLine: {
                            data: [{
                                type: 'average',
                                name: '平均值'
                            }]
                        }
                    }, {
                        name: '最低气温',
                        type: 'line',
                        data: [1, -2, 2, 5, 3, 2, 0],
                        markPoint: {
                            data: [{
                                name: '周最低',
                                value: -2,
                                xAxis: 1,
                                yAxis: -1.5
                            }]
                        },
                        markLine: {
                            data: [{
                                type: 'average',
                                name: '平均值'
                            }]
                        }
                    }]
                };



                // 为echarts对象加载数据 
                myChart.setOption(option);
            }
        );
        </script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="js/SortBy.js"></script>
	<script type="text/javascript" src="js/NavScroll.js"></script>
	<script type="text/javascript" src="js/baguettebox.min.js"></script>
	<script>
        baguetteBox.run('.baguetteBoxOne', {
            animation: 'fadeIn',
        });
        </script>
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
	<script language="javascript">
        function animate() {
            $(".charts").each(function(i, item) {
                var a = parseInt($(item).attr("w"));
                $(item).animate({
                    width: a + "%"
                }, 1000);
            });

            /*活期图标小模块*/
            $(".current_info li").hover(function() {
                $(this).find(".current_ico").animate({
                    "top": "-3px"
                }, 300);
            }, function() {
                $(this).find(".current_ico").animate({
                    "top": "0px"
                }, 200);
            });

        }
        animate();
        </script>
        <script>
	$("#product").addClass("active").siblings().removeClass("active");
</script>
</body>

</html>
