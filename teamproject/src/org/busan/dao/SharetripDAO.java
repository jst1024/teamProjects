package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
						rs.getString("id"),
						rs.getString("title"),
						rs.getString("regdate"),
						rs.getInt("liked"),
						rs.getInt("replycount"),
						rs.getString("photo"));
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
				st.setId(rs.getString("id"));
				st.setTitle(rs.getString("title"));
				st.setRegdate(rs.getString("regdate"));
				st.setLiked(rs.getInt("liked"));
				st.setReplycount(rs.getInt("replycount"));
				st.setPhoto(rs.getString("photo"));
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
			pstmt.setString(1, st.getId());
			pstmt.setString(2, st.getTitle());
			pstmt.setString(3, st.getPhoto());
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
			pstmt.setString(2, st.getPhoto());
			pstmt.setInt(3, st.getNo());
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
	
	public int getReplyCount(int no) {
	    int replyCount = 0;
	    OracleDB oracle = new OracleDB();
	    try {
	        con = oracle.connect();
	        pstmt = con.prepareStatement(SqlLang.SELECT_REPLYCOUNT);
	        pstmt.setInt(1, no);
	        rs = pstmt.executeQuery();
	        if (rs.next()) {
	            replyCount = rs.getInt(1);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        oracle.close(con, pstmt, rs);
	    }
	    return replyCount;
	}
}
