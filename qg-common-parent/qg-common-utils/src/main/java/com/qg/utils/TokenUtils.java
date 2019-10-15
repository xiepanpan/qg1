package com.qg.utils;

import java.text.ParseException;
import java.util.Date;

/**
 * @author: xiepanpan
 * @Date: 2019/10/3
 * @Description:
 */
public class TokenUtils {

    /**
     * 生成token
     * @return
     */
    public static String creatToken(String prefix,String tail) {
        String token = null;
        try {
            String timestamp = DateUtil.format(new Date(),"YYYY-MM-dd hh:mm:ss");
            String source = prefix+tail+timestamp;
            token = MD5.getMd5(source,16);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return token;
    }
}
