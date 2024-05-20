package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Accom;



public class AccomDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Accom> getAccomList(){
		List<Accom> accList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_ACCOM);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Accom acc = new Accom(
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("subtitle"),
						rs.getString("content"),
						rs.getString("addr"),
						rs.getString("tel"),
						rs.getString("reltag"),
						rs.getInt("visited"),
						rs.getInt("liked"),
						rs.getString("busitype"),
						rs.getString("homepage"),
						rs.getString("photo"));
				accList.add(acc);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return accList;
	}
	
	public Accom getAccom(int no) {
		Accom acc = new Accom();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.VISITED_UPD_ACCOM);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_ACCOM_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				acc.setNo(rs.getInt("no"));
				acc.setTitle(rs.getString("title"));
				acc.setSubtitle(rs.getString("subtitle"));
				acc.setContent(rs.getString("content"));
				acc.setAddr(rs.getString("addr"));
				acc.setTel(rs.getString("tel"));
				acc.setReltag(rs.getString("reltag"));
				acc.setVisited(rs.getInt("visited"));
				acc.setLiked(rs.getInt("liked"));
				acc.setBusitype(rs.getString("busitype"));
				acc.setHomepage(rs.getString("homepage"));
				acc.setPhoto(rs.getString("photo"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return acc;
	}
	
	public int insAccom(Accom acc) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_ACCOM);
			pstmt.setString(1, acc.getTitle());
			pstmt.setString(2, acc.getSubtitle());
			pstmt.setString(3, acc.getContent());
			pstmt.setString(4, acc.getAddr());
			pstmt.setString(5, acc.getTel());
			pstmt.setString(6, acc.getReltag());
			pstmt.setString(7, acc.getBusitype());
			pstmt.setString(8, acc.getHomepage());
			pstmt.setString(9, acc.getPhoto());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProAccom(Accom acc) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_ACCOM);
			pstmt.setString(1, acc.getTitle());
			pstmt.setString(2, acc.getSubtitle());
			pstmt.setString(3, acc.getContent());
			pstmt.setString(4, acc.getAddr());
			pstmt.setString(5, acc.getTel());
			pstmt.setString(6, acc.getReltag());
			pstmt.setString(7, acc.getBusitype());
			pstmt.setString(8, acc.getHomepage());
			pstmt.setString(9, acc.getPhoto());
			pstmt.setInt(10, acc.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delAccom(int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_ACCOM);
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
