package VO;

public class RequestUserVO {
	
	
	private int requestId;
	private LoginVO fromUser;
	private LoginVO toUser;
	private String deleteStatus;
	private String userRequestStatus;
	
	public String getUserRequestStatus() {
		return userRequestStatus;
	}
	public void setUserRequestStatus(String userRequestStatus) {
		this.userRequestStatus = userRequestStatus;
	}
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	public LoginVO getFromUser() {
		return fromUser;
	}
	public void setFromUser(LoginVO fromUser) {
		this.fromUser = fromUser;
	}
	public LoginVO getToUser() {
		return toUser;
	}
	public void setToUser(LoginVO toUser) {
		this.toUser = toUser;
	}
	public String getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	

}
