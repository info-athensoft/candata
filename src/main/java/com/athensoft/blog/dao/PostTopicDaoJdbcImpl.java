package com.athensoft.blog.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.athensoft.blog.entity.PostTopic;

@Repository
@Qualifier("postTopicDaoJdbcImpl")
public class PostTopicDaoJdbcImpl implements PostTopicDao{

private final static Logger logger = Logger.getLogger(PostTopicDaoJdbcImpl.class);
	
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	private final String VIEW = "VIEW_POST_TOPIC";
	
	@Override
	public List<PostTopic> findByName(String topicName) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append(" topic_no, ");
		sbf.append(" topic_name ");
		sbf.append(" FROM ");
		sbf.append(VIEW);
		sbf.append(" WHERE 1=1 ");
		sbf.append(" AND topic_name = :topic_name");
		String sql = sbf.toString();
		logger.info(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("topic_name", topicName);
		return jdbc.query(sql, paramSource, new PostTopicRowMapper());
	}

	@Override
	public List<PostTopic> findByNo(String topicNo) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append(" topic_no, ");
		sbf.append(" topic_name ");
		sbf.append(" FROM ");
		sbf.append(VIEW);
		sbf.append(" WHERE 1=1 ");
		sbf.append(" AND topic_no = :topic_no");
		String sql = sbf.toString();
		logger.info(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("topic_no", topicNo);
		return jdbc.query(sql, paramSource, new PostTopicRowMapper());
	}

	

	private static class PostTopicRowMapper implements RowMapper<PostTopic>{
		@Override
		public PostTopic mapRow(ResultSet rs, int rowNumber) throws SQLException {
			PostTopic x = new PostTopic();
			x.setTopicNo(rs.getString("topic_no"));
			x.setTopicName(rs.getString("topic_name"));
            return x;
		}
		
	}
	
}
