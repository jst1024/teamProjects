package org.busan.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Notice;

public class OracleTest {
	public static void main(String[] args) {
		Connection con = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;	
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String userid = "system";
		String userpw = "1234";
		String sql = "select * from notice";
		List<Notice> notiList = new ArrayList<>();
		try {
			Class.forName(driver);	
			try {
				con = DriverManager.getConnection(url, userid, userpw); 
				pstmt = con.prepareStatement(sql); 
				rs = pstmt.executeQuery();	 
				while(rs.next()) {
					Notice noti = new Notice(
							rs.getInt("no"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getString("resdate"),
							rs.getInt("visited"));
					notiList.add(noti);
				}
			} catch (SQLException e) {
				System.out.println("데이터베이스 연결 실패 또는 SQL 구문 실행 실패");
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			System.out.println("데이터베이스 로딩 실패");
			e.printStackTrace();
		} finally {
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
		for(Notice n:notiList) {
			System.out.println(n.toString());
		}
	}
}