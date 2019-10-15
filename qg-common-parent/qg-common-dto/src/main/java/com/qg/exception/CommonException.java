package com.qg.exception;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

/**
 * @author: xiepanpan
 * @Date: 2019/10/3
 * @Description: 通用异常定义类
 */
public enum  CommonException {

    SYSTEM_EXCEPTION(-1,"系統忙，請稍後重試"),
    USER_NO_LOGIN(1,"用户登录超时");

    private Integer code;
    private String message;

    CommonException(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }


}
