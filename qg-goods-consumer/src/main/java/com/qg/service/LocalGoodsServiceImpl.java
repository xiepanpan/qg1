package com.qg.service;

import com.alibaba.dubbo.config.annotation.Reference;
import com.qg.dto.ReturnResult;
import com.qg.dto.ReturnResultUtils;
import com.qg.pojo.QgGoods;
import com.qg.vo.GoodsVo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * @author: xiepanpan
 * @Date: 2019/10/15
 * @Description:
 */
@Component
public class LocalGoodsServiceImpl implements LocalGoodsService {

    @Reference
    private QgGoodsService qgGoodsService;
    @Reference
    private QgGoodsTempStockService qgGoodsTempStockService;

    @Override
    public ReturnResult queryGoodsById(String id) throws Exception {
        GoodsVo goodsVo = null;
        goodsVo = new GoodsVo();
        QgGoods qgGoods = qgGoodsService.getQgGoodsById(id);
        BeanUtils.copyProperties(qgGoods,goodsVo);

        //获取库存信息
        Map<String,Object> param = new HashMap<>();
        param.put("goodsId",id);
        param.put("active",1);
        Integer activeCount = qgGoodsTempStockService.getQgGoodsTempStockCountByMap(param);
        Integer currentCount = goodsVo.getStock() - activeCount;
        goodsVo.setCurrentStock(currentCount);

        return ReturnResultUtils.returnSuccess();
    }
}
