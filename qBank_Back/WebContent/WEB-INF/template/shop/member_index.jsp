<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="com.qbank.entity.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="快借宝，快借宝网站,理财,贷款"/>
    <meta name="description" content="网络银行、在线理财"/>
    <title>个人中心首页</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<% 
	List<ProjectRecord> projectRecordList = (List)request.getAttribute("projectRecordList");
	List<Project>  projectList = (List) request.getAttribute("projectList");
	List<User> userList = (List)request.getAttribute("userList");
	int i = 0;
	
	
%>
<%!
	
	public Long getTimeLong(Date d1, Date d2){
	   	long diff = d1.getTime() - d2.getTime();
	    /* long days = diff / (1000 * 60 * 60 * 24); */
		return diff;
	}
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
                    <!--   个人信息开始  -->
                    <div class="" style="height:180px;padding:50px 20px 0px 20px;">
                        <div class="left perisonDetail" style="width:400px;">
                            <div class="left perinforphoto"><img src="images/photo_64.png" width="64px" height="64px;" /></div>
                            <div class="left perisonDetail">
                                <ul>
                                    <li>
                                        <p class="f18px" style="width:200px"><span>您好！</span><span class="f18px fB gray">${user.name}</span></p>
                                    </li>
                                    <li>
                                        <p><span class="gray">会员等级：</span><span class="gray">${grade.name}</span></p>
                                    </li>
                                    <li>
                                        <p><span class="PerisonIcon01 inline-block informationMark btn-hover-info add-tooltip" data-placement="bottom" data-toggle="tooltip" data-original-title="个人信息"></span><span class="PerisonIcon02 inline-block informationMark btn-hover-info add-tooltip" data-placement="bottom" data-toggle="tooltip" data-original-title="手机"></span><span class="PerisonIcon03 inline-block informationMark btn-hover-info add-tooltip" data-placement="bottom" data-toggle="tooltip" data-original-title="个人信息"></span><span class="PerisonIcon04_none inline-block informationMark btn-hover-info add-tooltip" data-placement="bottom" data-toggle="tooltip" data-original-title="安全信息"></span></p>
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
                                        <div class="left marginR10"><a href="/qbank/shop/member!toRecharge.action" class="btn5 btn-block btn-cta-primary">充值</a></div>
                                        <div class="left"><a href="/qbank/shop/member!toCash.action" class="btn5 btn-block btn-cta-PrimaryDisable">提现</a></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="blank10"></div>
                                    <div><span class="marginR4 f26px fB gray">${account.amount }</span><span class="f12px gray">元</span></div>
                                </li>
                          <!--       <li>
                                    <div><span class="marginR25 gray">我的红包</span><span><a href="javascript:;" class=" gray">100.00元</a></span></div>
                                </li> -->
                            	<li>
              						<div><span class="gray">冻结资金</span><span class="informationMark btn-hover-info add-tooltip" data-placement="right" data-toggle="tooltip" data-original-title="冻结资金"></span><span class="marginL10 gray">${account.frozenAmount }元</span></div>
            					</li>
                                <li>
                                    <div><span class="gray">资产总计</span><span class="informationMark btn-hover-info add-tooltip" data-placement="right" data-toggle="tooltip" data-original-title="资产总计"></span><span class="marginL10 gray">${account.totalAmount }元</span></div>
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
                                    <div><span class="marginR4 f26px fB gray">${accountProfitAmount }</span><span class="f12px gray">元</span></div>
                                </li>
                                <li>
                                    <div><span class="gray">累计投资</span><span class="marginL10 gray">${accountProjectAmount }元</span></div>
                                </li>
                                <li>
                                    <div><span class="gray">待收收益</span><span class="marginL10 gray">${accountProfitAmount_1 }元</span></div>
                                </li>
                                <li>
                                    <!-- <div><span class="gray">待收本金</span><span class="marginL10 gray">129638.00元</span></div> -->
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
                                    <div><span class="marginR4 f26px fB gray">0.00</span><span class="f12px gray">元</span></div>
                                    <div class="blank20"></div>
                                </li>
                                <li>
                                    <div class="left marginR20 w120 BorderRight">
                                        <div class="gray">昨日收益</div>
                                        <div class="gray">7.00元</div>
                                    </div>
                                    <div class="left marginR20 w120 BorderRight">
                                        <div class="gray">投资总额</div>
                                        <div class="gray">2300.00元</div>
                                    </div>
                                    <div class="left marginR20 w80">
                                        <div class="gray">平均年化</div>
                                        <div class="gray">18.9%</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="left perisonDetail" style=" width:480px;">
                            <!-- <ul>
                                <li>
                                    <div class="gray">近7日收益变化</div>
                                </li>
                                <li>
                                    <div id="main" style="height:200px; margin:0px; padding:0px;"></div>
                                </li>
                            </ul> -->
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
                            <c:forEach items="${projectList}" var="project" varStatus="vs">
                            <%
                            	int state = 0;
                            	if(getTimeLong(new java.util.Date(),projectList.get(i).getStartTime())>0){
                            		state = 1;
                            	}
                            	if(getTimeLong(new java.util.Date(), projectRecordList.get(i).getInvestTime())>0){
                            		state = 2;
                            	}
                            	if(getTimeLong(new java.util.Date(), projectList.get(i).getEndTime()) >0){
                            		state = 4;
                            	}
                            %>
                                <li>
                                    <div class="margin20 marginT10">
                                        <div class="left w260 marginR30">${project.projectName }</div>
                                        <div class="left w120">
                                            <div style="margin-bottom:2px;"><span class="Perison_tou_Icon inline-block informationMark btn-hover-info add-tooltip" data-placement="bottom" data-toggle="tooltip" data-original-title="投资日期"></span><span class="VAB"><%=projectRecordList.get(i).getInvestTime() %></span></div>
                                            <div><span class="Perison_xi_Icon inline-block informationMark btn-hover-info add-tooltip" data-placement="bottom" data-toggle="tooltip" data-original-title="计息日期"></span><span class="VAB"><%=projectRecordList.get(i).getInvestTime() %></span></div>
                                        </div>
                                        <div class="left w180 marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB fB">6,328,589.00</span>/<span class="VAB">6,328,589.00</span></div>
                                            <div>
                                                <div class="votebox5">
                                                    <div class="f12px gray left LineH20">收息进度</div>
                                                    <dl class="barbox5">
                                                        <dd class="barline">
                                                            <div w="0" style="width:0px;" class="charts"></div>
                                                        </dd>
                                                        <dd class="last">0%</dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="left w120  marginR10">
                                            <div style="margin-bottom:2px;"><span class="VAB"><%=projectRecordList.get(i).getIncestAmount() %>元</span></div>
                                            <div><span class="Perison_ben_Icon inline-block informationMark btn-hover-info add-tooltip" data-placement="right" data-toggle="tooltip" data-original-title="还本日期"></span><span class="VAB">${project.startTime }</span></div>
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
                                               	        <%if(state>0) {%>
                                                        <li class="perisonList_stepB_1">&nbsp;</li>
                                                        <%}else{ %>
                                                        <li class="">&nbsp;</li>
                                                        <%} %>
                                                        <% if(state>1) {%>
                                                        <li class="perisonList_stepB_2">&nbsp;</li>
                                                        <%}else{ %>
                                                        <li class="">&nbsp;</li>
                                                        <%} %>
                                                        <% if(state>2){%>
                                                        <li class="perisonList_stepB_3">&nbsp;</li>
                                                        <li class="perisonList_stepB_4">&nbsp;</li>
                                                        <%}else{ %>
                                                        <li class="">&nbsp;</li>
                                                        <li class="">&nbsp;</li>
                                                        <%} %>

                                                    </ul>
                                                </div>
                                                <div class="perisonList_stepT">
                                                    <ul>
                                                        
                                                        <% if(state>0) {%>
                                                        <li class="perisonListTitleActive" >
                                                        <%}else{ %>
                                                        <li class="perisonListSetpTitle" >
                                                        <%} %>
                                                            <div><span class="f20px LineH18">1.</span><span>项目开始</span></div>
                                                            <div><span class="f12px fN LineH12">${project.startTime }</span></div>
                                                        </li>
                                                        <% if(state>1) {%>
                                                        <li class="perisonListTitleActive" >
                                                        <%}else{ %>
                                                        <li class="perisonListSetpTitle" >
                                                        <%} %>
                                                            <div><span class="f20px LineH18">2.</span><span>投资日期</span></div>
                                                            <div><span class="f12px fN LineH12"><%=projectRecordList.get(i).getInvestTime() %></span></div>
                                                        </li>
                                                        <% if(state>2){%>
                                                        <li class="perisonListTitleActive" >
                                                        <%}else{ %>
                                                        <li class="perisonListSetpTitle" >
                                                        <%} %>
                                                            <div><span class="f20px LineH18">3.</span><span>收回本金</span></div>
                                                            <div><span class="f12px fN LineH12">${project.endTime}</span></div>
                                                        </li>
	        											<% if(state>2){%>
                                                        <li class="perisonListTitleActive" >
                                                        <%}else{ %>
                                                        <li class="perisonListSetpTitle" >
                                                        <%} %>
                                                            <div><span class="f20px LineH18">4.</span><span>项目结束</span></div>
                                                            <div><span class="f12px fN LineH12">${project.endTime}</span></div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="marginT20">
                                            <div class="left marginL36 gray2"><span>年化利率：</span><span>
                                       	               	<c:forEach items="${ratesList}" var="rates" varStatus="vs"> 
															<c:if test="${project.projectRate==rates.rateCode}">${rates.rateAmount}%</c:if>
														</c:forEach>  
                                            </span></div>
                                            <div class="left marginL36 gray2"><span>项目转让：</span><span><%=30-getTimeLong(new Date(),projectRecordList.get(i).getInvestTime())/(1000*60*60*24) %>天后可转让</span></div>
                                            <div class="left marginL36 gray2"><span>已持有：</span><span><%=getTimeLong(new Date(),projectRecordList.get(i).getInvestTime())/(1000*60*60*24) %>天</span></div>
                                        </div>
                                        <div class="blank0"></div>
                                        <dl class="perisonListDl perisonListProject">
                                            <dt>
                                                <h2 class="f14px fB marginL34">项目信息</h2>
                                            </dt>
                                            <dd class="clearfix">
                                                <ul class="LiStyle LiStyle-first">
                                                    <li>项目名称：<span>${project.projectName }</span></li>
                                                    <li>年化收益：<span>
                                                    	<c:forEach items="${ratesList}" var="rates" varStatus="vs"> 
															<c:if test="${project.projectRate==rates.rateCode}">${rates.rateAmount}%</c:if>
														</c:forEach>  
                                                    </span></li>
                                                    <li>还款方式：<span>${hkfs[project.repayType].dicName} </span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-two">
                                                    <li>债务方：<span>${user.name}债务方编号）</span></li>
                                                    <li>保证方：<span>快借宝官方</span></li>
                                                    <li>债权方：<span>${user.name}</span></li>
                                                </ul>
                                                <ul class="LiStyle LiStyle-three">
                                                    <li>起息日期：<%=projectRecordList.get(i).getInvestTime() %></li>
                                                    <li>还款日期：2015-11-30</li>
                                                    <li>计息天数：<%=getTimeLong(new Date(),projectRecordList.get(i).getInvestTime())/(1000*60*60*24) %>天</li>
                                                </ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="Title_personal personalArrowOpen"></div>
                                </li>
                                <% i++; %>
                                </c:forEach>
                                
<!--                                 <li>
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
                                </li> -->
                                
                            </ul>
                        </div>
                    </div>
                    <!--最近项目结束-->
                </div>
            </div>
            <div class="blank0"></div>
        </div>
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
            defaultIndex: "0",
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
			$("#1").addClass("active").siblings().removeClass("active");
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
</body>

</html>
