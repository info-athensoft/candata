package com.athensoft.blog.dao;

import com.athensoft.blog.entity.PostContent;

public interface PostContentDao {
	public PostContent findById(long postUUID);
	
	public int create(PostContent postContent);
	
	public int update(PostContent postContent);
	
	public int delete(long postUUID);
}
