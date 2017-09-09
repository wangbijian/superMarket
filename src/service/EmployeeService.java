package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.EmployeeHandle;

import bean.employee.Employee;

@Service
public class EmployeeService {
	@Resource EmployeeHandle handle;
	public List<Employee> getEmployees(){
		return handle.findAllEmployees();
	}
	public void addEmployee(Employee employee){
		handle.addEmployee(employee);
	}
	public void deleteEmployee(Employee employee){
		handle.deleteEmployee(employee);
	}
	public void updataEmployee(Employee employee){
		handle.updataEmployee(employee);
	}
}
