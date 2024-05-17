package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Event;

public class EventDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Event> getEventList(){
		List<Event> eventList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_EVENT);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Event eve = new Event(
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("ondate"),
						rs.getString("content"),
						rs.getString("tel"),
						rs.getString("homepage"),
						rs.getString("photo"));
				eventList.add(eve);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return eventList;
	}
	
	public Event getEvent(int no) {
		Event eve = new Event();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_EVENT_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				eve.setNo(rs.getInt("no"));
				eve.setTitle(rs.getString("title"));
				eve.setOndate(rs.getString("ondate"));
				eve.setContent(rs.getString("content"));
				eve.setTel(rs.getString("tel"));
				eve.setHomepage(rs.getString("homepage"));
				eve.setPhoto(rs.getString("photo"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return eve;
	}
	
	public int insEvent(Event eve) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_EVENT);
			pstmt.setString(1, eve.getTitle());
			pstmt.setString(2, eve.getOndate());
			pstmt.setString(3, eve.getContent());
			pstmt.setString(4, eve.getTel());
			pstmt.setString(5, eve.getHomepage());
			pstmt.setString(6, eve.getPhoto());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProEvent(Event eve) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_EVENT);
			pstmt.setString(1, eve.getTitle());
			pstmt.setString(2, eve.getOndate());
			pstmt.setString(3, eve.getContent());
			pstmt.setString(4, eve.getTel());
			pstmt.setString(5, eve.getHomepage());
			pstmt.setString(6, eve.getPhoto());
			pstmt.setInt(7, eve.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delEvent(int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_EVENT);
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
