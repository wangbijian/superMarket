package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.user.User;



import dao.UserHandle;

@Service
public class UserService {
	@Resource UserHandle handle;
	public boolean loginService(User user) {
		return handle.login(user);
	}
	public void addUserService(User user) {
		handle.addUser(user);
	}
	public List<User> findAllUsers(){
		return handle.findAllUsers();
	}
	public int deleteUserByName(String name){
		return handle.deleteUser(name);
	}
}
