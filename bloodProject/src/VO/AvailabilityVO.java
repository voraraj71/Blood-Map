package VO;

public class AvailabilityVO {
private int availabilityId;
private String amount;
private BloodtypeVO bloodtypeVO;
private LoginVO loginvo;
public int getAvailabilityId() {
	return availabilityId;
}
public void setAvailabilityId(int availabilityId) {
	this.availabilityId = availabilityId;
}
public String getAmount() {
	return amount;
}
public void setAmount(String amount) {
	this.amount = amount;
}
public BloodtypeVO getBloodtypeVO() {
	return bloodtypeVO;
}
public void setBloodtypeVO(BloodtypeVO bloodtypeVO) {
	this.bloodtypeVO = bloodtypeVO;
}
public LoginVO getLoginvo() {
	return loginvo;
}
public void setLoginvo(LoginVO loginvo) {
	this.loginvo = loginvo;
}
	
}
