package com.athensoft.blog.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.athensoft.blog.entity.Post;

@Repository
@Qualifier("postDaoJdbcImpl")
public class PostDaoJdbcImpl implements PostDao {
	
	private final static Logger logger = Logger.getLogger(PostDaoJdbcImpl.class);
	
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	private final String TABLE = "BLOG_POST";
	
	private static StringBuffer KEYS = new StringBuffer();
	private static StringBuffer FIELDS = new StringBuffer();
	private static StringBuffer CREATE_PARAM = new StringBuffer();
	
	static {
		KEYS.append("global_id, ");
		
		FIELDS.append("post_uuid, ");
		FIELDS.append("channel_no, ");
		FIELDS.append("topic_class_no, ");
		FIELDS.append("topic_no, ");
		FIELDS.append("topic_name, ");
		FIELDS.append("lang_no, ");
		FIELDS.append("post_title, ");
		FIELDS.append("post_author, ");
		FIELDS.append("post_tags, ");
		FIELDS.append("view_num, ");
		FIELDS.append("original_author, ");
		FIELDS.append("original_link, ");
		FIELDS.append("create_date, ");
		FIELDS.append("post_date, ");
		FIELDS.append("post_status, ");
		FIELDS.append("post_content_url ");
		//FIELDS.append("post_content ");
		
		CREATE_PARAM.append(":post_uuid, ");
		CREATE_PARAM.append(":channel_no, ");
		CREATE_PARAM.append(":topic_class_no, ");
		CREATE_PARAM.append(":topic_no, ");
		CREATE_PARAM.append(":topic_name, ");
		CREATE_PARAM.append(":lang_no, ");
		CREATE_PARAM.append(":post_title, ");
		CREATE_PARAM.append(":post_author, ");
		CREATE_PARAM.append(":post_tags, ");
		CREATE_PARAM.append(":view_num, ");
		CREATE_PARAM.append(":original_author, ");
		CREATE_PARAM.append(":original_link, ");
		CREATE_PARAM.append(":create_date, ");
		CREATE_PARAM.append(":post_date, ");
		CREATE_PARAM.append(":post_status, ");
		CREATE_PARAM.append(":post_content_url ");
		//CREATE_PARAM.append(":post_content ");
	}
	
	@Override
	public List<Post> findAll() {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append(KEYS);
		sbf.append(FIELDS);
		sbf.append(" FROM "+TABLE);
		String sql = sbf.toString();
		logger.info(sql);
		
		return jdbc.query(sql,new PostRowMapper());
	}

	@Override
	public List<Post> findByQuery(String queryString) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append(KEYS);
		sbf.append(FIELDS);
		sbf.append(" FROM "+TABLE);
		sbf.append(" WHERE 1=1 ");
		sbf.append(queryString);
		String sql = sbf.toString();
		logger.info(sql);
		
		return jdbc.query(sql,new PostRowMapper());
	}

	@Override
	public Post findById(long postUUID) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append(KEYS);
		sbf.append(FIELDS);
		sbf.append(" FROM "+TABLE);
		sbf.append(" WHERE 1=1 ");
		sbf.append(" AND post_uuid = :post_uuid");
		String sql = sbf.toString();
		logger.info(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("post_uuid", postUUID);
		return jdbc.queryForObject(sql, paramSource, new PostRowMapper());
	}

	@Override
	public int create(Post x) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO ").append(TABLE).append("(");
		sbf.append(FIELDS);
		sbf.append(")");
		sbf.append(" VALUES(");
		sbf.append(CREATE_PARAM);
		sbf.append(")");
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("post_uuid", x.getPostUUID());
		paramSource.addValue("channel_no", x.getChannelNo());
		paramSource.addValue("topic_class_no", x.getTopicClassNo());
		paramSource.addValue("topic_no", x.getTopicNo());
		paramSource.addValue("topic_name", x.getTopicName());
		paramSource.addValue("lang_no", x.getLangNo());
		
		paramSource.addValue("post_title", x.getPostTitle());
		paramSource.addValue("post_author", x.getPostAuthor());
		paramSource.addValue("post_tags", x.getPostTags());
		paramSource.addValue("view_num", x.getViewNum());
		paramSource.addValue("original_author", x.getOriginalAuthor());
		paramSource.addValue("original_link", x.getOriginalLink());
		paramSource.addValue("create_date", x.getCreateDate());
		paramSource.addValue("post_date", x.getPostDate());
		paramSource.addValue("post_status", x.getPostStatus());
		
		paramSource.addValue("post_content_url", x.getPostContentUrl());
		//paramSource.addValue("post_content", x.getPostContent());
		
		return jdbc.update(sql,paramSource);
	}

	@Override
	public int update(Post x) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("UPDATE ").append(TABLE).append(" SET ");
		sbf.append("channel_no=:channel_no, ");
		sbf.append("topic_class_no=:topic_class_no, ");
		sbf.append("topic_no=:topic_no, ");
		sbf.append("topic_name=:topic_name, ");
		sbf.append("post_title=:post_title, ");
		sbf.append("post_author=:post_author, ");
		sbf.append("post_tags=:post_tags, ");
		sbf.append("post_date=:post_date, ");
		sbf.append("original_author=:original_author, ");
		sbf.append("original_link=:original_link, ");
		sbf.append("post_status=:post_status ");
		
		sbf.append(" WHERE post_uuid=:post_uuid");
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("post_uuid", x.getPostUUID());
		paramSource.addValue("channel_no", x.getChannelNo());
		paramSource.addValue("topic_class_no", x.getTopicClassNo());
		paramSource.addValue("topic_no", x.getTopicNo());
		paramSource.addValue("topic_name", x.getTopicName());
		
		paramSource.addValue("post_title", x.getPostTitle());
		paramSource.addValue("post_author", x.getPostAuthor());
		paramSource.addValue("post_tags", x.getPostTags());
		paramSource.addValue("post_date", x.getPostDate());
		paramSource.addValue("original_author", x.getOriginalAuthor());
		paramSource.addValue("original_link", x.getOriginalLink());
		paramSource.addValue("post_status", x.getPostStatus());
		
		//paramSource.addValue("post_content", x.getPostContent().getPostContent());
		
		return jdbc.update(sql,paramSource);
	}

	@Override
	public int delete(long postUUID) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	private static class PostRowMapper implements RowMapper<Post>{
		@Override
		public Post mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Post x = new Post();
			x.setGlobalId(rs.getLong("global_id"));
			x.setPostUUID(rs.getLong("post_uuid"));
			x.setChannelNo(rs.getInt("channel_no"));
			x.setTopicClassNo(rs.getInt("topic_class_no"));
			x.setTopicNo(rs.getString("topic_no"));
			x.setTopicName(rs.getString("topic_name"));
			x.setLangNo(rs.getInt("lang_no"));
			x.setPostTitle(rs.getString("post_title"));
			x.setPostTags(rs.getString("post_tags"));
			x.setPostStatus(rs.getInt("post_status"));
			x.setPostAuthor(rs.getString("post_author"));
//			x.setPostContent(rs.getString("post_content"));
			x.setPostContentUrl(rs.getString("post_content_url"));
			x.setViewNum(rs.getInt("view_num"));
			x.setOriginalAuthor(rs.getString("original_author"));
			x.setOriginalLink(rs.getString("original_link"));
//			x.setPostDate(rs.getDate("post_date"));
//			x.setCreateDate(rs.getDate("create_date"));
			
			Timestamp cd = rs.getTimestamp("create_date");
			if (cd != null) {	x.setCreateDate(new Date(cd.getTime())); }
			Timestamp pd = rs.getTimestamp("post_date");
			if (pd != null) {	x.setPostDate(new Date(pd.getTime())); }
            return x;
		}
		
	}

}
