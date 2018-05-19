package com.athensoft.resource.site.entity;

public class SiteIndex {
	private Long globalId;
	private String siteUrl;
	private String siteName;
	private String siteKeyword;
	private String siteDesc;
	private String siteReferrer;
	private Integer siteStatus;
	public Long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(Long globalId) {
		this.globalId = globalId;
	}
	public String getSiteUrl() {
		return siteUrl;
	}
	public void setSiteUrl(String siteUrl) {
		this.siteUrl = siteUrl;
	}
	public String getSiteName() {
		return siteName;
	}
	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}
	public String getSiteKeyword() {
		return siteKeyword;
	}
	public void setSiteKeyword(String siteKeyword) {
		this.siteKeyword = siteKeyword;
	}
	public String getSiteDesc() {
		return siteDesc;
	}
	public void setSiteDesc(String siteDesc) {
		this.siteDesc = siteDesc;
	}
	public String getSiteReferrer() {
		return siteReferrer;
	}
	public void setSiteReferrer(String siteReferrer) {
		this.siteReferrer = siteReferrer;
	}
	public Integer getSiteStatus() {
		return siteStatus;
	}
	public void setSiteStatus(Integer siteStatus) {
		this.siteStatus = siteStatus;
	}
	@Override
	public String toString() {
		return "SiteIndex [globalId=" + globalId + ", siteUrl=" + siteUrl + ", siteName=" + siteName + ", siteKeyword="
				+ siteKeyword + ", siteDesc=" + siteDesc + ", siteReferrer=" + siteReferrer + ", siteStatus="
				+ siteStatus + "]";
	}
}
