package action;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import service.UserService;

@Controller @Scope("prototype")
public class DeleteUserAction {
	@Resource UserService service;
	private String username;

	public void setUsername(String username) {
		this.username = username;
	}
	public String execute() throws UnsupportedEncodingException{
		username = new String (username.getBytes("ISO-8859-1"),"UTF-8");
		service.deleteUserByName(username);
		return "success";
	}
}
