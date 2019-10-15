package com.qg.interceptor;

import com.alibaba.fastjson.JSONObject;
import com.qg.dto.ReturnResult;
import com.qg.dto.ReturnResultUtils;
import com.qg.exception.CommonException;
import com.qg.utils.EmptyUtils;
import com.qg.utils.PrintUtil;
import com.qg.utils.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author: xiepanpan
 * @Date: 2019/10/4
 * @Description: 异常拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {

    @Autowired
    private RedisUtil redisUtil;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        response.setHeader("Access-Control-Allow-Origin","*");
        String token = request.getParameter("token");
        PrintUtil printUtil = null;
        String qgUserJson = null;
        ReturnResult returnResult = null;
        //判断是否有token参数
        if (EmptyUtils.isEmpty(token)) {
            returnResult = ReturnResultUtils.returnFail(CommonException.USER_NO_LOGIN.getCode(),CommonException.USER_NO_LOGIN.getMessage());
        }else {
            qgUserJson = redisUtil.getStr(token);
        }
        //判断token值是否有效
        qgUserJson = redisUtil.getStr(token);
        if (EmptyUtils.isEmpty(qgUserJson)) {
            returnResult = ReturnResultUtils.returnFail(CommonException.USER_NO_LOGIN.getCode(),CommonException.USER_NO_LOGIN.getMessage());
        }
        if (EmptyUtils.isNotEmpty(returnResult)) {
            printUtil = new PrintUtil(response);
            printUtil.print(JSONObject.toJSON(returnResult));
            return false;
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {

    }
}
