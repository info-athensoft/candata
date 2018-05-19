package com.athensoft.resource.site.dao;

import java.util.List;

import com.athensoft.resource.site.entity.SiteIndex;

public interface SiteIndexDao {
	public List<SiteIndex> findAll();
	public List<SiteIndex> findByStatus(int siteStatus);
	public List<SiteIndex> findByQuery(String queryString);
	
	public SiteIndex findById();
	
	public int create(SiteIndex siteIndex);
	public int update(SiteIndex siteIndex);
	public void delete(Long globalId);
}
