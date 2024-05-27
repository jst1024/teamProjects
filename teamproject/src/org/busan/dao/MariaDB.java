package org.busan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MariaDB implements SqlLang {
    final static String DRIVER = "org.mariadb.jdbc.Driver";
    final static String URL = "jdbc:mariadb://localhost:3308/team52";
    final static String USERID = "team52";
    final static String USERPW = "ef1234";
    
    // SQL queries with changes for MariaDB
    final static String INS_NOTICE = "INSERT INTO notice (title, content, regdate) VALUES (?, ?, CURRENT_TIMESTAMP)";
    final static String LATEST_NOTICE = "SELECT * FROM notice ORDER BY no DESC LIMIT 5";
    final static String INS_SHARETRIP = "INSERT INTO sharetrip (id, title, regdate, liked, replycount, photo) VALUES (?, ?, CURRENT_TIMESTAMP, 0, 0, ?)";
    final static String INS_EVENT = "INSERT INTO event (title, ondate, content, tel, homepage, photo) VALUES (?, ?, ?, ?, ?, ?)";
    final static String INS_GUIDEMAP = "INSERT INTO guidemap (name, link, photo) VALUES (?, ?, ?)";
    final static String INS_THEME = "INSERT INTO theme (title, subtitle, content, reltag, visited, liked, photo) VALUES (?, ?, ?, ?, 0, 0, ?)";
    final static String INS_ATTR = "INSERT INTO attr (title, subtitle, content, addr, tel, reltag, visited, liked, dayoff, traffic, fee, tips, photo) VALUES (?, ?, ?, ?, ?, ?, 0, 0, ?, ?, ?, ?, ?)";
    final static String INS_FOOD = "INSERT INTO food (title, subtitle, content, addr, tel, reltag, visited, liked, mainmenu, ontime, dayoff, photo) VALUES (?, ?, ?, ?, ?, ?, 0, 0, ?, ?, ?, ?)";
    final static String INS_ACCOM = "INSERT INTO accom (title, subtitle, content, addr, tel, reltag, visited, liked, busitype, homepage, photo) VALUES (?, ?, ?, ?, ?, ?, 0, 0, ?, ?, ?)";
    final static String INS_ATCFILE = "INSERT INTO atcfile (no, seq, filename, filesize, filetype) VALUES (?, ?, ?, ?)";
    
    // reply
    final static String INS_REPLY = "INSERT INTO reply (boardNo, id, regdate, content) VALUES (?, ?, CURRENT_TIMESTAMP, ?)";
    final static String LATEST_REPLY = "SELECT * FROM reply ORDER BY no DESC LIMIT 5";
    final static String LATEST_ST_REPLY = "SELECT * FROM reply WHERE boardNo=? ORDER BY no DESC LIMIT 5";
    
    Connection con = null;
    
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
    
    public void close(Connection con, PreparedStatement pstmt) {
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
