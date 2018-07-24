package VO;

public class BloodtypeVO {
	private int bloodtypeId;
	private String bloodType;
	private String bloodtypeDescription;
	private BloodtypeVO bloodtypeVO;
	private String deleteStatus;
	
	public String getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public BloodtypeVO getBloodtypeVO() {
		return bloodtypeVO;
	}

	public void setBloodtypeVO(BloodtypeVO bloodtypeVO) {
		this.bloodtypeVO = bloodtypeVO;
	}

	public String getBloodType() {
		return bloodType;
	}

	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}

		public String getBloodtypeDescription() {
		return bloodtypeDescription;
	}

	public void setBloodtypeDescription(String bloodtypeDescription) {
		this.bloodtypeDescription = bloodtypeDescription;
	}

	public int getBloodtypeId() {
		return bloodtypeId;
	}

	public void setBloodtypeId(int bloodtypeId) {
		this.bloodtypeId = bloodtypeId;
	}

	
}
