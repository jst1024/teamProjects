package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Attr;


public class AttrDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Attr> getAttrList(){
		List<Attr> attrList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_ATTR);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Attr attr = new Attr(
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("subtitle"),
						rs.getString("photo"),
						rs.getString("content"),
						rs.getString("addr"),
						rs.getString("tel"),
						rs.getString("reltag"),
						rs.getInt("visited"),
						rs.getInt("liked"),
						rs.getString("dayoff"),
						rs.getString("traffic"),
						rs.getString("fee"),
						rs.getString("tips"));
				attrList.add(attr);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return attrList;
	}
	
	public Attr getAttr(int no) {
		Attr attr = new Attr();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.VISITED_UPD_ATTR);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_ATTR_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				attr.setNo(rs.getInt("no"));
				attr.setTitle(rs.getString("title"));
				attr.setSubtitle(rs.getString("subtitle"));
				attr.setPhoto(rs.getString("photo"));
				attr.setContent(rs.getString("content"));
				attr.setAddr(rs.getString("addr"));
				attr.setTel(rs.getString("tel"));
				attr.setReltag(rs.getString("reltag"));
				attr.setVisited(rs.getInt("visited"));
				attr.setLiked(rs.getInt("liked"));
				attr.setDayoff(rs.getString("dayoff"));
				attr.setTraffic(rs.getString("traffic"));
				attr.setFee(rs.getString("fee"));
				attr.setTips(rs.getString("tips"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return attr;
	}
	
	public int insAttr(Attr attr) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_ATTR);
			pstmt.setString(1, attr.getTitle());
			pstmt.setString(2, attr.getSubtitle());
			pstmt.setString(3, attr.getPhoto());
			pstmt.setString(4, attr.getContent());
			pstmt.setString(5, attr.getAddr());
			pstmt.setString(6, attr.getTel());
			pstmt.setString(7, attr.getReltag());
			pstmt.setInt(8, attr.getVisited());
			pstmt.setInt(9, attr.getLiked());
			pstmt.setString(10, attr.getDayoff());
			pstmt.setString(11, attr.getTraffic());
			pstmt.setString(12, attr.getFee());
			pstmt.setString(13, attr.getTips());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProAttr(Attr attr) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_ATTR);
			pstmt.setString(1, attr.getTitle());
			pstmt.setString(2, attr.getSubtitle());
			pstmt.setString(3, attr.getPhoto());
			pstmt.setString(4, attr.getContent());
			pstmt.setString(5, attr.getAddr());
			pstmt.setString(6, attr.getTel());
			pstmt.setString(7, attr.getReltag());
			pstmt.setInt(8, attr.getVisited());
			pstmt.setInt(9, attr.getLiked());
			pstmt.setString(10, attr.getDayoff());
			pstmt.setString(11, attr.getTraffic());
			pstmt.setString(12, attr.getFee());
			pstmt.setString(13, attr.getTips());
			pstmt.setInt(14, attr.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delAttr(int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_ATTR);
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
