package VO;

public class ComplaintVO {
private int complaintId;
private String title;
private String complaint;
private String complaintDate;
private String complaintTime;
private String complaintStatus;
private LoginVO loginVOFrom;
private LoginVO loginVOTo;
private String reply;
public String getReply() {
	return reply;
}
public void setReply(String reply) {
	this.reply = reply;
}
public int getComplaintId() {
	return complaintId;
}
public void setComplaintId(int complaintId) {
	this.complaintId = complaintId;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getComplaint() {
	return complaint;
}
public void setComplaint(String complaint) {
	this.complaint = complaint;
}
public String getComplaintDate() {
	return complaintDate;
}
public void setComplaintDate(String complaintDate) {
	this.complaintDate = complaintDate;
}
public String getComplaintTime() {
	return complaintTime;
}
public void setComplaintTime(String complaintTime) {
	this.complaintTime = complaintTime;
}
public String getComplaintStatus() {
	return complaintStatus;
}
public void setComplaintStatus(String complaintStatus) {
	this.complaintStatus = complaintStatus;
}
public LoginVO getLoginVOFrom() {
	return loginVOFrom;
}
public void setLoginVOFrom(LoginVO loginVOFrom) {
	this.loginVOFrom = loginVOFrom;
}
public LoginVO getLoginVOTo() {
	return loginVOTo;
}
public void setLoginVOTo(LoginVO loginVOTo) {
	this.loginVOTo = loginVOTo;
}





}
