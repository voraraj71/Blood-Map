package VO;

public class RegVO {
	
	LoginVO loginvo=new LoginVO();
	private int regId;
	private String firstname;
	private String lastname;
	private String gender;
	private String contactno;
	private String dob;
	private String address;
	private String email;
	private StateVO stateVO;
	private CityVO cityVO;
	private BloodtypeVO bloodtypeVO;
	
	public LoginVO getLoginvo() {
		return loginvo;
	}
	public void setLoginvo(LoginVO loginvo) {
		this.loginvo = loginvo;
	}
	public int getRegId() {
		return regId;
	}
	public void setRegId(int regId) {
		this.regId = regId;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public StateVO getStateVO() {
		return stateVO;
	}
	public void setStateVO(StateVO stateVO) {
		this.stateVO = stateVO;
	}
	public CityVO getCityVO() {
		return cityVO;
	}
	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}
	public BloodtypeVO getBloodtypeVO() {
		return bloodtypeVO;
	}
	public void setBloodtypeVO(BloodtypeVO bloodtypeVO) {
		this.bloodtypeVO = bloodtypeVO;
	}
	}
