<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>我的安全设置_尚尚金服_您身边的金融服务管家</title>
    <meta name="Author" content="SHOP++ Team" />
    <meta name="Copyright" content="SHOP++" />
    <link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/global1.css" />
    <link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/style1.css" />
    <!--[if lte IE 6]>
  <script type="text/javascript" src="js/belatedPNG.js"></script>
  <script type="text/javascript">
    // 解决IE6透明PNG图片BUG
    DD_belatedPNG.fix(".belatedPNG");
  </script>
<![endif]-->
</head>

<body style="overflow-x: hidden;">
    <div class="header" style="height: 80px;">
        <div id="primary-navigation" class="nav nav-home nav-fixed" style="visibility: visible;">
           <%@include file="common/header1.jsp"%>
        </div>
    </div>
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z">
                <span class="marginR10">您所在的位置:</span>
                <a href="/">首页</a> <em class="marginL10 marginR10">>></em>
                <a href="/member/center/index.htm">个人中心</a>
            </div>
        </div>
        <div class="main">
            <div class="personal_info_banner">
                <div id="nav">
                    <%@include file="common/personal_nav.jsp" %>
                </div>
                <div class="blank0"></div>
                <div class="Safety">
                    <dl>
                        <dt>
                            <div class="left Icon16 marginT14 marginR10 verify"></div>
                            <div class="left w100 marginR10">用户名</div>
                            <div class="status0">${userName }</div>
                        </dt>
                        <dt>
                            <div class="left Icon16 marginT14 marginR10 verify"></div>
                            <div class="left w100 marginR10">手机认证</div>
                            <div class="status1">${phone }</div>
                            <div class="modify">修改</div>
                        </dt>
                        <dd>
                            <div class="marginB10">
                                <span style="margin-left:224px;" class="fB">验证身份</span>
                                <span style="margin-left:154px;" class="fB">验证新手机号码</span>
                                <span style="margin-left:144px;" class="fB">修改完成</span>
                            </div>
                            <ul class="Step">
                                <li class="stepCur">
                                    <span>1</span>
                                </li>
                                <li>
                                    <span>2</span>
                                </li>
                                <li>
                                    <span>3</span>
                                </li>
                                <div class="clearfix"></div>
                            </ul>
                            <!--Step/-->
                            <form class="sjyz-one">
                                <input type="hidden" name="id" value="00000000508a519f01508cdab3dc0007" />
                                <input type="hidden" name="type" value="phone1" />
                                <div class="left perisonDetail" style="margin-left:220px;">
                                    <ul>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">原手机号</span>
                                                <div class="left LineH30 f14px marginR10 w200 gray">${phone }</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">短信验证码</span>
                                                <div class="ProductDetailAmount" style="width:134px;">
                                                    <input type="text" name="code" class="{required:true}" autocomplete="off" style="width:134px;">
                                                </div>
                                                <div class="left LineH30">
                                                    <input name="codeBtn" type="button" class="btn3 btn-cta btn-cta-secondary" value="获取验证码" />
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">身份证号</span>
                                                <div class="ProductDetailAmount">
                                                    <input type="text" name="user.idNumber" class="{required:true}" autocomplete="off" style="width:218px;">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="blank10"></div>
                                    <div style="margin-left:140px;" class="left">
                                        <input type="submit" style="width:200px;" class="btn4 btn-block btn-cta-primary" value="下一步" />
                                    </div>
                                    <div class="left LineH40 marginL20">
                                        <a href="">取消</a>
                                    </div>
                                </div>
                            </form>
                            <form class="sjyz-two">
                                <input type="hidden" name="id" value="00000000508a519f01508cdab3dc0007" />
                                <input type="hidden" name="type" value="phone2" />
                                <div class="left perisonDetail" style="margin-left:220px;">
                                    <ul>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">新手机号码</span>
                                                <div class="ProductDetailAmount">
                                                    <input id="lastCode" type="text" name="user.phoneNumber" class="{required:true,mobile:true}" autocomplete="off" style="width:218px;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">短信验证码</span>
                                                <div class="ProductDetailAmount" style="width:134px;">
                                                    <input name="code2" type="text" class="{required:true}" autocomplete="off" style="width:134px;">
                                                </div>
                                                <div class="left LineH30">
                                                    <input name="codeBtn" tag="true" type="button" class="btn3 btn-cta btn-cta-secondary" value="获取验证码" />
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="blank10"></div>
                                    <div style="margin-left:140px;" class="left">
                                        <input type="submit" style="width:200px;" class="btn4 btn-block btn-cta-primary" value="下一步" />
                                    </div>
                                    <div class="left LineH40 marginL20">
                                        <a href="">取消</a>
                                    </div>
                                </div>
                            </form>
                            <form class="sjyz-ok">
                                <p class="f20px fB">
                                    <img src="images/Hook1.png" width="32" height="32" class="marginR20">恭喜您，完成手机号码修改，新绑定手机号码为：</p>
                                <div class="blank20"></div>
                                <p class="f12px fB">5秒后返回个人中心首页</p>
                                <div class="blank30"></div>
                            </form>
                            <div class="blank40"></div>
                            <div class="SSbank_note clearfix" style="width:760px; margin-left:140px;">
                                <span class="Note_title">温馨提示：</span>
                                <p>如果您绑定的手机因停机、注销、丢失等情况无法接收验证，请与尚尚客服联系：400-188-3375</p>
                            </div>
                        </dd>
                        <dt>
                            <div class="left Icon16 marginT14 marginR10 Unverify"></div>
                            <div class="left w100 marginR10">实名认证</div>
                            <div class="status2">
                                未设置&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="/shop/termsOfUse.htm" class="orange" target="_blank">《快借宝用户协议（出借人）》</a>
                            </div>
                            <div class="modify" data-toggle="modal" data-target="#authenticate-modal">添加</div>
                        </dt>
                        <dt>
                            <div class="left Icon16 marginT14 marginR10 Unverify"></div>
                            <div class="left w100 marginR10">邮箱验证</div>
                            <c:if test="${empty isEmail}">
                             <div class="status2">未设置</div>
                          	</c:if>
                            <c:if test="${not empty isEmail}">
                             <div class="status1">已设置</div>
                          	</c:if>
                            
                            <div class="modify">添加</div>
                        </dt>
                        <dd>
                            <form>
                                <input type="hidden" name="id" value="00000000508a519f01508cdab3dc0007" />
                                <input type="hidden" name="type" value="email" />
                                <div class="left perisonDetail marginL80">
                                    <ul>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">新邮箱地址</span>
                                                <div class="ProductDetailAmount">
                                                    <input name="member.email" type="text" class="{required:true,email:true}" autocomplete="off" style="width:218px;">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="blank10"></div>
                                    <div style="margin-left:140px;" class="left">
                                        <input type="submit" style="width:200px;" class="btn4 btn-block btn-cta-primary" value="发送验证邮件" />
                                    </div>
                                    <div class="left LineH40 marginL20">
                                        <a href="">取消</a>
                                    </div>
                                    <div class="blank40"></div>
                                    <div class="SSbank_note clearfix" style=" width:760px;">
                                        <span class="Note_title">温馨提示：</span>
                                        <p>1. 请填写真实有效的邮箱地址，您可通过邮箱进行找回密码等操作。</p>
                                        <p>2. 尚尚金服会对用户的所有资料进行严格保密。</p>
                                        <p>3. 邮箱验证过程遇到问题，请联系客服，400-188-3375</p>
                                    </div>
                                </div>
                                <div class="blank40"></div>
                            </form>
                        </dd>
                        <dt>
                            <div class="left Icon16 marginT14 marginR10 verify"></div>
                            <div class="left w100 marginR10">登录密码</div>
                            <div class="status1">已设置</div>
                            <div class="modify">修改</div>
                        </dt>
                        <dd>
                            <form class="xgmm">
                                <input type="hidden" name="id" value="00000000508a519f01508cdab3dc0007" />
                                <input type="hidden" name="type" value="password" />
                                <div class="left perisonDetail marginL80">
                                    <ul>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">原密码</span>
                                                <div class="ProductDetailAmount">
                                                    <input name="oldPassword" type="password" class="{required:true,minlength:6,maxlength:30}" autocomplete="off" style="width:218px;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">新密码</span>
                                                <div class="ProductDetailAmount">
                                                    <input id="pwd1" type="password" class="{required:true,minlength:6,maxlength:30,password:true}" autocomplete="off" style="width:218px;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <div class="left LineH30 f14px marginR10 w130 gray3 table-right">确认密码</div>
                                                <div class="ProductDetailAmount">
                                                    <input name="user.password" type="password" class="{required:true,equalTo:'#pwd1'}" autocomplete="off" style="width:218px;">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="blank10"></div>
                                    <div style="margin-left:140px;" class="left">
                                        <input type="submit" style="width:200px;" class="btn4 btn-block btn-cta-primary" value="确定" />
                                    </div>
                                    <div class="left LineH40 marginL20">
                                        <a href="">取消</a>
                                    </div>
                                    <div class="blank40"></div>
                                    <div class="SSbank_note clearfix" style=" width:760px;">
                                        <span class="Note_title">温馨提示：</span>
                                        <p>1. 请牢记您设置的新密码，登录密码可通过密码找回功能找回。</p>
                                    </div>
                                    <div class="blank40"></div>
                                </div>
                                <div class="blank0"></div>
                            </form>
                        </dd>
                        <dt>
                            <div class="left Icon16 marginT14 marginR10 Unverify"></div>
                            <div class="left w100 marginR10">支付密码</div>
                            <c:if test="${empty isCash}">
                             <div class="status2">未设置</div>
                          	</c:if>
                            <c:if test="${not empty isCash}">
                             <div class="status1">已设置</div>
                          	</c:if>
                            <div class="modify">添加</div>
                        </dt>
                        <dd>
                            <form>
                                <input type="hidden" name="id" value="" />
                                <input type="hidden" name="type" value="paypassword" />
                                <div class="left perisonDetail marginL80">
                                    <ul>
                                    	<li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">原支付密码</span>
                                                <div class="ProductDetailAmount">
                                                    <input name="oldPayPassword" type="password" class="{required:true,minlength:6,maxlength:6}" autocomplete="off" style="width:218px;" />
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <span class="left LineH30 f14px marginR10 w130 gray3 table-right">新支付密码</span>
                                                <div class="ProductDetailAmount">
                                                    <input id="payPwd1" type="password" class="{required:true,minlength:6,maxlength:6}" autocomplete="off" style="width:218px;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ProductDetailForm clearfix">
                                                <div class="left LineH30 f14px marginR10 w130 gray3 table-right">确认支付密码</div>
                                                <div class="ProductDetailAmount">
                                                    <input name="user.cashPassword" type="password" class="{required:true,equalTo:'#payPwd1'}" autocomplete="off" style="width:218px;">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="blank10"></div>
                                    <div style="margin-left:140px;" class="left">
                                        <input type="submit" style="width:200px;" class="btn4 btn-block btn-cta-primary" value="确定" />
                                    </div>
                                    <div class="left LineH40 marginL20">
                                        <a href="">取消</a>
                                    </div>
                                    <div class="left LineH40 marginL20">
                                        <a href="/member/center/findpaypassword/index.htm">忘记支付密码?</a>
                                    </div>
                                    <div class="blank40"></div>
                                    <div class="SSbank_note clearfix" style=" width:760px;">
                                        <span class="Note_title">温馨提示：</span>
                                        <p>1. 请牢记您设置的支付密码，支付密码将用于投资，提现等重要操作。</p>
                                    </div>
                                    <div class="blank40"></div>
                                </div>
                                <div class="blank0"></div>
                            </form>
                        </dd>
                    
                        
                </div>
                <!--Safety/-->
                <div class="blank0"></div>
            </div>
            <div class="blank0"></div>
        </div>
        <!-- 尾部开始 -->
      <%@include file="common/footer.jsp"%>
        <script>
        // var _hmt = _hmt || [];
        // (function() {
        //     var hm = document.createElement("script");
        //     hm.src = "//hm.baidu.com/hm.js?b555662db2a4042519bf19feca2abea4";
        //     var s = document.getElementsByTagName("script")[0];
        //     s.parentNode.insertBefore(hm, s);
        // })();
        </script>
     <!--    <script type="text/javascript">
        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cspan id='cnzz_stat_icon_1256691887'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1256691887%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODE1NTk4NV8zMzQ0MTRfNDAwMTg4MzM3NV8"></script> -->
        <!-- 实名认证提示 Modal -->
        <div class="modal modal-signup" id="authenticate-modal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel" aria-hidden="true">
            <div class="modal-backdrop in" style="height: 685px;"></div>
            <div class="modal-dialog" style="width:520px;">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    </div>
                    <div class="modal-body">
                        <div class="divider">
                            <span class="f22px black">实名认证提示</span>
                        </div>
                        <div class="login-form-container">
                            <div class=" marginL40 left marginR30">
                                <img src="images/Hook2.png" />
                            </div>
                            <div class="left f14px">
                                <p>修改实名认证需要联系客服</p>
                                <p>您可以联系 【在线客服】</p>
                                <p>或拨打：400-188-3375，联系客服修改</p>
                            </div>
                            <div class="blank40"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascript -->
        <script type="text/javascript" src="/qbank/template/shop/js/security/jquery.min.js"></script>
        <script type="text/javascript" src="/qbank/template/shop/js/security/bootstrap.min.js"></script>
        <script type="text/javascript" src="/qbank/template/shop/js/security/NavScroll.js"></script>
        <script type="text/javascript" src="/qbank/template/shop/js/security/jquery.SuperSlide.js"></script>
        <script type="text/javascript" src="/qbank/template/shop/js/security/jquery.validate.js"></script>
        <script type="text/javascript" src="/qbank/template/shop/js/security/jquery.metadata.js"></script>
        <script type="text/javascript" src="/qbank/template/shop/js/security/jquery.validate.methods.js"></script>
        <script type="text/javascript" src="/qbank/template/shop/js/security/jquery.validate.cn.js"></script>
        <script type="text/javascript" src="/qbank/template/shop/js/security/base.js"></script>
      
        <script type="text/javascript">
        function haha(){
        	if(seeMoney()){
        		return eyes.open();
        	}
        }
        $(function() {
                /*个人中心公共头部设置开始*/
                //设置选中的索引，每个页面只需要修改defaultIndex的值，下标从0开始
                $("#nav").slide({
                    defaultIndex: "4",
                    titCell: "#navs dt",
                    mainCell: "#menu"
                });
                $.each($("#menu li"), function(i, n) {
                    $(n).removeClass();
                })
                $("#9").attr("class", "active");
                /*个人中心公共头部设置结束*/

                //表单提交
                $.each($("form"), function(i, n) {
                    $(n).validate({
                        submitHandler: function(form) {
                            var $form = $(form),
                                data = $form.serialize();
                            var divs = $form.parent().prev().children();
                            var formCss = $form.attr("class");
                            if (formCss == "sjyz-one" || formCss == "sjyz-two") {
                                var codeValue = formCss == "sjyz-one" ? $("input[name=code]").val() : $("input[name=code2]").val();
                                var rs = false;
                                $.ajax({
                                    url: "/qbank/shop/member!checkCode.action",
                                    type: "post",
                                    async: false,
                                    cache: false,
                                    data: {
                                        "SmsCheckCode": codeValue
                                    },
                                    dataType: "text",
                                    success: function(d) {
                                        if (d == '1') {
                                            rs = true;
                                        }
                                    }
                                })
                                if (!rs) {
                                    alert("验证码错误！");
                                    return;
                                }
                            }
                            $.post("/qbank/shop/member!memberAjaxUpdate.action", data, function(response) {
                                if (response && response.status == "success") {
                                    if (formCss == "sjyz-one") {
                                        $form.next(".sjyz-two").show();
                                        $form.hide();
                                        $form.parents("dd").find(".Step li:eq(1)").addClass("stepCur");
                                        return;
                                    } else if (formCss == "sjyz-two") {
                                        var $showTag = $form.next(".sjyz-ok").children(":first");
                                        $showTag.empty();
                                        $showTag.append("<img src='images/Hook1.png' width='32' height='32' class='marginR20'>恭喜您，完成手机号码修改，新绑定手机号码为：" + response.message);
                                        $form.next(".sjyz-ok").show();
                                        $form.hide();
                                        $form.parents("dd").find(".Step li:eq(2)").addClass("stepCur");

                                        setTimeout('refresh()', 5000);
                                        return;
                                    } else if (formCss == "xgmm") {
                                        window.location.href = "/qbank/shop/login!index.action";
                                    }
                                    $form.parent().hide();
                                    $.each(divs, function(i, n) {
                                        if (i == 0) {
                                            $(n).attr("class", "left Icon16 marginT14 marginR10 verify");
                                        } else if (i == 2) {
                                            $(n).attr("class", "status1");
                                            $(n).text("已设置");
                                        } else if (i == 3) {
                                            $(n).text("修改");
                                        }
                                    })
                                } else if (response && response.status == "error") {
                                    alert(response.message);
                                } else {
                                    alert("系统出错，请联系管理员！");
                                }
                                form.reset(); //重置表单

                            }, "json");
                        },
                        errorPlacement: function(error, element) {
                            error.appendTo(element.parent().parent());
                        }
                    });
                })

                //获取手机验证码
                $("input[name='codeBtn']").click(function() {
                    var mobile = $(this).attr("tag") == "true" ? $("#lastCode").val() : "13296685643";
                    if (mobile) {
                        $.post("/shop/member!smsCode.action", {
                            "jbPhone": mobile
                        }, function(data) {
                            if (data == "1") {
                                alert("验证码发送成功！");
                            } else {
                                alert("验证码发送失败！");
                            }
                        }, "text");
                    } else {
                        alert("请输入有效手机号！");
                        $("#lastCode").focus();
                    }
                })
            })
            //刷新本页
        function refresh() {
            window.location.href = "/qbank/shop/member!safe.action";
        }
        </script>
    </div>
</body>

</html>
