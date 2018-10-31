<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <!-- Signup Modal -->
        <div class="modal modal-signup fade" id="signup-modal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="divider"><span>注册</span></div>
                        <div class="login-form-container">
                            <form>
                                <div class="form-group email">
                                    <label class="sr-only" for="login-email">手机号</label>
                                    <span class="form-control-error">手机号不能为空</span>
                                    <input id="login-email" name="login-email" type="Email" class="form-control form-control-error login-email-input" style="width:90%" placeholder="手机号">
                                </div>
                                <!--//form-group-->
                                <div class="form-group password">
                                    <label class="sr-only" for="login-password">验证码</label>
                                    <input id="login-password" name="login-password" type="password" class="form-control login-YZM-input" placeholder="验证码">
                                </div>
                                <!--//form-group-->
                                <div class="form-group password">
                                    <label class="sr-only" for="login-password">密码</label>
                                    <input id="login-password" name="login-password" type="password" class="form-control login-password-input" style="width:90%" placeholder="密码">
                                </div>
                                <!--//form-group-->
                                <a href="/qbank/shop/register_complete!index.action" class="btn btn-block btn-cta-primary" style="width:370px;">注册</a>
                                <div class="checkbox remember">
                                    <label>
                                        <input type="checkbox"> 我已阅读并同意
                                        <a href="/qbank/shop/use_terms!index.action" target="_blank" class="signup-information">《快借宝用户协议》</a> </label>
                                </div>
                                <!--//checkbox-->
                            </form>
                        </div>
                        <!--//login-form-container-->
                    </div>
                    <!--//modal-body-->
                    <div class="modal-footer">
                        <p>我已经有账号? <a class="login-link" id="login-link" href="/qbank/shop/login!index.action">登录</a></p>
                    </div>
                    <!--//modal-footer-->
                </div>
                <!--//modal-content-->
            </div>
            <!--//modal-dialog-->
        </div>