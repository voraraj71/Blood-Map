package VO;

public class CityVO{
	private int cityId;
	private String cityName;
	private String cityDescription;
	private StateVO stateVO;
	private String deleteStatus;
	
	public String getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCityDescription() {
		return cityDescription;
	}
	public void setCityDescription(String cityDescription) {
		this.cityDescription = cityDescription;
	}
	public StateVO getStateVO() {
		return stateVO;
	}
	public void setStateVO(StateVO stateVO) {
		this.stateVO = stateVO;
	}

	
	
}
