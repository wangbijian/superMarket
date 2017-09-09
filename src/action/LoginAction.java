package action;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import bean.user.User;

import service.UserService;


@Controller @Scope("prototype")
public class LoginAction {
	@Resource UserService service;
	private User user;
	public String getMessage() {
		//return "登录成功！";
		return user.getName()+"登录成功！";
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String outLogin(){
		Map session = ActionContext.getContext().getSession();
		session.remove("username");
		session.remove("type");
		return "success";
	}
	public String execute(){
		String s = "";
		Map session = ActionContext.getContext().getSession();
		if (session.get("username")==null) {
			if (user!=null) {
				boolean b = service.loginService(user);
				if (b) {
					if ("管理员".equals(user.getType())) {
						System.out.println(ServletActionContext.getRequest().getSession().getAttribute("currentAction"));
						if (ActionContext.getContext().getSession().get("currentAction")!=null) {
							s = ActionContext.getContext().getSession().get("currentAction").toString();
						} else {
							s = "success_gl";
						}
					} else if ("普通员".equals(user.getType())) {
						s = "success_pt";
					}
					session.put("username", user.getName());
					session.put("type", user.getType());
					//ServletActionContext.getRequest().getSession().setAttribute("user", user.getName());
				} else {
					s = "fail";
				}
			} else {
				s = "forward";
				/*try {
					ServletActionContext.getRequest().getRequestDispatcher("index.jsp").forward(ServletActionContext.getRequest(), ServletActionContext.getResponse());
				} catch (Exception e) {
					e.printStackTrace();
				}*/
			}
		} else {
			if ("管理员".equals(session.get("type").toString())) {
				s = "success_gl";
			} else {
				s = "success_pt";
			}
		}
		return s;
	}
	/*@Resource UserService service;
	private String name;
	private String password;
	private String type;
	public String getMessage() {
		return name+"登录成功！";
	}
	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String execute(){
		String s = "";
		boolean b = service.loginService(new User(name, password, type));
		if (b) {
			s = "success";
		} else {
			s = "fail";
		}
		return s;
	}*/
}
