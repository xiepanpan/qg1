package com.qg.service;

import com.qg.dto.ReturnResult;

/**
 * @author: xiepanpan
 * @Date: 2019/10/15
 * @Description:
 */
public interface LocalGoodsService {

    public ReturnResult queryGoodsById(String id) throws Exception;
}
