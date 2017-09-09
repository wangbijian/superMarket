package action;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import service.EmployeeService;
import service.UserService;

import bean.employee.Employee;
import bean.user.User;

import com.opensymphony.xwork2.ActionContext;

@Controller @Scope("prototype")
public class ManageAction {
	@Resource UserService service;
	@Resource EmployeeService employeeService;
	private String action;
	public void setAction(String action) {
		this.action = action;
	}
	public String execute(){
		Map session = ActionContext.getContext().getSession();
		if (session.get("username")!=null) {
			if ("π‹¿Ì‘±".equals(session.get("type").toString())) {
				if ("user".equals(action)) {
					ActionContext.getContext().put("userList", service.findAllUsers());
				} else if ("stock".equals(action)) {
					
				} else if ("employee".equals(action)) {
					ActionContext.getContext().put("employeeList", employeeService.getEmployees());
				}
				return action;
			} else {
				return "permission";
			}
		} else {
			return "error";
		}
	}
}
