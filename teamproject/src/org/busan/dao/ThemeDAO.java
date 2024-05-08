package org.busan.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Theme;

public class ThemeDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public List<Theme> getThemeList(){
		List<Theme> themeList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_THEME);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Theme theme = new Theme(
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("subtitle"),
						rs.getString("photo"),
						rs.getString("content"),
						rs.getString("reltag"),
						rs.getInt("visited"),
						rs.getInt("liked"),
						rs.getString("author"));
				themeList.add(theme);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return themeList;
	}
	
	public Theme getTheme(int no) {
		Theme theme = new Theme();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.VISITED_UPD_THEME);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_THEME_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				theme.setNo(rs.getInt("no"));
				theme.setTitle(rs.getString("title"));
				theme.setSubtitle(rs.getString("subtitle"));
				theme.setPhoto(rs.getString("photo"));
				theme.setContent(rs.getString("content"));
				theme.setReltag(rs.getString("reltag"));
				theme.setVisited(rs.getInt("visited"));
				theme.setLiked(rs.getInt("liked"));
				theme.setAuthor(rs.getString("author"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return theme;
	}
	
	public int insTheme(Theme theme) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_THEME);
			pstmt.setString(1, theme.getTitle());
			pstmt.setString(2, theme.getSubtitle());
			pstmt.setString(3, theme.getPhoto());
			pstmt.setString(4, theme.getContent());
			pstmt.setString(5, theme.getReltag());
			pstmt.setInt(6, theme.getVisited());
			pstmt.setInt(7, theme.getLiked());
			pstmt.setString(8, theme.getAuthor());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProTheme(Theme theme) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_THEME);
			pstmt.setString(1, theme.getTitle());
			pstmt.setString(2, theme.getSubtitle());
			pstmt.setString(3, theme.getPhoto());
			pstmt.setString(4, theme.getContent());
			pstmt.setString(5, theme.getReltag());
			pstmt.setInt(6, theme.getVisited());
			pstmt.setInt(7, theme.getLiked());
			pstmt.setString(8, theme.getAuthor());
			pstmt.setInt(9, theme.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delTheme(int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_THEME);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}

}
