package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Guidemap;

public class GuidemapDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public List<Guidemap> getGuidemapList(){
		List<Guidemap> guidemapList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_GUIDEMAP);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Guidemap guidemap = new Guidemap(
						rs.getInt("no"),
						rs.getString("name"),
						rs.getString("link"),
						rs.getString("photo"));
				guidemapList.add(guidemap);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return guidemapList;
	}
	
	public Guidemap getGuidemap(int no) {
		Guidemap guidemap = new Guidemap();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_GUIDEMAP_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				guidemap.setNo(rs.getInt("no"));
				guidemap.setName(rs.getString("name"));
				guidemap.setLink(rs.getString("link"));
				guidemap.setPhoto(rs.getString("photo"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return guidemap;
	}
	
	public int insGuidemap(Guidemap guidemap) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_GUIDEMAP);
			pstmt.setString(1, guidemap.getName());
			pstmt.setString(2, guidemap.getLink());
			pstmt.setString(3, guidemap.getPhoto());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProGuidemap(Guidemap guidemap) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_GUIDEMAP);
			pstmt.setString(1, guidemap.getName());
			pstmt.setString(2, guidemap.getLink());
			pstmt.setString(3, guidemap.getPhoto());
			pstmt.setInt(4, guidemap.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delGuidemap(int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_GUIDEMAP);
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
