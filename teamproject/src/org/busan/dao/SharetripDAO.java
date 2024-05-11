package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Sharetrip;


public class SharetripDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public List<Sharetrip> getSharetripList(){
		List<Sharetrip> stList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_SHARETRIP);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Sharetrip st = new Sharetrip(
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("resdate"),
						rs.getString("author"),
						rs.getString("photo"),
						rs.getInt("liked"),
						rs.getInt("replycount"));
				stList.add(st);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return stList;
	}
	
	public Sharetrip getSharetrip(int no) {
		Sharetrip st = new Sharetrip();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_SHARETRIP_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				st.setNo(rs.getInt("no"));
				st.setTitle(rs.getString("title"));
				st.setRegdate(rs.getString("regdate"));
				st.setAuthor(rs.getString("author"));
				st.setAuthor(rs.getString("photo"));
				st.setLiked(rs.getInt("liked"));
				st.setreplycount(rs.getInt("replycount"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return st;
	}
	
	public int insSharetrip(Sharetrip st) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_SHARETRIP);
			pstmt.setString(1, st.getTitle());
			pstmt.setString(2, st.getAuthor());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	
	public int editProSharetrip(Sharetrip st) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_SHARETRIP);
			pstmt.setString(1, st.getTitle());
			pstmt.setInt(2, st.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delSharetrip(int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_SHARETRIP);
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
