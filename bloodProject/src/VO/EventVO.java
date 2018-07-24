package VO;

public class EventVO {
	private int eventId;
	private String address;
	private String eventName;
	private String eventDescription;
	private StateVO stateVO;
	private CityVO cityVO;
	private String eDate; 
	private String eTime;
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getEventDescription() {
		return eventDescription;
	}
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
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
	public String geteDate() {
		return eDate;
	}
	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	public String geteTime() {
		return eTime;
	}
	public void seteTime(String eTime) {
		this.eTime = eTime;
	}
			}
