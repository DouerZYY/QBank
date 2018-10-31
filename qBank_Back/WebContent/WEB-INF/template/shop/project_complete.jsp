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
    <title>理财</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" href="css/baguettebox.min.css">
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z"> <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/product!index.action">项目列表</a> <em class="marginL10 marginR10">>></em><a href="/qbank/shop/product_detail!index.action">项目详情</a><em class="marginL10 marginR10">>></em> <a href="javascript:void(0)">投资</a> </div>
        </div>
        <div class="main">
            <div class="productDetailpage productDetailpanel">
                <div class=" blank40"></div>
                <div class="left" style="margin-left:140px;">
                    <p class="f36px fB"><span class="marginR12"><img src="images/Hook1.png" width="44" height="44" /></span><span>恭喜您成功完成投资</span></p>
                    <div style="margin-left:60px;">
                        <div class="blank20"></div>
                        <p class="LineH30 gray2"><span class="f16px">项目名称：</span><span class="f16px">测试数据</span></p>
                        <p class="LineH30 gray2"><span class="f14px inline-block" style="width:100px;">投资金额：</span><span class="f14px orange fB inline-block" style="width:180px;">￥${touzi}元</span><span class="f14px inline-block" style="width:100px;">预期收益：</span><span class="f14px orange fB inline-block" style="width:180px;">￥${shouyi}元</span></p>
                        <p class="LineH30 gray2"><span class="f14px inline-block" style="width:100px;">计息方式：</span><span class="f14px inline-block" style="width:176px;">次日计息</span> <span class="f14px inline-block" style="width:100px;">还款方式：</span><span class="f14px inline-block" style="width:180px;">按日付息，到期还本</span></p>
                        <div class="blank40"></div>
                        <p class="LineH30 f12px">您可以在<span class="marginL4 marginR4"><a href="/qbank/shop/member!record.action" class="orange">个人中心-交易记录</a></span>中查看以往投资记录</p>
                    </div>
                    <div class="blank40"></div>
                    <div style="margin-left:60px;"> <a href="/qbank/shop/member!index.action" class="btn btn-cta btn-cta-primary" style="width:240px;">确定</a> </div>
                </div>
                <div class="blank40"></div>
            </div>
        </div>
    </div>
    <%@include file="common/footer.jsp" %>
	<%@include file="common/login_modal.jsp" %>
	<%@include file="common/signup_modal.jsp" %>
    
    <!-- Javascript -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
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
    <script>
	$("#product").addClass("active").siblings().removeClass("active");
</script>
    
</body>

</html>
