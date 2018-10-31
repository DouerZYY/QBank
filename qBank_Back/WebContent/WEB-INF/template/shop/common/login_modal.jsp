<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- Login Modal -->
        <div class="modal modal-login fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="divider"><span>登录</span></div>
                        <div class="login-form-container">
                            <form class="login-form">
                                <div class="form-group email">
                                    <label class="sr-only" for="login-email">手机号</label>
                                    <input id="login-email" name="login-email" type="Email" class="form-control login-email-input" style="width:90%" placeholder="手机号">
                                </div>
                                <!--//form-group-->
                                <div class="form-group password">
                                    <label class="sr-only" for="login-password">密码</label>
                                    <input id="login-password" name="login-password" type="password" class="form-control login-password-input" style="width:90%" placeholder="密码">
                                </div>
                                <!--//form-group-->
                                <div class="checkbox remember left">
                                    <label>
                                        <input type="checkbox"> 记住密码 </label>
                                </div>
                                <!--//checkbox-->
                                <div class="forgot-password right"> <a href="/qbank/shop/forgot_password_step1!index.action">忘记密码？</a> </div>
                                <button type="submit" class="btn btn-block btn-cta-primary">登录</button>
                            </form>
                        </div>
                        <!--//login-form-container-->
                    </div>
                    <!--//modal-body-->
                    <div class="modal-footer">
                        <p>新用户? <a class="signup-link" id="signup-link" href="/qbank/shop/register!index.action">马上注册</a></p>
                    </div>
                    <!--//modal-footer-->
                </div>
                <!--//modal-content-->
            </div>
            <!--//modal-dialog-->
        </div>
        <!--//modal-->