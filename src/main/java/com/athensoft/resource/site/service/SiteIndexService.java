package com.athensoft.resource.site.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.resource.site.dao.SiteIndexDao;
import com.athensoft.resource.site.entity.SiteIndex;

@Service
public class SiteIndexService {
	
	private SiteIndexDao siteIndexDao;
	
	@Autowired
	@Qualifier("siteIndexDaoJdbcImpl")
	public void setSiteIndexDao(SiteIndexDao siteIndexDao) {
		this.siteIndexDao = siteIndexDao;
	}
	
	public List<SiteIndex> getAllSiteIndex(){
		return siteIndexDao.findAll();
	}
	
	public List<SiteIndex> getPublicSiteIndex(){
		return siteIndexDao.findByStatus(1);
	}
	
	public void createSiteIndex(SiteIndex siteIndex){
		siteIndexDao.create(siteIndex);
	}
	
	public void updateSiteIndex(SiteIndex siteIndex){
		siteIndexDao.update(siteIndex);
	}
}
