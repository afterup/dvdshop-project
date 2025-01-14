package com.movie.model.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.movie.model.vo.MovieInfo;

import iba.MySqlMapClient;

public class AdminDAO {

	SqlMapClient sqlMap;

	public AdminDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}
	
	public List<MovieInfo> selectAll() throws SQLException {
		return sqlMap.queryForList("admin.selectAll");
	}
	
	public List<MovieInfo> selectInfo(int no) throws SQLException {
		return sqlMap.queryForList("admin.selectInfo",no);
	}
	
	public int updateMovie(MovieInfo movie) throws SQLException {
		return sqlMap.update("admin.movieUpdate",movie);
	}
	
	public int deleteMovie(int no) throws SQLException {
		return sqlMap.delete("admin.movieDelete",no);
	}
	
	public void insertMovie(MovieInfo movie) throws SQLException {
		sqlMap.insert("admin.movieInsert",movie);
	}
}
