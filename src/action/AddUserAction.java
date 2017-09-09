package action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import bean.user.User;

import service.UserService;


@Controller @Scope("prototype")
public class AddUserAction {
	@Resource UserService service;
	private User user;
	public String getMessage() {
		return user.getName()+"��ϲ��ע��ɹ���";
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String execute(){
		if (user==null) {
			return "error";
		}
		service.addUserService(user);
		return "success";
	}
}
