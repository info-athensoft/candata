package com.athensoft.blog.dao;

import java.util.List;

import com.athensoft.blog.entity.PostTopic;

public interface PostTopicDao {
	public List<PostTopic> findByName(String topicName);
	
	public List<PostTopic> findByNo(String topicNo);
	
}
