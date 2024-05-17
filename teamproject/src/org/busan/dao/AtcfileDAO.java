package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Atcfile;
import org.busan.dto.Notice;

public class AtcfileDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Atcfile> getAtcfileList(){
		List<Atcfile> atcfileList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_ATCFILE);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Atcfile atcfile = new Atcfile(
						rs.getInt("boardNo"),
						rs.getInt("no"),
						rs.getString("oriname"),
						rs.getString("newname"),
						rs.getInt("fsize"));
				atcfileList.add(atcfile);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return atcfileList;
	}
	
	public Atcfile getAtcfile(int no) {
		Atcfile atcfile = new Atcfile();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_ATCFILE_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				atcfile.setBoardNo(rs.getInt("boardNo"));
				atcfile.setNo(rs.getInt("no"));
				atcfile.setOriname(rs.getString("oriname"));
				atcfile.setNewname(rs.getString("newname"));
				atcfile.setFsize(rs.getInt("fsize"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return atcfile;
	}
	
	public int insAtcfile(Atcfile atcfile) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_ATCFILE);
			pstmt.setInt(1, atcfile.getBoardNo());
			pstmt.setString(2, atcfile.getOriname());
			pstmt.setString(3, atcfile.getNewname());
			pstmt.setInt(4, atcfile.getFsize());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProAtcfile(Atcfile atcfile) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_ATCFILE);
			pstmt.setString(1, atcfile.getOriname());
			pstmt.setString(2, atcfile.getNewname());
			pstmt.setInt(3, atcfile.getFsize());
			pstmt.setInt(4, atcfile.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delAtcfile(int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_ATCFILE);
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
