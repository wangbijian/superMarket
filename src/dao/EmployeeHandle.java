package dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bean.employee.Employee;

@Repository
@Transactional
public class EmployeeHandle {
	@Resource SessionFactory factory;
	public List<Employee> findAllEmployees(){
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from Employee");
		return query.list();
	}
	public void addEmployee(Employee employee){
		Session session = factory.getCurrentSession();
		session.save(employee);
	}
	public void deleteEmployee(Employee employee){
		Session session = factory.getCurrentSession();
		session.delete(employee);
	}
	public void updataEmployee(Employee employee){
		Session session = factory.getCurrentSession();
		Employee temp = (Employee)session.load(Employee.class, employee.getNumber());
		temp.setIdCardNumber(employee.getIdCardNumber());
		temp.setInaugurationTime(employee.getInaugurationTime());
		temp.setName(employee.getName());
		temp.setSex(employee.getSex());
	}
}
