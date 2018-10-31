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
    <title>第三方绑定</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

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
                    <!--   个人信息开始  -->
                    <div class="" style="height:180px;padding:50px 20px 0px 20px;">
                        <div class="left perisonDetail" style="width:400px;">
                            <div class="left perinforphoto"><img src="images/photo_64.png" width="64px" height="64px;" /></div>
                            <div class="left perisonDetail">
                                <ul>
                                    <li>
                                        <p class="f18px" style="width:200px"><span>您好！</span><span class="f18px fB gray">HX508590</span></p>
                                    </li>
                                    <li>
                                        <p><span class="gray">会员等级：</span><span class="gray">普通会员</span></p>
                                    </li>
                                    <li>
                                        <p><span class="PerisonIcon01 inline-block"></span><span class="PerisonIcon02 inline-block"></span><span class="PerisonIcon03 inline-block"></span><span class="PerisonIcon04_none inline-block"></span></p>
                                    </li>
                                    <li>
                                        <p>
                                            <div class="votebox4">
                                                <div class="gray left LineH22">安全等级</div>
                                                <dl class="barbox4">
                                                    <dd class="barline">
                                                        <div w="70" style="width:0px;" class="charts"></div>
                                                    </dd>
                                                    <dd class="last"><span>中</span><span class="marginL20"><a class="orange" href="javascript:;">提升</a></span></dd>
                                                </dl>
                                            </div>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="left perisonDetail" style="width:300px;">
                            <ul>
                                <li>
                                    <div class="left gray">可用余额</div>
                                    <div class="left marginL64">
                                        <div class="left marginR10"><a href="/qbank/shop/personal_recharge!index.action" class="btn5 btn-block btn-cta-primary">充值</a></div>
                                        <div class="left"><a href="/qbank/shop/personal_cash!index.action" class="btn5 btn-block btn-cta-PrimaryDisable">提现</a></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="blank10"></div>
                                    <div><span class="marginR4 f26px fB gray">59,246,828.00</span><span class="f12px gray">元</span></div>
                                </li>
                                <li>
                                    <div><span class="marginR25 gray">我的红包</span><span><a href="javascript:;" class=" gray">100.00元</a></span></div>
                                </li>
                                <li>
                                    <div><span class="gray">冻结资金</span><span class="informationMark btn-hover-info add-tooltip" data-placement="right" data-toggle="tooltip" data-original-title="冻结资金"></span><span class="marginL10 gray">274749.00元</span></div>
                                </li>
                                <li>
                                    <div><span class="gray">资产总计</span><span class="informationMark btn-hover-info add-tooltip" data-placement="right" data-toggle="tooltip" data-original-title="资产总计"></span><span class="marginL10 gray">158395.00元</span></div>
                                </li>
                            </ul>
                        </div>
                        <div class="left perisonDetail" style="width:220px;">
                            <ul>
                                <li>
                                    <div class="gray2">累计收益</div>
                                </li>
                                <li>
                                    <div class="blank10"></div>
                                    <div><span class="marginR4 f26px fB gray">28,486,269.00</span><span class="f12px gray">元</span></div>
                                </li>
                                <li>
                                    <div><span class="gray">累计投资</span><span class="marginL10 gray">348393.00元</span></div>
                                </li>
                                <li>
                                    <div><span class="gray">待收收益</span><span class="marginL10 gray">3685.00元</span></div>
                                </li>
                                <li>
                                    <div><span class="gray">待收本金</span><span class="marginL10 gray">129638.00元</span></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--个人信息结束-->
                    <!--今日收益开始-->
                    <div class="marginB40" style="height:180px;padding:20px">
                        <div class="perisonTitle f20px fB marginR4 gray2">今日收益</div>
                        <div class="blank20"></div>
                        <div class="left perisonDetail" style="margin-left:20px;">
                            <ul>
                                <li>
                                    <div class=""><span class="gray marginR4">今日收益</span><span class="informationMark btn-hover-info add-tooltip" data-placement="right" data-toggle="tooltip" data-original-title="资产总计"></span></div>
                                </li>
                                <li>
                                    <div><span class="marginR4 f26px fB gray">759,284.00</span><span class="f12px gray">元</span></div>
                                    <div class="blank20"></div>
                                </li>
                                <li>
                                    <div class="left marginR20 w120 BorderRight">
                                        <div class="gray">昨日收益</div>
                                        <div class="gray">749,236.00元</div>
                                    </div>
                                    <div class="left marginR20 w120 BorderRight">
                                        <div class="gray">投资总额</div>
                                        <div class="gray">845,433.00元</div>
                                    </div>
                                    <div class="left marginR20 w80">
                                        <div class="gray">平均年化</div>
                                        <div class="gray">13.75%</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="left perisonDetail" style=" width:480px;">
                            <ul>
                                <li>
                                    <div class="gray">近7日收益变化</div>
                                </li>
                                <li>
                                    <div id="main" style="height:200px; margin:0px; padding:0px;"></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="blank0"></div>
                    <!--今日收益结束-->
                    <!--最近项目开始-->
                    <div class="perisonTitle"><span class="marginL20 f20px fB marginR4 gray left inline-block">最近项目</span><span class="f12px gray inline-block marginT10">(最近5个项目)</span><span class="f12px right inline-block marginT10 marginR20"><a href="/qbank/shop/transaction_records!index.action" charset="orange">查看所有项目>></a></span></div>
                    <div>
                        <div class="PerProductListTitle">
                            <div class="left w260 marginL10 marginR30"><span>项目名称</span></div>
                            <div class="left w110 marginR10"><span>投资计息日</span></div>
                            <div class="left w180 marginR10"><span>收息（已收/代收）</span></div>
                            <div class="left w120 marginR10"><span>本金</span></div>
                            <div class="left w80"><span>状态</span></div>
                            <div class="left w150"><span>操作</span></div>
                        </div>
                        <div class="PerProductList">
                            <ul>
                                <li>
                                    <div class="margin20 marginT10">
                                        <div class="left w260 marginR30">香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</div>
                                        <div class="left w120">
                                            <div style="margin-bottom:2px;"><span class="Perison_tou_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                            <div><span class="Perison_xi_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w180 marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB fB">6,328,589.00</span>/<span class="VAB">6,328,589.00</span></div>
                                            <div>
                                                <div class="votebox5">
                                                    <div class="f12px gray left LineH20">收息进度</div>
                                                    <dl class="barbox5">
                                                        <dd class="barline">
                                                            <div w="60" style="width:0px;" class="charts"></div>
                                                        </dd>
                                                        <dd class="last">60%</dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="left w120  marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB">99,328,589.00</span></div>
                                            <div><span class="Perison_ben_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w80 marginT10">
                                            <div><span class="">项目审核</span></div>
                                        </div>
                                        <div class="left w150 marginT8">
                                            <div class="left marginR10"><a href="javascript:;" class="btn6 btn-block btn-cta-primary">项目协议</a></div>
                                            <div class="left"><a href="javascript:;" class="btn6 btn-block btn-cta-PrimaryDisable">转让申请</a></div>
                                        </div>
                                    </div>
                                    <div class="blank0" style="border-top:1px solid #f4f4f4;"></div>
                                    <div style="" class="Title_personal_dteail">
                                        <div class="perisonList_box">
                                            <div class="perisonList_step">
                                                <div class="perisonList_stepB">
                                                    <ul>
                                                        <li class="perisonList_stepB_1">&nbsp;</li>
                                                        <li class="perisonList_stepB_2">&nbsp;</li>
                                                        <li class="perisonList_stepB_3">&nbsp;</li>
                                                        <li class="">&nbsp;</li>
                                                    </ul>
                                                </div>
                                                <div class="perisonList_stepT">
                                                    <ul>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">1.</span><span>投资项目</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">2.</span><span>开始收息</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">3.</span><span>收回本金</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListSetpTitle">
                                                            <div><span class="f20px LineH18">4.</span><span>订单成功</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="marginT20">
                                            <div class="left marginL36 gray2"><span>年化利率：</span><span>14%</span></div>
                                            <div class="left marginL36 gray2"><span>项目转让：</span><span>30天后可转让</span></div>
                                            <div class="left marginL36 gray2"><span>已持有：</span><span>14天</span></div>
                                        </div>
                                        <div class="blank0"></div>
                                        <dl class="perisonListDl perisonListProject">
                                            <dt>
                                                <h2 class="f14px fB marginL34">项目信息</h2>
                                            </dt>
                                            <dd class="clearfix">
                                                <ul class="LiStyle LiStyle-first">
                                                    <li>项目名称：<span>香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</span></li>
                                                    <li>年化收益：<span>10.00%</span></li>
                                                    <li>还款方式：<span>到期还本付息 </span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-two">
                                                    <li>债务方：<span>HTDB141208411449（债务方编号）</span></li>
                                                    <li>保证方：<span>深圳国投商业保理有限公司</span></li>
                                                    <li>债权方：<span>（wangpan43）</span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-three">
                                                    <li>起息日期：2015-07-28</li>
                                                    <li>还款日期：2015-11-30</li>
                                                    <li>计息天数：125天</li>
                                                </ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="Title_personal personalArrowOpen"></div>
                                </li>
                                <li>
                                    <div class="margin20 marginT10">
                                        <div class="left w260 marginR30">香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</div>
                                        <div class="left w120">
                                            <div style="margin-bottom:2px;"><span class="Perison_tou_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                            <div><span class="Perison_xi_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w180 marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB fB">6,328,589.00</span>/<span class="VAB">6,328,589.00</span></div>
                                            <div>
                                                <div class="votebox5">
                                                    <div class="f12px gray left LineH20">收息进度</div>
                                                    <dl class="barbox5">
                                                        <dd class="barline">
                                                            <div w="60" style="width:0px;" class="charts"></div>
                                                        </dd>
                                                        <dd class="last">60%</dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="left w120  marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB">99,328,589.00</span></div>
                                            <div><span class="Perison_ben_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w80 marginT10">
                                            <div><span class="">项目审核</span></div>
                                        </div>
                                        <div class="left w150 marginT8">
                                            <div class="left marginR10"><a href="javascript:;" class="btn6 btn-block btn-cta-primary">项目协议</a></div>
                                            <div class="left"><a href="javascript:;" class="btn6 btn-block btn-cta-PrimaryDisable">转让申请</a></div>
                                        </div>
                                    </div>
                                    <div class="blank0" style="border-top:1px solid #f4f4f4;"></div>
                                    <div style="display: none;" class="Title_personal_dteail">
                                        <div class="perisonList_box">
                                            <div class="perisonList_step">
                                                <div class="perisonList_stepB">
                                                    <ul>
                                                        <li class="perisonList_stepB_1"></li>
                                                        <li class="perisonList_stepB_2"></li>
                                                        <li class="perisonList_stepB_3"></li>
                                                        <li class=""></li>
                                                    </ul>
                                                </div>
                                                <div class="perisonList_stepT">
                                                    <ul>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">1.</span><span>投资项目</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">2.</span><span>开始收息</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">3.</span><span>收回本金</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListSetpTitle">
                                                            <div><span class="f20px LineH18">4.</span><span>订单成功</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="marginT20">
                                            <div class="left marginL36 gray2"><span>年化利率：</span><span>14%</span></div>
                                            <div class="left marginL36 gray2"><span>项目转让：</span><span>30天后可转让</span></div>
                                            <div class="left marginL36 gray2"><span>已持有：</span><span>14天</span></div>
                                        </div>
                                        <div class="blank0"></div>
                                        <dl class="perisonListDl perisonListProject">
                                            <dt>
                                                <h2 class="f14px fB marginL34">项目信息</h2>
                                            </dt>
                                            <dd class="clearfix">
                                                <ul class="LiStyle LiStyle-first">
                                                    <li>项目名称：<span>香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</span></li>
                                                    <li>年化收益：<span>10.00%</span></li>
                                                    <li>还款方式：<span>到期还本付息 </span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-two">
                                                    <li>债务方：<span>HTDB141208411449（债务方编号）</span></li>
                                                    <li>保证方：<span>深圳国投商业保理有限公司</span></li>
                                                    <li>债权方：<span>（wangpan43）</span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-three">
                                                    <li>起息日期：2015-07-28</li>
                                                    <li>还款日期：2015-11-30</li>
                                                    <li>计息天数：125天</li>
                                                </ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="Title_personal personalArrowClose"></div>
                                </li>
                                <li>
                                    <div class="margin20 marginT10">
                                        <div class="left w260 marginR30">香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</div>
                                        <div class="left w120">
                                            <div style="margin-bottom:2px;"><span class="Perison_tou_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                            <div><span class="Perison_xi_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w180 marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB fB">6,328,589.00</span>/<span class="VAB">6,328,589.00</span></div>
                                            <div>
                                                <div class="votebox5">
                                                    <div class="f12px gray left LineH20">收息进度</div>
                                                    <dl class="barbox5">
                                                        <dd class="barline">
                                                            <div w="60" style="width:0px;" class="charts"></div>
                                                        </dd>
                                                        <dd class="last">60%</dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="left w120  marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB">99,328,589.00</span></div>
                                            <div><span class="Perison_ben_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w80 marginT10">
                                            <div><span class="">项目审核</span></div>
                                        </div>
                                        <div class="left w150 marginT8">
                                            <div class="left marginR10"><a href="javascript:;" class="btn6 btn-block btn-cta-primary">项目协议</a></div>
                                            <div class="left"><a href="javascript:;" class="btn6 btn-block btn-cta-PrimaryDisable">转让申请</a></div>
                                        </div>
                                    </div>
                                    <div class="blank0" style="border-top:1px solid #f4f4f4;"></div>
                                    <div style="display: none;" class="Title_personal_dteail">
                                        <div class="perisonList_box">
                                            <div class="perisonList_step">
                                                <div class="perisonList_stepB">
                                                    <ul>
                                                        <li class="perisonList_stepB_1"></li>
                                                        <li class="perisonList_stepB_2"></li>
                                                        <li class="perisonList_stepB_3"></li>
                                                        <li class=""></li>
                                                    </ul>
                                                </div>
                                                <div class="perisonList_stepT">
                                                    <ul>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">1.</span><span>投资项目</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">2.</span><span>开始收息</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">3.</span><span>收回本金</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListSetpTitle">
                                                            <div><span class="f20px LineH18">4.</span><span>订单成功</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="marginT20">
                                            <div class="left marginL36 gray2"><span>年化利率：</span><span>14%</span></div>
                                            <div class="left marginL36 gray2"><span>项目转让：</span><span>30天后可转让</span></div>
                                            <div class="left marginL36 gray2"><span>已持有：</span><span>14天</span></div>
                                        </div>
                                        <div class="blank0"></div>
                                        <dl class="perisonListDl perisonListProject">
                                            <dt>
                                                <h2 class="f14px fB marginL34">项目信息</h2>
                                            </dt>
                                            <dd class="clearfix">
                                                <ul class="LiStyle LiStyle-first">
                                                    <li>项目名称：<span>香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</span></li>
                                                    <li>年化收益：<span>10.00%</span></li>
                                                    <li>还款方式：<span>到期还本付息 </span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-two">
                                                    <li>债务方：<span>HTDB141208411449（债务方编号）</span></li>
                                                    <li>保证方：<span>深圳国投商业保理有限公司</span></li>
                                                    <li>债权方：<span>（wangpan43）</span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-three">
                                                    <li>起息日期：2015-07-28</li>
                                                    <li>还款日期：2015-11-30</li>
                                                    <li>计息天数：125天</li>
                                                </ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="Title_personal personalArrowClose"></div>
                                </li>
                                <li>
                                    <div class="margin20 marginT10">
                                        <div class="left w260 marginR30">香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</div>
                                        <div class="left w120">
                                            <div style="margin-bottom:2px;"><span class="Perison_tou_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                            <div><span class="Perison_xi_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w180 marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB fB">6,328,589.00</span>/<span class="VAB">6,328,589.00</span></div>
                                            <div>
                                                <div class="votebox5">
                                                    <div class="f12px gray left LineH20">收息进度</div>
                                                    <dl class="barbox5">
                                                        <dd class="barline">
                                                            <div w="60" style="width:0px;" class="charts"></div>
                                                        </dd>
                                                        <dd class="last">60%</dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="left w120  marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB">99,328,589.00</span></div>
                                            <div><span class="Perison_ben_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w80 marginT10">
                                            <div><span class="">项目审核</span></div>
                                        </div>
                                        <div class="left w150 marginT8">
                                            <div class="left marginR10"><a href="javascript:;" class="btn6 btn-block btn-cta-primary">项目协议</a></div>
                                            <div class="left"><a href="javascript:;" class="btn6 btn-block btn-cta-PrimaryDisable">转让申请</a></div>
                                        </div>
                                    </div>
                                    <div class="blank0" style="border-top:1px solid #f4f4f4;"></div>
                                    <div style="display: none;" class="Title_personal_dteail">
                                        <div class="perisonList_box">
                                            <div class="perisonList_step">
                                                <div class="perisonList_stepB">
                                                    <ul>
                                                        <li class="perisonList_stepB_1"></li>
                                                        <li class="perisonList_stepB_2"></li>
                                                        <li class="perisonList_stepB_3"></li>
                                                        <li class=""></li>
                                                    </ul>
                                                </div>
                                                <div class="perisonList_stepT">
                                                    <ul>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">1.</span><span>投资项目</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">2.</span><span>开始收息</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">3.</span><span>收回本金</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListSetpTitle">
                                                            <div><span class="f20px LineH18">4.</span><span>订单成功</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="marginT20">
                                            <div class="left marginL36 gray2"><span>年化利率：</span><span>14%</span></div>
                                            <div class="left marginL36 gray2"><span>项目转让：</span><span>30天后可转让</span></div>
                                            <div class="left marginL36 gray2"><span>已持有：</span><span>14天</span></div>
                                        </div>
                                        <div class="blank0"></div>
                                        <dl class="perisonListDl perisonListProject">
                                            <dt>
                                                <h2 class="f14px fB marginL34">项目信息</h2>
                                            </dt>
                                            <dd class="clearfix">
                                                <ul class="LiStyle LiStyle-first">
                                                    <li>项目名称：<span>香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</span></li>
                                                    <li>年化收益：<span>10.00%</span></li>
                                                    <li>还款方式：<span>到期还本付息 </span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-two">
                                                    <li>债务方：<span>HTDB141208411449（债务方编号）</span></li>
                                                    <li>保证方：<span>深圳国投商业保理有限公司</span></li>
                                                    <li>债权方：<span>（wangpan43）</span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-three">
                                                    <li>起息日期：2015-07-28</li>
                                                    <li>还款日期：2015-11-30</li>
                                                    <li>计息天数：125天</li>
                                                </ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="Title_personal personalArrowClose"></div>
                                </li>
                                <li>
                                    <div class="margin20 marginT10">
                                        <div class="left w260 marginR30">香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</div>
                                        <div class="left w120">
                                            <div style="margin-bottom:2px;"><span class="Perison_tou_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                            <div><span class="Perison_xi_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w180 marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB fB">6,328,589.00</span>/<span class="VAB">6,328,589.00</span></div>
                                            <div>
                                                <div class="votebox5">
                                                    <div class="f12px gray left LineH20">收息进度</div>
                                                    <dl class="barbox5">
                                                        <dd class="barline">
                                                            <div w="60" style="width:0px;" class="charts"></div>
                                                        </dd>
                                                        <dd class="last">60%</dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="left w120  marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB">99,328,589.00</span></div>
                                            <div><span class="Perison_ben_Icon inline-block"></span><span class="VAB">2015-07-30</span></div>
                                        </div>
                                        <div class="left w80 marginT10">
                                            <div><span class="">项目审核</span></div>
                                        </div>
                                        <div class="left w150 marginT8">
                                            <div class="left marginR10"><a href="javascript:;" class="btn6 btn-block btn-cta-primary">项目协议</a></div>
                                            <div class="left"><a href="javascript:;" class="btn6 btn-block btn-cta-PrimaryDisable">转让申请</a></div>
                                        </div>
                                    </div>
                                    <div class="blank0" style="border-top:1px solid #f4f4f4;"></div>
                                    <div style="display: none;" class="Title_personal_dteail">
                                        <div class="perisonList_box">
                                            <div class="perisonList_step">
                                                <div class="perisonList_stepB">
                                                    <ul>
                                                        <li class="perisonList_stepB_1"></li>
                                                        <li class="perisonList_stepB_2"></li>
                                                        <li class="perisonList_stepB_3"></li>
                                                        <li class=""></li>
                                                    </ul>
                                                </div>
                                                <div class="perisonList_stepT">
                                                    <ul>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">1.</span><span>投资项目</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">2.</span><span>开始收息</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListTitleActive">
                                                            <div><span class="f20px LineH18">3.</span><span>收回本金</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                        <li class="perisonListSetpTitle">
                                                            <div><span class="f20px LineH18">4.</span><span>订单成功</span></div>
                                                            <div><span class="f12px fN LineH12">2015-08-31</span></div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="marginT20">
                                            <div class="left marginL36 gray2"><span>年化利率：</span><span>14%</span></div>
                                            <div class="left marginL36 gray2"><span>项目转让：</span><span>30天后可转让</span></div>
                                            <div class="left marginL36 gray2"><span>已持有：</span><span>14天</span></div>
                                        </div>
                                        <div class="blank0"></div>
                                        <dl class="perisonListDl perisonListProject">
                                            <dt>
                                                <h2 class="f14px fB marginL34">项目信息</h2>
                                            </dt>
                                            <dd class="clearfix">
                                                <ul class="LiStyle LiStyle-first">
                                                    <li>项目名称：<span>香港亿阳实业石油钻井工程施工服务应付账款转让项目（一期）</span></li>
                                                    <li>年化收益：<span>10.00%</span></li>
                                                    <li>还款方式：<span>到期还本付息 </span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-two">
                                                    <li>债务方：<span>HTDB141208411449（债务方编号）</span></li>
                                                    <li>保证方：<span>深圳国投商业保理有限公司</span></li>
                                                    <li>债权方：<span>（wangpan43）</span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-three">
                                                    <li>起息日期：2015-07-28</li>
                                                    <li>还款日期：2015-11-30</li>
                                                    <li>计息天数：125天</li>
                                                </ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="Title_personal personalArrowClose"></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--最近项目结束-->
                </div>
            </div>
            <div class="blank0"></div>
        </div>
        <%@include file="common/footer.jsp" %>
        <!-- 第三方开户 Modal -->
        <div class="modal modal-login in" id="account-modal" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="false" style="display: block;">
            <div class="modal-backdrop  in" style="height: 799px;"></div>
            <div class="modal-dialog" style="width:520px;">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    </div>
                    <div class="modal-body">
                        <div class="divider"><span class="f22px black">银行卡认证</span></div>
                        <div class="login-form-container">
                            <div class="ProductDetailForm clearfix">
                                <div style="margin-left: 120px; color:#e25353; line-height:16px;">请输入姓名</div>
                                <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4">*</span>姓名</span>
                                <div class="ProductDetailInput">
                                    <div class="ProductDetailAmount">
                                        <input type="text" value="快借宝" class="form-error" autocomplete="off" style="width:280px;">
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
                            <div style="margin-left:120px;"><a href="/qbank/shop/personal_bank!index.action" class="btn btn-cta btn-cta-primary" style="width:160px;">验证并绑定银行卡</a></div>
                            <div class="blank20"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
        <script type="text/javascript">
        var $ = jQuery.noConflict();

        $(document).ready(function() {
            $('div.Title_personal').click(function() {


                if ($(this).hasClass('personalArrowOpen')) {
                    //alert("1");
                    $('div.Title_personal_dteail').slideUp('normal');
                    $(this).removeClass('personalArrowOpen').addClass('personalArrowClose');
                } else {
                    //alert("2");
                    $('div.personalArrowOpen').removeClass('personalArrowOpen').addClass('personalArrowClose');
                    $(this).removeClass('personalArrowClose').addClass('personalArrowOpen');
                    $('div.Title_personal_dteail').slideUp('normal');
                    $(this).prev().slideDown('normal');
                }


            });
        });
        </script>
        <script>
			$("#6").addClass("active").siblings().removeClass("active");
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
</body>

</html>
