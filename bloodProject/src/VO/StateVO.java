package VO;
public class StateVO {
private int stateId;
private String stateName;
private String stateDescription;
private String deleteStatus;
public String getDeleteStatus() {
	return deleteStatus;
}
public void setDeleteStatus(String deleteStatus) {
	this.deleteStatus = deleteStatus;
}
public String getStateDescription() {
	return stateDescription;
}
public void setStateDescription(String stateDescription) {
	this.stateDescription = stateDescription;
}

public int getStateId() {
	return stateId;
}
public void setStateId(int stateId) {
	this.stateId = stateId;
}
public String getStateName() {
	return stateName;
}
public void setStateName(String stateName) {
	this.stateName = stateName;
}
	

}
