package com.mmall.dao;

import com.mmall.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    /*================================分割线==================================*/

    //检查用户名是否存在
    int checkUsername(String username);

    //检查邮箱是否存在
    int checkEmail(String email);

    //用户登录
    User selectLogin(@Param("username") String username , @Param("password") String password);

    //选择用户的问题
    String selectQuestionByUsername(String username);

    //检查用户提交的问题的答案
    int checkAnswer(@Param("username")String username , @Param("question")String question , @Param("answer")String answer);

    //更新用户的密码
    int updatePasswordByUsername(@Param("username")String username , @Param("passwordNew")String passwordNew);

    //检查用户的原始密码
    int checkPassword(@Param("password")String password , @Param("userId")Integer userId);

    //检查用户的邮箱
    int checkEmailByUserId(@Param("email")String email , @Param("userId")Integer userId);
}