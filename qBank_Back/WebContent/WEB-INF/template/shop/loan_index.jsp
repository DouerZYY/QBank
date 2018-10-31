<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="loginverify.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">

<head>
     <base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="快借宝,快借宝网站,理财,银行,保险,支付,贷款">
    <meta name="description" content="网络银行、在线融资、在线理财">
    <title>快借宝</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="js/layer-slider/layerslider/css/layerslider.css">
    <link rel="stylesheet" type="text/css" href="css/loan.css" />
</head>

<body style="overflow-x: hidden;">
	<%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container fade-in">
        <div id="pt" class="bm cl">
            <div class="z">
                <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/member!index.action">首页</a> <em class="marginL10 marginR10">>></em> <a href="javascript:;">借款</a>
            </div>
        </div>
        <div class="main">
            <ul>
                <form action="/qbank/shop/loan!loan.action" method="post" id="apply" enctype="multipart/form-data">
                    <li class="content-wrapper">
                        <div class="content fn-clear app">
                            <div class="ProductBoxTitle-cont">
                                <span class="em">快借宝借款</span>
                                <a href="/qbank/shop/member!index.action" target="_blank" class="pull-right">查看我的信用等级</a>
                            </div>
                            <div class="row">
                                <div class="col-sm-4 col-lg-4"></div>
                                <div class="col-sm-4 col-lg-4 a">
                                    <div class="input-group">
                                        <span class="input-group-addon">借款金额</span>
                                        <input id="amount" type="number" name="apply.applyAmount" class="form-control" placeholder="10000">
                                        <span class="input-group-addon">元</span>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-lg-4">
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>借款期限</th>
                                            <th>月综合费率</th>
                                            <th>月还款额</th>
                                            <th>总还款额</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <input type="radio" name="apply.applyTime" id="optionsRadios1" value="3" checked="checked">
                                            </td>
                                            <td>3个月</td>
                                            <td class="rate">0.88%</td>
                                            <td id="amount_pay_month_3">元</td>
                                            <td id="amount_all_3">元</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="radio" name="apply.applyTime" id="optionsRadios1" value="6">
                                            </td>
                                            <td>6个月</td>
                                            <td class="rate">0.88%</td>
                                            <td id="amount_pay_month_6">元</td>
                                            <td id="amount_all_6">元</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="radio" name="apply.applyTime" id="optionsRadios1" value="12">
                                            </td>
                                            <td>12个月</td>
                                            <td class="rate">0.88%</td>
                                            <td id="amount_pay_month_12">元</td>
                                            <td id="amount_all_12">元</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="radio" name="apply.applyTime" id="optionsRadios1" value="24">
                                            </td>
                                            <td>24个月</td>
                                            <td class="rate">0.88%</td>
                                            <td id="amount_pay_month_24">元</td>
                                            <td id="amount_all_24">元</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- <a onclick="loan();" class="btn btn-block btn-cta-primary">申请借款</a> -->
                        </div>
                    </li>

                
                    <li class="content-wrapper">
                        <div class="content fn-clear app">
                            <div class="ProductBoxTitle-cont">
                                <span class="em">所需资料提交</span>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>附件编号</th>
                                            <th>附件名称</th>
                                            <th>附件类型</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td >1</td>
                                            <td id="">身份证复印件（双面）</td>
                                            <td id="">图片</td>
                                        </tr>
                                        <tr>
                                            <td >2</td>
                                            <td id="">居住地址证明（户口簿等）</td>
                                            <td id="">图片</td>
                                        </tr>
                                        <tr>
                                            <td >3</td>
                                            <td id="">个人职业证明</td>
                                            <td id="">图片</td>
                                        </tr>
                                        <tr>
                                            <td >4</td>
                                            <td id="">借款申请人本人及家庭成员的收入证明</td>
                                            <td id="">图片</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
							<div class="row">
                                <div class="col-sm-2 col-lg-2"></div>
                                <div class="col-sm-5 col-lg-5">
                                    <div class="input-group">
                                        <input type="file" name="img" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-2 col-lg-2">
                                    <div class="input-group">
                                        <input type="submit" value＝"申请借款" class="btn btn-cta-primary">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </form>
                <li class="content-wrapper">
                    <div class="content fn-clear app">
                        <div class="ProductBoxTitle-cont">
                            <span class="em">借款费率</span>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered">
                                <thead>
                                    <tr>
                                        <th>信用等级</th>
                                        <th>信用分数区间</th>
                                        <th>月综合费率</th>
                                        <th>期初服务费率</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="label label-primary">AA</span></td>
                                        <td>210+</td>
                                        <td>0.55%</td>
                                        <td>0%</td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-success">A</span></td>
                                        <td>180-209</td>
                                        <td>0.60%</td>
                                        <td>1%</td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-info">B</span></td>
                                        <td>150-179</td>
                                        <td>0.65%</td>
                                        <td>2%</td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-warning">C</span></td>
                                        <td>130-149</td>
                                        <td>0.70%</td>
                                        <td>2.5%</td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-danger">D</span></td>
                                        <td>110-129</td>
                                        <td>0.75%</td>
                                        <td>3%</td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-danger">E</span></td>
                                        <td>100-109</td>
                                        <td>0.80%</td>
                                        <td>4%</td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-danger">HR</span></td>
                                        <td>0-99</td>
                                        <td>0.88%</td>
                                        <td>5%</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="page"></div>
    </div>
    <%@include file="common/footer.jsp" %>
        <%@include file="common/login_modal.jsp" %>
            <%@include file="common/signup_modal.jsp" %>
                <!-- Javascript -->
                <script type="text/javascript" src="js/jquery.min.js"></script>
                <script type="text/javascript" src="js/bootstrap.min.js"></script>
                <script type="text/javascript" src="css/owl-carousel/owl.carousel.js"></script>
                <script type="text/javascript" src="js/layer-slider/layerslider/js/greensock.js"></script>
                <script type="text/javascript" src="js/layer-slider/layerslider/js/layerslider.transitions.js"></script>
                <script type="text/javascript" src="js/layer-slider/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
                <!-- JS Page Level -->
                <script type="text/javascript" src="js/layer-slider.js"></script>
                <script type="text/javascript" src="js/owl-carousel.js"></script>
                <script type="text/javascript" src="js/base.js"></script>
                <script>
                $("#loan").addClass("active").siblings().removeClass("active");


                $(function() {
                    var result = "${result}";
                    if (result) {
                        alert(result);
                    }
					
                    document.getElementById("amount").value="10000";


                    var vs = Number('${user.grade}') - 1;
                    var ratesList = new Array('0.55%', '0.60%', '0.65%', '0.70%', '0.75%', '0.80%', '0.88%');
                    $(".rate").html(ratesList[Number(vs)]);
                    var rateList = new Array(0.0055, 0.0060, 0.0065, 0.0070, 0.0075, 0.0080, 0.0088);
                    var rate = rateList[vs];
                    var amount = 10000;
                    changeAmount(amount, rate);


                });


                $(".form-control").bind("input input", function() {

                    var vs = Number('${user.grade}') - 1;
                    var rateList = new Array(0.0055, 0.0060, 0.0065, 0.0070, 0.0075, 0.0080, 0.0088);
                    var rate = rateList[vs]; //获取项目收益的利率
                    if (!isNaN($("#amount").val())) {
                        var amount = Number($("#amount").val()); //获取投资金额   
                    } else {
                        var amount = 10000;
                    }
                    changeAmount(amount, rate);

                });


                function changeAmount(amount, rate) {
                    var amount_all_3 = floatAdd(floatMul(floatMul(amount, rate), 3), amount);
                    var amount_pay_all_3 = moneyFormat(amount_all_3, 2);
                    var amount_pay_month_3 = moneyFormat(floatDiv(amount_all_3, 3), 2);
                    $("#amount_pay_month_3").text(amount_pay_month_3 + "元");
                    $("#amount_all_3").text(amount_pay_all_3 + "元");

                    var amount_all_6 = floatAdd(floatMul(floatMul(amount, rate), 6), amount);
                    var amount_pay_all_6 = moneyFormat(amount_all_6, 2);
                    var amount_pay_month_6 = moneyFormat(floatDiv(amount_all_6, 6), 2);
                    $("#amount_pay_month_6").text(amount_pay_month_6 + "元");
                    $("#amount_all_6").text(amount_pay_all_6 + "元");

                    var amount_all_12 = floatAdd(floatMul(floatMul(amount, rate), 12), amount);
                    var amount_pay_all_12 = moneyFormat(amount_all_12, 2);
                    var amount_pay_month_12 = moneyFormat(floatDiv(amount_all_12, 12), 2);
                    $("#amount_pay_month_12").text(amount_pay_month_12 + "元");
                    $("#amount_all_12").text(amount_pay_all_12 + "元");

                    var amount_all_24 = floatAdd(floatMul(floatMul(amount, rate), 24), amount);
                    var amount_pay_all_24 = moneyFormat(amount_all_24, 2);
                    var amount_pay_month_24 = moneyFormat(floatDiv(amount_all_24, 24), 2);
                    $("#amount_pay_month_24").text(amount_pay_month_24 + "元");
                    $("#amount_all_24").text(amount_pay_all_24 + "元");
                }

                function loan() {

                    if (Number($("#amount").val()) <= 0) {
                        alert("please input right number!!")
                    } else {
                        document.getElementById("apply").submit();
                    }


                }
                </script>
</body>

</html>
