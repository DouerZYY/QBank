<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="快借宝,快借宝网站,理财,银行,保险,支付,贷款"/>
    <meta name="description" content="网络银行、在线融资、在线理财"/>
    <title>快借宝</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="/qbank//template/shop/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/global.css" />
    <link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/style.css" />
    <link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/owl-carousel/owl.carousel.css"/>
    <link rel="stylesheet" type="text/css" href="/qbank/template/shop/js/layer-slider/layerslider/css/layerslider.css"/>
</head>

<body style="overflow-x: hidden;">
	<%@include file="common/header1.jsp" %>
    <div class="banner fade-in">
        <!--=== Slider ===-->
        <div id="layerslider" style="width: 100%; height: 300px; margin: 0px auto 0px auto;">
            <%-- <c:forEach items="${advertiseList}" var="advertise" varStatus="vs"> --%> 
            <div class="ls-slide" style="slidedirection: right; transition2d: 92,93,105; "><img src="/qbank/template/shop/images/a1.jpg" class="ls-bg" alt="Slide background"/></div>
            <div class="ls-slide" style="slidedirection: right; transition2d: 92,93,105; "><img src="/qbank/template/shop/images/a2.jpg" alt="Slide background"/></div>
            <div class="ls-slide" style="slidedirection: right; transition2d: 92,93,105; "><img src="/qbank/template/shop/images/a3.jpg" class="ls-bg" alt="Slide background"/></div>
            <%-- </c:forEach> --%>
        </div>
        <!--=== End Slider ===-->
    </div>
    <div id="container" class="ui-container fade-in">
        <div class="main">
            <ul>
                <li class="content-wrapper" style="height:180px;">
                    <div class="b_nav">新手上路<span>诚邀您进入快借宝的世界，享受轻松愉快的互联网理财新体验.<a href="/qbank/shop/help!index.action" target="_blank" class="more"> 帮助中心>></a></span></div>
                    <li class="content-wrapper" style="height:630px;">
                        <div class="content fn-clear app">
                            <div class="ProductBoxTitle-cont">
                                <span class="em">定期理财</span><span class="gray2">多种期限，收益更高</span>
                                <a href="/qbank/shop/product!list.action" class="more">更多>></a>
                            </div>
                            <div class="ProductBoxlistF">
                                <ul>
                                <c:forEach items="${projectList}" var="project" varStatus="vs">  
                                    <li>
                                        <div class="ProductBox">
                                            <div class="left ProductBoxphoto">
                                                <a href="/qbank/shop/project!details.action?id=${project.id}" ><img src="/qbank${project.projectImageUrl}" /></a>
                                            </div>
                                            <div class="left marginL10 ProductBoxTitle">
                                                <p class="darkblue  paddingL12 fB f16px"><a href="/qbank/shop/project!details.action?id=${project.id}"><span class="orange"></span>${project.projectName} <span class="ProductBoxrisk">A++</span></a></p>
                                                <div>
                                                    <div class="left productBoxItem" style="width:120px">
                                                        <div class="left margin4">
                                                            <p class="gray2 LineH24">年化收益</p>
                                                            <p><span class="f20px LineH26 orange marginR4">
                                                            <c:forEach items="${ratesList}" var="rates" varStatus="vs"> 
															<c:if test="${project.projectRate==rates.rateCode}">${rates.rateAmount}</c:if>
															</c:forEach> 
                                                            </span><span class="f14px orange">%</span></p>
                                                        </div>
                                                    </div>
                                                    <div class="left productBoxItem" style="width:120px">
                                                        <div class="left margin4">
                                                            <p class="gray2 LineH24">项目期限</p>
                                                            <p><span class="f20px LineH26 gray marginR4">
                                                            <c:forEach items="${termList}" var="dic" varStatus="vs"> 
															<c:if test="${project.term==dic.dicCode}">${dic.dicName}</c:if>
															</c:forEach> 
                                                            </span><span class="f14px">天</span></p>
                                                        </div>
                                                    </div>
                                                    <div class="left productBoxItem">
                                                        <div class="left margin4">
                                                            <p class="gray2 LineH24">项目规模</p>
                                                            <p><span class="f20px LineH26 gray marginR4">${project.loanAmount}</span><span class="f14px">万元</span></p>
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
                                                <div><a href="/qbank/shop/project!details.action?id=${project.id}" class="btn btn-block btn-cta-primary" style="width:140px;">立即投资</a></div>
                                            </div>
                                        </div>
                                        <div class="blank0"></div>
                                    </li>
                                   </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="content-wrapper" style="height:450px;">
                        <div class="content fn-clear site">
                            <div class="b_nav">安全策略</div>
                            <ul class="safe_info">
                                <li>
                                    <a href="javascript:;" style="text-decoration:none;color: #555; ">
                                        <div class="safe_ico s1" style="top: 0px;"></div>
                                        <div class="big_tit">资金安全保障</div>
                                        <div class="small_tit">全程网上操作，三步完成投资，自动获取收益，平台不收任何费用。</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;" style="text-decoration:none; color: #555;">
                                        <div class="safe_ico s2" style="top: 0px;"></div>
                                        <div class="big_tit">风险控制保障</div>
                                        <div class="small_tit">多重风险审核，实地采集210项资料，借款方仅14%通过率。</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;" style="text-decoration:none; color: #555;">
                                        <div class="safe_ico s3" style="top: 0px;"></div>
                                        <div class="big_tit">数据信息安全</div>
                                        <div class="small_tit">由全国领先的担保公司进行全额本息担保。</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;" style="text-decoration:none; color: #555;">
                                        <div class="safe_ico s4" style="top: 0px;"></div>
                                        <div class="big_tit">法律法规保障</div>
                                        <div class="small_tit">资金流转全程由第三方支付平台监管，保证安全可靠。</div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="content-wrapper" style="height:420px;">
                        <div class="content fn-clear site">
                            <div class="b_nav">我为什么选择快借宝<span>投资去，产业链互联网金融开拓者</span></div>
                            <table class="table table-bordered" style="margin-top:15px;">
                                <thead>
                                    <tr>
                                        <th style="width:12%"></th>
                                        <th style="width:22%">快借宝</th>
                                        <th style="width:22%">银行活期</th>
                                        <th style="width:22%">银行一年定期</th>
                                        <th style="width:22%">理财产品</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>安全性</td>
                                        <td>第三方本息保障</td>
                                        <td>本息保障</td>
                                        <td>本息保障</td>
                                        <td>部分保障</td>
                                    </tr>
                                    <tr>
                                        <td>预期收益率</td>
                                        <td>8 - 13.5%</td>
                                        <td>0.35%</td>
                                        <td>约3%</td>
                                        <td>5 - 10%</td>
                                    </tr>
                                    <tr>
                                        <td>资金期限</td>
                                        <td>最短1天即可转让</td>
                                        <td>无限制</td>
                                        <td>365天</td>
                                        <td>依产品而定</td>
                                    </tr>
                                    <tr>
                                        <td>投资门槛</td>
                                        <td>100元即可体验</td>
                                        <td>无</td>
                                        <td>5元起存</td>
                                        <td>5万以上</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </li>
                    <li class="content-wrapper light-gray banner05">
                        <!-- <a href=""> -->
                        <div class="content fn-clear">
                        </div>
                        <!-- </a> -->
                    </li>
                    <li class="content-wrapper" style="height:420px;">
                        <div class="content fn-clear">
                            <div class="blank30"></div>
                            <!-- ******News****** -->
                            <div class="news">
                                <div class="ProductBoxTitle-cont">
                                    <span class="em">新闻&公告</span>
                                    <a href="/qbank/shop/article!news.action" target="_blank" class="more">更多>></a>
                                </div>
                                <ul>
                                	<c:forEach items="${articleList }" var="article" varStatus="vs">
                                    <li>
                                        <a href="/qbank/shop/article!detail.action?id=${article.id }">
                                            <div class="photo"><img src="/qbank${article.pictureUrl}" /></div>
                                            <div class="f14px newstitle">${article.articleTitle }
                                                <p><fmt:formatDate value="${article.modifyDate }" /></p>
                                            </div>
                                        </a>
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <!--//news-->
                        </div>
                    </li>
                    <li class="content-wrapper" style="height: 200px;">
                        <div class="content fn-clear zhima">
                            <div class="margin10">
                                <div class="blank10"></div>
                                <div class="ProductBoxTitle-cont">
                                    <span class="em">合作伙伴</span>
                                    <a href="javascript:;" target="_blank" class="more">更多>></a>
                                </div>
                                <ul class="list-inline owl-carousel-v6 owl-slider-v6 margin-bottom-50">
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/07.png" alt="ss"/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/08.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/10.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/11.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/09.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/12.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/07.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/08.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/09.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/10.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/11.png" alt=""/> </li>
                                    <li class="owl-carousel-item"> <img src="/qbank/template/shop/images/clients/12.png" alt=""/> </li>
                                </ul>
                            </div>
                        </div>
                    </li>
            </ul>
        </div>
    </div>
    <%@include file="common/footer.jsp" %>
    <%@include file="common/login_modal.jsp" %>
    <%@include file="common/signup_modal.jsp" %>
    <!-- Javascript -->
    <script type="text/javascript" src="/qbank/template/shop/js/jquery.min.js"></script>
    <script type="text/javascript" src="/qbank/template/shop/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/qbank/template/shop/css/owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="/qbank/template/shop/js/layer-slider/layerslider/js/greensock.js"></script>
    <script type="text/javascript" src="/qbank/template/shop/js/layer-slider/layerslider/js/layerslider.transitions.js"></script>
    <script type="text/javascript" src="/qbank/template/shop/js/layer-slider/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
    <!-- JS Page Level -->
    <script type="text/javascript" src="/qbank/template/shop/js/layer-slider.js"></script>
    <script type="text/javascript" src="/qbank/template/shop/js/owl-carousel.js"></script>
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
    <script type="text/javascript">
    jQuery(document).ready(function() {
        OwlCarousel.initOwlCarousel();
        LayerSlider.initLayerSlider();
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

        /*首页小模块*/
        $(".safe_info li").hover(function() {
            $(this).find(".safe_ico").animate({
                "top": "-3px"
            }, 300);
        }, function() {
            $(this).find(".safe_ico").animate({
                "top": "0px"
            }, 200);
        });

    }
    animate();
    </script>
    <script>
		$("#index").addClass("active").siblings().removeClass("active");
	</script>
</body>

</html>

