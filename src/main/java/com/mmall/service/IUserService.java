package com.mmall.service;

import com.mmall.common.ServerResponse;
import com.mmall.pojo.User;

public interface IUserService {

    //用户登录
    ServerResponse<User> login(String username , String password);

    //用户注册
    ServerResponse<String> register(User user);

    //检查用户字段的合法性
    ServerResponse<String> checkValid(String str , String type);

    //修改密码时选择问题
    ServerResponse selectQuestion(String username);

    //检查问题的答案
    ServerResponse<String> checkAnswer(String username , String question , String answer);

    //忘记密码时重置密码
    ServerResponse<String> forgetResetPassword(String username , String passwordNew , String forgetToken);

    //用户在登录状态下修改密码
    ServerResponse<String> resetPassword(User user , String passwordOld , String passwordNew);

    //更新个人信息
    ServerResponse<User> updateInformation(User user);

    //获取用户个人信息
    ServerResponse<User> getInformation(Integer userId);
}
