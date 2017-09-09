package dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bean.user.User;



@Repository
@Transactional
public class UserHandle {
	@Resource SessionFactory factory;
	public void addUser(User user){
		Session session = factory.getCurrentSession();
		session.save(user);
	}
	public boolean login(User user){
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from User u where u.name=:name and u.password=:password and u.type=:type");
		query.setParameter("name", user.getName());
		query.setParameter("password", user.getPassword());
		query.setParameter("type", user.getType());
		if (query.list().size()==1) {
			return true;
		}
		return false;
	}
	public List<User> findAllUsers(){
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from User");
		return query.list();
	}
	
	public int deleteUser(String name){
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("delete User u where u.name=:name");
		query.setParameter("name", name);
		int a = query.executeUpdate();
		return a;
	}
}
