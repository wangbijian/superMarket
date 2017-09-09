package bean.employee;

public class Employee {
	private int number;
	private String name;
	private String sex;
	private String idCardNumber;
	private String inaugurationTime;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getIdCardNumber() {
		return idCardNumber;
	}
	public void setIdCardNumber(String idCardNumber) {
		this.idCardNumber = idCardNumber;
	}
	public String getInaugurationTime() {
		return inaugurationTime;
	}
	public void setInaugurationTime(String inaugurationTime) {
		this.inaugurationTime = inaugurationTime;
	}
}
