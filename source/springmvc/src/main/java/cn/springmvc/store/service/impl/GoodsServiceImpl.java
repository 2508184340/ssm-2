package cn.springmvc.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.springmvc.store.cache.GoodsRedisDao;
import cn.springmvc.store.dao.GoodsDao;
import cn.springmvc.store.model.Goods;
import cn.springmvc.store.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	private GoodsDao goodsDao;
	
	@Autowired
	private GoodsRedisDao goodsRedisDao;
	
	@Override
	public List<Goods> queryPage(Goods condition) {
		Goods goods = new Goods();
		goods.setGoodsName("dd");
		goodsRedisDao.insert(goods);
		
		List<Goods> list = goodsDao.queryPage(condition);
		return list;
	}
}
