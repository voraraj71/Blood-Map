package VO;

public class RegOrgVO {
	private int regOrgId;
	private String orgname;
	private String contactno;
	private String address;
	private String email;
	private StateVO stateVO;
	private CityVO cityVO;
	private LoginVO loginvo;
	private float latitude;
	private float longitude;
	public int getRegOrgId() {
		return regOrgId;
	}
	public void setRegOrgId(int regOrgId) {
		this.regOrgId = regOrgId;
	}
	public String getOrgname() {
		return orgname;
	}
	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
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
	public LoginVO getLoginvo() {
		return loginvo;
	}
	public void setLoginvo(LoginVO loginvo) {
		this.loginvo = loginvo;
	}
	public float getLatitude() {
		return latitude;
	}
	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
	public float getLongitude() {
		return longitude;
	}
	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}
	
		
	}
