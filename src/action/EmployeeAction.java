package action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.sun.org.apache.regexp.internal.recompile;

import service.EmployeeService;

import bean.employee.Employee;

@Controller @Scope("prototype")
public class EmployeeAction {
	@Resource EmployeeService service;
	private Employee employee;
	
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String addEmployee(){
		service.addEmployee(employee);
		return "success";
	}
	public String deleteEmployee(){
		service.deleteEmployee(employee);
		return "success";
	}
	public String updata(){
		service.updataEmployee(employee);
		return "success";
	}
}
