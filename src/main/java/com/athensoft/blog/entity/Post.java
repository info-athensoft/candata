package com.athensoft.blog.entity;

import java.util.Date;

public class Post {
	private Long 	globalId;
	private Long 	postUUID;
	private Integer channelNo;
	private Integer topicClassNo;
	private String 	topicNo;
	private String	topicName;
	private Integer langNo;
	private String 	postTitle;
	private Date	postDate;
	private Date	createDate;
	private String	postAuthor;
	private String	postTags;
	private Integer	postStatus;
	private String	content;	
	private String	postContentUrl;
	private Integer	viewNum;
	private String	originalAuthor;
	private String	originalLink;
	
	private PostContent postContent;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public PostContent getPostContent() {
		return postContent;
	}
	public void setPostContent(PostContent postContent) {
		this.postContent = postContent;
	}
	public Integer getTopicClassNo() {
		return topicClassNo;
	}
	public void setTopicClassNo(Integer topicClassNo) {
		this.topicClassNo = topicClassNo;
	}
	public String getTopicName() {
		return topicName;
	}
	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	public Long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(Long globalId) {
		this.globalId = globalId;
	}
	public Long getPostUUID() {
		return postUUID;
	}
	public void setPostUUID(Long postUUID) {
		this.postUUID = postUUID;
	}
	public Integer getChannelNo() {
		return channelNo;
	}
	public void setChannelNo(Integer channelNo) {
		this.channelNo = channelNo;
	}
	
	public Integer getLangNo() {
		return langNo;
	}
	public void setLangNo(Integer langNo) {
		this.langNo = langNo;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getPostAuthor() {
		return postAuthor;
	}
	public void setPostAuthor(String postAuthor) {
		this.postAuthor = postAuthor;
	}
	public String getPostTags() {
		return postTags;
	}
	public void setPostTags(String postTags) {
		this.postTags = postTags;
	}
	public Integer getPostStatus() {
		return postStatus;
	}
	public void setPostStatus(Integer postStatus) {
		this.postStatus = postStatus;
	}
//	public String getPostContent() {
//		return postContent;
//	}
//	public void setPostContent(String postContent) {
//		this.postContent = postContent;
//	}
	public String getPostContentUrl() {
		return postContentUrl;
	}
	public void setPostContentUrl(String postContentUrl) {
		this.postContentUrl = postContentUrl;
	}
	public Integer getViewNum() {
		return viewNum;
	}
	public void setViewNum(Integer viewNum) {
		this.viewNum = viewNum;
	}
	public String getOriginalAuthor() {
		return originalAuthor;
	}
	public void setOriginalAuthor(String originalAuthor) {
		this.originalAuthor = originalAuthor;
	}
	public String getOriginalLink() {
		return originalLink;
	}
	public void setOriginalLink(String originalLink) {
		this.originalLink = originalLink;
	}
	public String getTopicNo() {
		return topicNo;
	}
	public void setTopicNo(String topicNo) {
		this.topicNo = topicNo;
	}
	@Override
	public String toString() {
		return "Post [globalId=" + globalId + ", postUUID=" + postUUID + ", channelNo=" + channelNo + ", topicClassNo="
				+ topicClassNo + ", topicNo=" + topicNo + ", topicName=" + topicName + ", langNo=" + langNo
				+ ", postTitle=" + postTitle + ", postDate=" + postDate + ", createDate=" + createDate + ", postAuthor="
				+ postAuthor + ", postTags=" + postTags + ", postStatus=" + postStatus + ", content=" + content
				+ ", postContentUrl=" + postContentUrl + ", viewNum=" + viewNum + ", originalAuthor=" + originalAuthor
				+ ", originalLink=" + originalLink + ", postContent=" + postContent + "]";
	}
	
}
