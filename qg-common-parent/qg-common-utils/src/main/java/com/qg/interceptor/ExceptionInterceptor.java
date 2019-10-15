package com.qg.interceptor;

import com.alibaba.fastjson.JSONObject;
import com.qg.dto.ReturnResult;
import com.qg.dto.ReturnResultUtils;
import com.qg.exception.CommonException;
import com.qg.utils.EmptyUtils;
import com.qg.utils.PrintUtil;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author: xiepanpan
 * @Date: 2019/10/4
 * @Description: 异常拦截器
 */
public class ExceptionInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse response, Object o) throws Exception {
        response.setHeader("Access-Control-Allow-Origin","*");
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {
        //出现异常进行处理
        ReturnResult returnResult = null;
        if (EmptyUtils.isNotEmpty(e)) {
            response.setContentType("text/html;charset=UTF-8");
            returnResult = ReturnResultUtils.returnFail(CommonException.SYSTEM_EXCEPTION.getCode(),CommonException.SYSTEM_EXCEPTION.getMessage());
            PrintUtil printUtil = new PrintUtil(response);
            printUtil.print(JSONObject.toJSON(returnResult));
        }
    }
}
