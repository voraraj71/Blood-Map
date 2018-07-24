package VO;

public class BloodproofPhoto {

	private int fileID;
	private String fileName;
	private String encryptedFileName;
	private LoginVO loginVO;
	public int getFileID() {
		return fileID;
	}
	public void setFileID(int fileID) {
		this.fileID = fileID;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getEncryptedFileName() {
		return encryptedFileName;
	}
	public void setEncryptedFileName(String encryptedFileName) {
		this.encryptedFileName = encryptedFileName;
	}
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	
	
}
