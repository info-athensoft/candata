package com.athensoft.blog.entity;

public class Channel {
	private Long 	globalId;
	private Integer langNo;
	private Integer	channelNo;
	private String	channelName;
	
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
	public Integer getChannelNo() {
		return channelNo;
	}
	public void setChannelNo(Integer channelNo) {
		this.channelNo = channelNo;
	}
	public String getChannelName() {
		return channelName;
	}
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
	@Override
	public String toString() {
		return "Channel [globalId=" + globalId + ", langNo=" + langNo + ", channelNo=" + channelNo + ", channelName="
				+ channelName + "]";
	}
}
