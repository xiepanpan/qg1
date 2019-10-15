package com.qg.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: xiepanpan
 * @Date: 2019/10/15
 * @Description: 商品+库存 VO
 */
@Data
public class GoodsVo implements Serializable {
    //主键
    private String id;
    //商品图片
    private String goodsImg;
    //商品名称
    private String goodsName;
    //商品单价
    private Double price;
    //原始库存
    private Integer stock;

    /**
     * 当前库存
     */
    private Integer currentStock;
}
