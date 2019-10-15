package com.qg.dto;

import java.io.Serializable;

/**
 * @author: xiepanpan
 * @Date: 2019/10/3
 * @Description: 返回结果封装类
 */
public class ReturnResult<T> implements Serializable {

    /**
     * 状态码
     */
    private Integer code;

    /**
     * 提示信息
     */
    private String message;

    /**
     * 返回数据
     */
    private T data;

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

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
