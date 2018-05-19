package com.athensoft.blog.entity;

public class PostContent {
	private Long globalId;
	private Long postUUID;
	private String postContent;
	private Integer postStatus;
	
	public Long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(Long globalId) {
		this.globalId = globalId;
	}
	public Integer getPostStatus() {
		return postStatus;
	}
	public void setPostStatus(Integer postStatus) {
		this.postStatus = postStatus;
	}
	public Long getPostUUID() {
		return postUUID;
	}
	public void setPostUUID(Long postUUID) {
		this.postUUID = postUUID;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	@Override
	public String toString() {
		return "PostContent [globalId=" + globalId + ", postUUID=" + postUUID + ", postContent=" + postContent
				+ ", postStatus=" + postStatus + "]";
	}
	
	
}
