package VO;

public class FileVO {
	private int fileID;
	private String fileName;
	private String encryptedFileName;
	private RegVO regvo;
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
	public RegVO getRegvo() {
		return regvo;
	}
	public void setRegvo(RegVO regvo) {
		this.regvo = regvo;
	}
		
	

}
