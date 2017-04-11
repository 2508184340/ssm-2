package com.wxx.shop.service.impl;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import com.wxx.shop.cache.RedisUtil;
import com.wxx.shop.model.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wxx.shop.dao.GoodsDao;
import com.wxx.shop.service.GoodsService;
import org.springframework.util.StringUtils;

@Service
public class GoodsServiceImpl implements GoodsService {
	public static final String QUERY_GOODS_NAME_KEY_PREFIX = "query_goods_";
	@Autowired
	private GoodsDao goodsDao;
	@Autowired
	private RedisUtil redisUtil;

	@Override
	public List<Goods> queryPage(Goods condition) {
		
		List<Goods> list = goodsDao.queryPage(condition);
		return list;
	}

	@Override
	public List<String> queryByName(String goodsSearchName) {
		String result = (String)redisUtil.get(QUERY_GOODS_NAME_KEY_PREFIX + goodsSearchName);
		if (StringUtils.isEmpty(result)) {
			return Collections.EMPTY_LIST;
		}
		return Arrays.asList(result.split(","));
//		return goodsDao.queryByName(goodsSearchName);
	}
}
