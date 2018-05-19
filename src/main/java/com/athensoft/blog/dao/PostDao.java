package com.athensoft.blog.dao;

import java.util.List;

import com.athensoft.blog.entity.Post;

public interface PostDao {
	public List<Post> findAll();
	public List<Post> findByQuery(String queryString);
	public Post findById(long postUUID);
	
	public int create(Post post);
	public int update(Post post);
	public int delete(long postUUID);
}
