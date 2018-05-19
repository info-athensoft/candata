package com.athensoft.blog.entity;

public class Topic {
	private Long 	globalId;
	private Integer langNo;
	private Integer	topicNo;
	private String	topicName;
	
	public Long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(Long globalId) {
		this.globalId = globalId;
	}
	public Integer getLangNo() {
		return langNo;
	}
	public void setLangNo(Integer langNo) {
		this.langNo = langNo;
	}
	public Integer getTopicNo() {
		return topicNo;
	}
	public void setTopicNo(Integer topicNo) {
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
		return "Topic [globalId=" + globalId + ", langNo=" + langNo + ", topicNo=" + topicNo + ", topicName="
				+ topicName + "]";
	}
	
}
