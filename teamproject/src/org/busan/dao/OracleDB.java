package org.busan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//Oracle
public class OracleDB implements SqlLang {
	final static String DRIVER = "oracle.jdbc.OracleDriver";
	final static String URL = "jdbc:oracle:thin:@localhost:1521:xe"; 
	final static String USERID = "system";
	final static String USERPW = "1234";
	final static String INS_NOTICE = "insert into notice values (nseq.nextval, ?, ?, sysdate, 0)";
	final static String LATEST_NOTICE = "select * from (select * from notice order by no desc) where rownum<=5";
	final static String INS_SHARETRIP = "insert into sharetrip values (stseq.nextval, ?, sysdate, 0, 0)";
	final static String INS_EVENT = "insert into event values (eseq.nextval, ?, ?, ?, ?, ?, ?)";
	final static String INS_GUIDEMAP = "insert into guide values (gseq.nextval, ?, ?, ?)";
	final static String INS_THEME = "insert into theme values (tseq.nextval, ?, ?, ?, ?, ?, 0, 0, ?)";
	final static String INS_ATTR = "insert into attr values (attrseq.nextval, ?, ?, ?, ?, ?, ?, ?, 0, 0, ?, ?, ?, ?)";
	final static String INS_FOOD = "insert into food values (fseq.nextval, ?, ?, ?, ?, ?, ?, ?, 0, 0, ?, ?, ?)";
	final static String INS_ACCOM = "insert into accom values (aseq.nextval, ?, ?, ?, ?, ?, ?, ?, 0, 0, ?, ?)";
	Connection con = null;
	
	@Override
	public Connection connect() {
		try {
			Class.forName(DRIVER);
			try {
				con = DriverManager.getConnection(URL, USERID, USERPW);
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	@Override
	public void close(Connection con, PreparedStatement pstmt) {
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	@Override
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}