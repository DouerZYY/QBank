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
    <div id="pt" class="bm cl">
        <div class="z"> <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/product!index.action">理财</a> <em class="marginL10 marginR10">>></em><a href="/qbank/shop/product!index.action">项目列表</a><em class="marginL10 marginR10">>></em> <a href="javascript:void(0)">项目详情</a> </div>
    </div>
    <div id="container" class="ui-container light-gray">
        <div class="main">
            <div class="productDetailpage productDetailpanel">
                <dl class="ConfirmListDl ConfirmListProject">
                    <dt class="ConfirmTitle">
                        <h2>确认项目</h2>
                    </dt>
                    <dd class="clearfix">
                        <ul class="LiStyle LiStyle-first">
                            <li>项目名称：<span>${project.projectName} </span></li>
                            <li>年化收益：<span id="rates">
                            ${rates}
                            %</span></li>
                            <li>还款方式：<span>到期还本付息 </span></li>
                        </ul>
                        <ul class="LiStyle LiStyle-two">
                            <li>债务方：<span>HTDB141208411449（债务方编号）</span></li>
                            <li>债权方：<span>yonghuxinx</span></li>
                        </ul>
                        <ul class="LiStyle LiStyle-three">
                            <li>起息日期：<fmt:formatDate value="${project.startTime}" dateStyle="medium" /></li>
                            <li>还款日期：<fmt:formatDate value="${project.endTime}" dateStyle="medium" /></li>
                            <li>计息天数： 
                            	<c:forEach items="${termList}" var="dic" varStatus="vs"> 
								<c:if test="${project.term==dic.dicCode}">
								${dic.dicName}
								<input type="hidden" id="days" value="${dic.dicName}"/>
								</c:if>
								</c:forEach> 天</li>
                        </ul>
                    </dd>
                </dl>
                <div>
                    <dl class="ConfirmListDl">
                        <dt class="ConfirmTitle">
                            <h2>确认投资</h2>
                        </dt>
                        <dd>
                            <ul class="confirm-info-list-money-ul clearfix">
                                <li>
                                    <div class="td-name" style="margin-bottom:7px;"><strong>投资金额</strong></div>
                                    <div class="td-value"><span class="ProductDetailAmount" style=" text-align:left;width:120px;">
              <input type="number" value="10000" id ="investAmount" placeholder="10000" autocomplete="off" style=" text-align:left;width:120px;">
             </span><span class="LineH40">元</span></div>
                                </li>
                                <li>
                                    <div class="td-name">到期总回款</div>
                                    <div class="td-value"><strong id="all">0</strong> 元</div>
                                </li>
                                <li>
                                    <div class="td-name">净收益</div>
                                    <div class="td-value"><strong id="shouyi">0</strong> 元</div>
                                </li>
                                <li>
                            </ul>
                            <div class="confirm-info-list-money-div clearfix checked">
                                <div class="margin10">
                                    <span class="td-name"><strong>账户余额：</strong></span> <span class="td-value f14px fB" style="width:160px;"><strong class="f18px">${account.totalAmount}</strong> 元</span> <span class="td-operate"> <a class="goChargeBtn" href="/qbank/shop/member!toRecharge.action" target="_blank"> 充值 </a> </span> </div>
                                <div class="margin10">
                                    <span class="td-name">活期余额：</span> <span class="td-value td-value-need-more-money fB f14px"> <strong class="f18px">${account.amount}</strong> 元 </span>
                                </div>
                            </div>
                           <!--  <div class="confirm-info-list-money-div clearfix checked">
                                <span class="td-name"><strong>优惠劵</strong></span>
                                <span class="td-confirm-right wap_hide">使用 <strong class="virtual_money_show">50</strong> 元</span>
                                <div class="invest-coupon" id="invest_coupon">
                                    <div>
                                        <div>
                                            <table class="TableProductConfirm">
                                                <tbody>
                                                    <tr>
                                                        <td></td>
                                                        <td>券名称</td>
                                                        <td>使用规则</td>
                                                        <td>日期（到期）</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="itz-wap-selected invest-coupon-list-checkbox">
                          <input type="checkbox" name="" value="" checked="">
                          </span></td>
                                                        <td>抵现券&nbsp;100000元 </td>
                                                        <td>每满100000元抵100元</td>
                                                        <td>2015-10-13到期</td>
                                                        <td><span class="orange">荐</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="itz-wap-selected invest-coupon-list-checkbox">
                          <input type="checkbox" name="" value="" disabled="">
                          </span></td>
                                                        <td>抵现券&nbsp;10元</td>
                                                        <td>每满1000元抵10元</td>
                                                        <td>2015-10-13到期</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="itz-wap-selected invest-coupon-list-checkbox">
                          <input type="checkbox" name="" value="" disabled="">
                          </span></td>
                                                        <td>抵现券&nbsp;10元</td>
                                                        <td>每满1000元抵10元</td>
                                                        <td>2015-10-13到期</td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div style="display:none;">优惠券总额不能大于等于投资金额</div>
                                    </div>
                                </div>
                            </div> -->
                        </dd>
                    </dl>
                </div>
                <div class="marginT20">
                	<form id="submitForm" action="/qbank/shop/project!complete.action?id=${project.id}"  method="post">>
                    <div class="left">
                        <label for="textfield">支付密码：</label>
                        <input type="password"  id="passwds" class="form-control marginB20" style="width:240px;" placeholder="支付密码" />
                   		<input type="hidden" id ="amounts" name="amounts"/>
                   		<input type="hidden" id ="passwd" name="passwd"/>
                    </div>
                    <div class="left" style="margin-left:10px; margin-top:42px;"><a class="overline ping" href="/qbank/shop/forgot_password_step1!index.action">忘记密码？</a></div>
                    <div class="blank0"></div>
                    
                    <div class="checkbox remember">
                        <label>
                            <input type="checkbox" checked="checked"> 我已阅读并同意按
                            <a href="javascript:;" class="orange">《投资合同范本》</a>的格式和条款生成结款协议.</label>
                    </div> 
                </form>
                <button id="submitBtn" class="btn btn-cta btn-cta-primary" style="width:250px;" >确认投资</button>
                </div>
               <!--  <p class="LineH40">您的可用余额不足，还需<span class="red">102.42</span>元，请充值后再认购</p> -->
                <div class="blank40"></div>
            </div>
        </div>
        <%@include file="common/footer.jsp" %>
		<%@include file="common/login_modal.jsp" %>
		<%@include file="common/signup_modal.jsp" %>
        <!-- Count Modal -->
        <div class="modal modal-login" id="count-modal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="divider"><span class="f22px black">收益计算器</span></div>
                        <div class="login-form-container">
                            <div class="clearfix">
                                <div class="ProductDetailForm clearfix left">
                                    <div class="ProductDetailError" style="margin-left: 80px;">请输入一个介于 100 和 158,300 之间的值</div>
                                    <span class="left LineH40 f16px">投资金额：</span>
                                    <div class="ProductDetailInput clearfix">
                                        <div class="ProductDetailAmount">
                                            <input type="text" value="100" autocomplete="off">
                                        </div>
                                    </div>
                                    <span class="left LineH40">元</span> </div>
                            </div>
                            <div id="calcSum" class="c-earnings"><span class="f16px LineH40">投资到期可获得总收益：<em class="strong ping f16px">5.06</em>元</span></div>
                            <table class="ProductDetaillist-1" border="0" cellpadding="2" cellspacing="0">
                                <tbody id="calcList">
                                    <tr>
                                        <th class="table-center paddingR0">还款日期</th>
                                        <th class="table-center paddingR0">应收本息(元)</th>
                                    </tr>
                                    <tr>
                                        <td class="table-center paddingR0">2015-08-10</td>
                                        <td class="table-center paddingR0">0.85</td>
                                    </tr>
                                    <tr>
                                        <td class="table-center paddingR0">2015-09-10</td>
                                        <td class="table-center paddingR0">0.85</td>
                                    </tr>
                                    <tr>
                                        <td class="table-center paddingR0">2015-10-10</td>
                                        <td class="table-center paddingR0">0.82</td>
                                    </tr>
                                    <tr>
                                        <td class="table-center paddingR0">2015-11-10</td>
                                        <td class="table-center paddingR0">0.85</td>
                                    </tr>
                                    <tr>
                                        <td class="table-center paddingR0">2015-12-10</td>
                                        <td class="table-center paddingR0">0.82</td>
                                    </tr>
                                    <tr>
                                        <td class="table-center paddingR0">2016-01-10</td>
                                        <td class="table-center paddingR0">0.85</td>
                                    </tr>
                                    <tr>
                                        <td class="table-center paddingR0">2016-01-11</td>
                                        <td class="table-center paddingR0">100.02</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div></div>
        <!-- Javascript -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- JS Page Level -->
        <script type="text/javascript" src="js/SortBy.js"></script>
        <script type="text/javascript" src="js/NavScroll.js"></script>
        <script type="text/javascript" src="js/baguettebox.min.js"></script>
        <script type="text/javascript" src="/qbank/template/admin/js/base.js"></script> 
        <script type="text/javascript" src="/qbank/template/common/js/md5-min.js"></script> 
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
            $("#investAmount").bind("input input",function(){
            	var rate = "${rates}";//获取项目收益的利率
            	//alert(rate);
            	var amount = $("#investAmount").val();//获取投资金额
            	$("#amounts").val(amount);
            	var shouyi = setScale(floatMul(floatDiv(rate,36500),amount), 2, "roundhalfup");//设置数值精度
            	//var shouyi = amount*rate/36500;
            	if(""==amount){
            		amount=0;//缺省为0
            	}
            	$("#all").text(floatAdd(amount,shouyi));
            	$("#shouyi").text(shouyi);
            });
            $("#submitBtn").click(function(){
            	//$("#passwd").val(hex_md5($("#passwd").val()));
            	var passwd = $("#passwds").val();
            	//alert(passwd);
            	var params = {};
            	params.passwd = passwd;
            	//alert(params.passwd);
            	$.ajax({
        			url: "/qbank/shop/project!checkPasswdAjax.action",
        			data: params,
        			dataType: "json",
        			async: false,
        			success:function(data){
        				if(data.flags==1){
        					$("#submitForm").submit();
        				}else{
        					alert("支付密码错误");
        				} 
        			}
            	

            });
        });
        });
        </script>
       
</body>

</html>
