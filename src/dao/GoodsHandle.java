package dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bean.goods.Goods;

@Repository
@Transactional
public class GoodsHandle {
	@Resource SessionFactory factory;
	public List<Goods> getAllGoods(){
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from Goods");
		return query.list();
	}
	public void addGoods(Goods goods){
		Session session = factory.getCurrentSession();
		session.save(goods);
	}
	public void deleteGoods(Goods goods){
		Session session = factory.getCurrentSession();
		session.delete(goods);
	}
}
