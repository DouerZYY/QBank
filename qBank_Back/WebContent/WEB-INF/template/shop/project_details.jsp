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
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z"> <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em><a href="/qbank/shop/product!index.action">项目列表</a><em class="marginL10 marginR10">>></em> <a href="javascript:;">项目详情</a> </div>
        </div>
        <div class="main">
            <div class="productDetailpage productDetailpanel">
                <div class="blank10"></div>
                <div class="ProductDetailName">
                    <div class="lef darkblue fB f20px"><span class="orange">[新手标]</span>${project.projectName}<span class="ProductBoxrisk">A++</span></div>
                    <div class="right marginR10"><span class="gray">债务方编号：</span><span class="gray">HTDB141208411449</span> </div>
                    <div class="blank20"></div>
                    <div class="left DetailLeft">
                        <div class="left">
                            <div class="ProductDetailImg"> <img src="/qbank${project.projectImageUrl}"> </div>
                        </div>
                        <div class="ProductDetailContent left">
                            <div>
                                <div class="left productBoxItemDetail" style="width:120px">
                                    <div class="left margin4">
                                        <p class="gray2 LineH24">年化收益</p>
                                        <p><span class="f28px fB LineH26 orange marginR4">
                                        <c:forEach items="${ratesList}" var="rates" varStatus="vs"> 
										<c:if test="${project.projectRate==rates.rateCode}">${rates.rateAmount}
										<input type="hidden" id="rates" value="${rates.rateAmount}"/>
										</c:if>
										</c:forEach> 
										</span><span class="f14px">%</span></p>
                                    </div>
                                </div>
                                <div class="left productBoxItemDetail" style="width:120px">
                                    <div class="left margin4">
                                        <p class="gray2 LineH24">项目期限</p>
                                        <p><span class="f28px fB LineH26 gray marginR4">
                                        <c:forEach items="${termList}" var="dic" varStatus="vs"> 
										<c:if test="${project.term==dic.dicCode}">
										${dic.dicName}
										<input type="hidden" id="days" value="${dic.dicName}"/>
										</c:if>
										</c:forEach> 
										<script type="javascript">DateDiff('${project.createDate}', '${project.endTime }')</script>
                                        </span><span class="f14px">天</span></p>
                                    </div>
                                </div>
                                <div class="left productBoxItemDetail">
                                    <div class="left margin4">
                                        <p class="gray2 LineH24">项目规模</p>
                                        <p><span class="f28px fB LineH26 gray marginR4">${project.loanAmount}</span><span class="f14px">元</span></p>
                                    </div>
                                </div>
                            </div>
                            <ul class="ProductDetailGuarantee">
                                <li class="gray"><span class="f14px gray marginR10">发布日期：</span><span class="gray"><fmt:formatDate value="${project.createDate}" dateStyle="medium" /></span><span class=" marginL20 f14px gray marginR10">还款日期：</span><span class="gray"><fmt:formatDate value="${project.endTime }" dateStyle="medium" /></span> </li>
                                <li class="clearfix gray"><span class="left">担保机构：</span><a href="javascript:;" class="tips left" target="_blank"><span class="left"><img src="images/tmp_guarantor_1419910310.jpg" class="left" width="13px" height="13"></span><span class="left gray btn-hover-info add-tooltip" data-placement="right" data-toggle="tooltip" data-original-title="100%本息保障">快借宝官方保障</span></a></li>
                                <li class="gray">申购截止日期：${project.endTime }</li>
                            </ul>
                            <div class="ProductDetailIcon">
                                <div class="left"><span class="time"></span><span class="btn-hover-info add-tooltip" data-placement="bottom" data-toggle="tooltip" data-original-title="投资当天立即生息">本息保障</span></div>
                                <div class="left"><span class="type"></span><span class="btn-hover-info add-tooltip" data-placement="bottom" data-toggle="tooltip" data-original-title="保理公司提供应收账款全额回购">保障类型</span></div>
                                <div class="left"><span class="lime"></span><span class="btn-hover-info add-tooltip" data-placement="bottom" data-toggle="tooltip" data-original-title="持有30天后可以转让">转让限制</span></div>
                            </div>
                            <div></div>
                        </div>
                    </div>
                    <!--未登录开始-->
                    <!--      <div class="left DetailRight">
        <div class="left ProductDetailForm">
          <div class="marginT10"><span class="f14px marginR10">可投金额</span><span class="f14px"><a class="orange" href="Login.html">登录</a> 后查看</span></div>
          <div class="votebox2">
            <div class="f14px gray left LineH24">项目进度</div>
            <dl class="barbox2">
              <dd class="barline">
                <div w="60" style="width:0px;" class="charts"></div>
              </dd>
              <dd class="last">60%</dd>
            </dl>
          </div>
          <div class="blank6"></div>
          <div class="ProductDetailAmount">
            <input type="text" value="" placeholder="100元起投" autocomplete="off">
          </div>
          <span class="marginR20">元</span>
          <div style=" margin-top:-6px;">
            <div class="left" ><span class="f14px marginR10">预计收益</span><span class="f14px table-right">500,000元</span></div>
            <div class="left marginL20 marginT6">
              <button type="button" class="btn3 btn-cta btn-cta-secondary" data-toggle="modal" data-target="#count-modal">投资详情</button>
            </div>
          </div>
          <div class="blank10"></div>
          <div class="marginT2"> <a href="product_confirm.html" class="btn btn-cta btn-cta-PrimaryDisable" style="width:222px;">即将发售</a> </div>
           <div class="marginL50 f12px gray LineH24 marginT10">剩余时间：<span class="red f20px">20:20:20</span></div>
        </div>
      </div>-->
                    <!--未登录结束-->
                    <!--已售罄开始-->
                    <!--<div class="left DetailRight">
        <div class="left ProductDetailForm">
          <div class="marginT10"><span class="f14px marginR10">可投金额</span><span class="f14px"><a class="orange" href="Login.html">登录</a> 后查看</span></div>
          <div class="votebox2">
            <div class="f14px gray left LineH24">项目进度</div>
            <dl class="barbox2">
              <dd class="barline">
                <div w="60" style="width:0px;" class="charts"></div>
              </dd>
              <dd class="last">60%</dd>
            </dl>
          </div>
          <div class="blank6"></div>
          <div class="ProductDetailAmount">
            <input type="text" value="" placeholder="100元起投" autocomplete="off">
          </div>
          <span class="marginR20">元</span>
          <div style=" margin-top:-6px;">
            <div class="left" ><span class="f14px marginR10">预计收益</span><span class="f14px table-right">500,000元</span></div>
            <div class="left marginL20 marginT6">
              <button type="button" class="btn3 btn-cta btn-cta-secondary" data-toggle="modal" data-target="#count-modal">投资详情</button>
            </div>
          </div>
          <div class="blank10"></div>
          <div class="marginT2"> <a href="product_confirm.html" class="btn btn-cta btn-cta-PrimaryDisable" style="width:222px;">已售罄</a> </div>
        </div>
      </div>-->
                    <!--已售罄结束-->
                    <!--立即购买开始-->
                    <div class="left DetailRight">
                        <div class="left ProductDetailForm">
                            <div class="blank16"></div>
                            <ul>
                                <li>
                                    <div class="votebox2">
                                        <div class="f14px gray left LineH24">项目进度</div>
                                        <dl class="barbox2">
                                            <dd class="barline">
                                                <div w="${(project.loanAmount-project.investAmount)*100/project.loanAmount}" style="width:0px;" class="charts"></div>
                                            </dd>
                                            <dd class="last">${(project.loanAmount-project.investAmount)*100/project.loanAmount}%</dd>
                                        </dl>
                                    </div>
                                </li>
                                <li>
                                    <div class="H28"><span class="f14px marginR10">融资金额</span><span class="f14px table-right">${project.loanAmount}元</span></div>
                                </li>
                                <li>
                                    <div class="H28"><span class="f14px marginR10">可投金额</span>
                                    <c:if test="${empty user.id}">
                                    <span class="f14px">
                                    <a class="orange" href="/qbank/shop/login!index.action">登录后</a> 查看
                                    </span>
                                    </c:if>
                                   	<c:if test="${not empty user.id}"> 
                                   	<span class="f14px table-right">${project.investAmount}元</span>
                                   	</c:if>
                                    
                                    
                                    </div>
                                </li>
                                <li>
                                 <div class="ProductDetailError" id="error">请输入一个介于100和 ${project.investAmount }之间的值</div>
              
                                    <div class="ProductDetailAmount">
                                        <input type="text"class="investAmounts" value="" placeholder="100元起投" autocomplete="off">
                                    </div>
                                    <span class="marginR20">元</span> </li>
                                <li>
                                    <div class="left marginT6"><span class="f14px marginR10">预期收益</span><span class="f14px table-right"><span id="inCome">0</span>元</span></div>
                                    <div class="left marginL20 marginT6">
                                        <button type="button" class="btn3 btn-cta btn-cta-secondary" data-toggle="modal" data-target="#count-modal">收益详情</button>
                                    </div>
                                </li>
                            </ul>
                            <div class="blank10"></div>
                            <div class="marginT2"> <a href="/qbank/shop/project!confirm.action?id=${project.id }" class="btn btn-cta btn-cta-primary" style="width:222px;">立即投资</a> </div>
                        </div>
                    </div>
                    <!--立即购买结束-->
                    <div class="blank0"></div>
                    <div class="particulars bd-inner">
                        <div class="particulars-text">
                            <div class="particulars-nav" style="display: block;">
                                <a href="javascript:void(0)" onclick="scrollTo('001');" class="particulars-nav-item bln cur">标的详情</a>
                                <a href="javascript:void(0)" onclick="scrollTo('002');" class="particulars-nav-item">个人信息</a>
                                <a href="javascript:void(0)" onclick="scrollTo('004');" class="particulars-nav-item">投资记录</a>
                            </div>
                            <div class="particulars-nav fix-layer" style="display: block;">
                                <a href="javascript:void(0)" onclick="scrollTo('001');" class="particulars-nav-item bln cur">标的详情</a>
                                <a href="javascript:void(0)" onclick="scrollTo('002');" class="particulars-nav-item">个人信息</a>
                                <a href="javascript:void(0)" onclick="scrollTo('004');" class="particulars-nav-item">投资记录</a>
                                <div class="ProductDetailAmount" style="margin: 12px 10px 0px 134px;width:156px;">
                                    <input type="number" class="investAmounts" value="" placeholder="100元起投" autocomplete="off" style="width:156px;" />
                                </div>
                                <div class="left">
                                    <a href="/qbank/shop/project!confirm.action" class="btn4 btn-cta btn-cta-primary">立即投资</a>
                                </div>
                                <div class="left marginT6 marginL6">
                                    <a href="#" data-toggle="modal" data-target="#count-modal">
                                        <img src="images/jisuanqi.png" />
                                    </a>
                                </div>
                            </div>
                            <div class="particulars-content" id="001">
                                <h2 class="ProductDetail-area" style="margin-top:10px !important;">项目信息</h2>
                                <h3 class="ProductDetail-title">项目描述</h3>
                                <div class="rel">
                                    <div class="partDesc PosFixed">
                                        <p>${project.loanDetail }</p>
                                    </div>
                                </div>
                            </div>
                            <div class="particulars-content" id="002">
                                <h2 class="ProductDetail-area">个人信息</h2>
                                   <h3 class="ProductDetail-title">个人背景</h3>
                                <div class="rel">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>房屋价值</th>
                                                    <th>车辆价值</th>
                                                    <th>月收入</th>
                                                    <th>用户学历</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>${users.houseValue }元</td>
                                                    <td>${users.carValue }元</td>
                                                    <td>${users.income }元</td>
                                                    <td>
													<c:forEach items="${xlList}" var="dicss" varStatus="vs">
													<c:if test="${dicss.dicCode==users.degree}">${dicss.dicName}</c:if>
													</c:forEach> 
                                                    </td>
                                                    
                                                </tr>
                                            </tbody>
                                        </table>
                                     </div>
                                </div>

                            
                            <div class="ProductDetailHistory"  id="004">
                                <h2 class="ProductDetailHistoryTitle"><strong>投资记录</strong><span class="fs-m tint"></span></h2>
                                <div class="blank20"></div>
                                <ul class="ProductDetailHistoryList clearfix">
                                    <li class="i-h-l-title line-1"> <span class="left ProductDetailHistory1">投资用户</span> <span class="left ProductDetailHistory2">投资金额</span> <span class="left ProductDetailHistory3 ">投资时间</span> <span class="right ProductDetailHistory4">状态</span> </li>
                                   <c:forEach items="${recordList}" var="record" varStatus="vs"> 
                                    <li class="i-h-l-item line-2"> <span class="left ProductDetailHistory1">${record.user.name }</span> <span class="left ProductDetailHistory2"><span class="ping">${record.incestAmount }</span>元</span> <span class="left ProductDetailHistory3 ping">${record.createDate }</span> <span class="right ProductDetailHistory4">成功</span> </li>
                                   </c:forEach>
                                   <c:if test="${empty recordList}">
                                   <li style=" text-align: center;">暂无投资记录</li>
                                   </c:if>
                                    </ul>
                            </div>
                            <div class="blank50"></div>
                        </div>
                    </div>
                </div>
                <div class="blank0"></div>
            </div>
        </div>
        <%@include file="common/footer.jsp" %>
		<%@include file="common/login_modal.jsp" %>
		<%@include file="common/signup_modal.jsp" %>
        <!--//modal-->
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
                                    <span class="left LineH40 marginL20">元</span> </div>
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
        </div>
        <!-- 第三方开户 Modal -->
        <div class="modal modal-login" id="account-modal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
            <div class="modal-dialog" style="width:520px;">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="divider"><span class="f22px black">银行卡认证</span></div>
                        <div class="login-form-container">
                            <div class="ProductDetailForm clearfix">
                                <div style="margin-left: 120px; color:#e25353; line-height:16px;">请输入姓名</div>
                                <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4">*</span>姓名</span>
                                <div class="ProductDetailInput">
                                    <div class="ProductDetailAmount">
                                        <input type="text" value="尚尚金服" class="form-error" autocomplete="off" style="width:280px;">
                                    </div>
                                </div>
                            </div>
                            <div class="ProductDetailForm clearfix">
                                <div style="margin-left: 120px; color:#e25353; line-height:16px;">请输入身份证</div>
                                <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4">*</span><span class="marginR10">身份证</span></span>
                                <div class="ProductDetailInput">
                                    <div class="ProductDetailAmount">
                                        <input type="text" value="420111111111111111" class="form-error" autocomplete="off" style="width:280px;">
                                    </div>
                                </div>
                            </div>
                            <div class="ProductDetailForm clearfix">
                                <div style="margin-left: 120px; color:#e25353; line-height:16px;">请选择一个银行</div>
                                <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4">*</span><span class="marginR10">银行</span></span>
                                <select name="bank" id="bank" class="bank error">
                                    <option value="1">招商银行</option>
                                    <option value="2">建设银行</option>
                                    <option value="3">农业银行</option>
                                    <option value="4">工商银行</option>
                                    <option value="5">邮政储蓄银行</option>
                                    <option value="6">民生银行</option>
                                    <option value="7">中信银行</option>
                                    <option value="8">平安银行</option>
                                    <option value="9">中国银行</option>
                                    <option value="10">交通银行</option>
                                    <option value="11">兴业银行</option>
                                    <option value="12">北京银行</option>
                                    <option value="13">光大银行</option>
                                    <option value="14">广东发展银行</option>
                                    <option value="15">上海浦发银行</option>
                                    <option value="16">华夏银行</option>
                                    <option value="17">北京农村商业银行</option>
                                </select>
                            </div>
                            <div class="ProductDetailForm clearfix">
                                <div style="margin-left: 120px; color:#e25353; line-height:16px;">请选择一个开户地区</div>
                                <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4">*</span><span class="marginR10">开户地区</span></span>
                                <div style="margin-top:-8px;">
                                    <select id="province" name="province" class="province error">
                                        <option>请选择</option>
                                        <option value="1">北京市</option>
                                        <option value="2034">湖南省</option>
                                        <option value="2184">广东省</option>
                                        <option value="2403">广西自治区</option>
                                        <option value="2541">海南省</option>
                                        <option value="2570">四川省</option>
                                        <option value="2791">贵州省</option>
                                        <option value="2892">云南省</option>
                                        <option value="3046">西藏自治区</option>
                                        <option value="3128">陕西省</option>
                                        <option value="3256">甘肃省</option>
                                        <option value="3369">青海省</option>
                                        <option value="3422">宁夏自治区</option>
                                        <option value="3454">新疆自治区</option>
                                        <option value="3571">台湾省</option>
                                        <option value="3573">香港特区</option>
                                        <option value="1905">湖北省</option>
                                        <option value="1711">河南省</option>
                                        <option value="21">天津市</option>
                                        <option value="40">上海市</option>
                                        <option value="61">重庆市</option>
                                        <option value="102">河北省</option>
                                        <option value="297">山西省</option>
                                        <option value="439">内蒙古自治区</option>
                                        <option value="561">辽宁省</option>
                                        <option value="690">吉林省</option>
                                        <option value="768">黑龙江省</option>
                                        <option value="924">江苏省</option>
                                        <option value="1170">安徽省</option>
                                        <option value="1310">福建省</option>
                                        <option value="1414">江西省</option>
                                        <option value="1536">山东省</option>
                                        <option value="3575">澳门特区</option>
                                        <option value="1057">浙江省</option>
                                    </select>
                                    <select id="city" name="city" class="city error">
                                        <option value="">请选择</option>
                                        <option value="1">北京市</option>
                                    </select>
                                </div>
                            </div>
                            <div class="ProductDetailForm clearfix">
                                <div style="margin-left: 120px; color:#e25353; line-height:16px;">请输入一个支行名称</div>
                                <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4">*</span><span class="marginR10">支行名称</span></span>
                                <div class="ProductDetailInput">
                                    <div class="ProductDetailAmount">
                                        <input type="text" value="" class="form-error" autocomplete="off" style="width:280px;">
                                    </div>
                                </div>
                                <div class="gray2" style="margin-left: 120px; line-height:16px;line-height: 16px;display: inline-block; width:280px;">请认证核对您的信息，错误的支行信息会延长提款到账3-5日</div>
                            </div>
                            <div class="ProductDetailForm clearfix">
                                <div style="margin-left: 120px; color:#e25353; line-height:16px;">请输入银行卡号</div>
                                <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4">*</span><span class="marginR10">银行卡号</span></span>
                                <div class="ProductDetailInput">
                                    <div class="ProductDetailAmount">
                                        <input type="text" value="622202 3456 2345 344345" class="form-error" autocomplete="off" style="width:280px;">
                                    </div>
                                </div>
                            </div>
                            <div class="ProductDetailForm clearfix">
                                <div style="margin-left: 120px; color:#e25353; line-height:16px;"></div>
                                <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4"></span><span class="marginR10">短信验证码</span></span>
                                <div class="ProductDetailInput">
                                    <div class="ProductDetailAmount">
                                        <input type="text" value="622202" class="left form-error" autocomplete="off" style="width:120px;">
                                        <div class="marginL10 left" style="margin-top:-6px;"><a href="#" class="btn3 btn-cta btn-cta-PrimaryGray" data-toggle="modal" data-target="#account-modal">验证码</a></div>
                                    </div>
                                </div>
                            </div>
                            <div style="margin-left:120px;"><a href="#" class="btn btn-cta btn-cta-primary" style="width:160px;">验证并绑定银行卡</a></div>
                            <div class="blank20"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <ul id="side-bar" class="side-pannel side-bar">
  			<a href="javascript:;" class="gotop" style="display:none;"><s class="g-icon-top"></s></a>
		</ul>
        <!-- Javascript -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- JS Page Level -->
        <script type="text/javascript" src="js/NavScroll.js"></script>
        <script type="text/javascript" src="/qbank/template/admin/js/base.js"></script> 
        <script type="text/javascript">
        $(function() {
        	$(".investAmounts").bind("input input",function(){
        		var amount = $(".investAmounts").val();//用户输入的金额
        		var invest = "${project.investAmount}";
        		if(amount>invest){
        			$("#error").text("输入金额大于项目可投金额");
        		}
        		var days = $("#days").val();//借款的天数
        		var rates = $("#rates").val();//利率
        		var rate = floatDiv(rates,36500);
        		var inCome =setScale(floatMul(days,floatMul(rate,amount)), 2, "roundhalfup") ;
        		$("#inCome").text(inCome) ;
        		
        		
        	});
            $(window).scroll(function() {
                if ($(window).scrollTop() > 100) {
                    $("#side-bar .gotop").fadeIn(1000);
                } else {
                    $("#side-bar .gotop").hide(1000);
                }
            });
            $("#side-bar .gotop").click(function() {
                $('html,body').animate({
                    'scrollTop': 0
                }, 500);
            });
            $(".particulars-nav a").click(function(){ 
        		$(this).addClass("bln cur").siblings().removeClass("bln cur");
        		$(".particulars-nav.fix-layer a").eq($(this).index()).addClass("bln cur").siblings().removeClass("bln cur");
          	});
            $(".particulars-nav.fix-layer a").click(function(){ 
        		$(this).addClass("bln cur").siblings().removeClass("bln cur");
        		$(".particulars-nav a").eq($(this).index()).addClass("bln cur").siblings().removeClass("bln cur");
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
        function scrollTo(id){
        	document.getElementById(id).scrollIntoView();
        }
        </script>
        <script>
	$("#product").addClass("active").siblings().removeClass("active");
</script>
</body>

</html>