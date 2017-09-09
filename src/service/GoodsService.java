package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.goods.Goods;

import dao.GoodsHandle;

@Service
public class GoodsService {
	@Resource GoodsHandle handle;
	public List<Goods> getAllGoods(){
		return handle.getAllGoods();
	}
	public void saveGoods(Goods goods){
		handle.addGoods(goods);
	}
	public void deleteGoods(Goods goods){
		handle.deleteGoods(goods);
	}
}
