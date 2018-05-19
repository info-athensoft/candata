package com.athensoft.blog.entity;

public class PostTopic {
	private String topicNo;
	private String topicName;
	public String getTopicNo() {
		return topicNo;
	}
	public void setTopicNo(String topicNo) {
		this.topicNo = topicNo;
	}
	public String getTopicName() {
		return topicName;
	}
	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	@Override
	public String toString() {
		return "PostTopic [topicNo=" + topicNo + ", topicName=" + topicName + "]";
	}
	
}
