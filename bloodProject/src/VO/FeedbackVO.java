package VO;

public class FeedbackVO {
	private int feedbackId;
	private String title;
	private String feedback;
	private String feedbackDate;
	private String feedbackTime;
	private LoginVO loginVOFrom;
	public int getFeedbackId() {
		return feedbackId;
	}
	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getFeedbackDate() {
		return feedbackDate;
	}
	public void setFeedbackDate(String feedbackDate) {
		this.feedbackDate = feedbackDate;
	}
	public String getFeedbackTime() {
		return feedbackTime;
	}
	public void setFeedbackTime(String feedbackTime) {
		this.feedbackTime = feedbackTime;
	}
	public LoginVO getLoginVOFrom() {
		return loginVOFrom;
	}
	public void setLoginVOFrom(LoginVO loginVOFrom) {
		this.loginVOFrom = loginVOFrom;
	}
		}
