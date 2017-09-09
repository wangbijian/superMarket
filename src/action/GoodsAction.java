package action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import service.GoodsService;
import bean.goods.Goods;

import com.opensymphony.xwork2.ActionContext;

@Controller
public class GoodsAction {
	@Resource GoodsService service;
	private Goods goods;
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String deleteGoods(){
		service.deleteGoods(goods);
		return "success";
	}
	public String addGoods(){
		service.saveGoods(goods);
		return "success";
	}
	public String findAllGoods(){
		ActionContext.getContext().put("GoodsList", service.getAllGoods());
		return "success";
	}
}
