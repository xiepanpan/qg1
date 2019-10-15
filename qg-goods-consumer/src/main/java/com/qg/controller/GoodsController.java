package com.qg.controller;

import com.qg.dto.ReturnResult;
import com.qg.service.LocalGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author: xiepanpan
 * @Date: 2019/10/15
 * @Description:  商品控制层
 */
@RequestMapping("/api")
@Controller
public class GoodsController {

    @Autowired
    private LocalGoodsService localGoodsService;

    @RequestMapping(value = "/v/queryGoodsById",method = RequestMethod.POST)
    @ResponseBody
    public ReturnResult queryGoodsById(String id) throws Exception {
        return localGoodsService.queryGoodsById(id);
    }



}
