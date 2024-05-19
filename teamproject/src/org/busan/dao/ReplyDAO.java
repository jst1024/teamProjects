package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Reply;

public class ReplyDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// 특정 sharetripNo에 해당하는 댓글 리스트를 가져오는 메서드 추가
    public List<Reply> getReplies(int sharetripNo) {
        List<Reply> replyList = new ArrayList<>();
        OracleDB oracle = new OracleDB();
        try {
            con = oracle.connect();
            pstmt = con.prepareStatement(OracleDB.LATEST_ST_REPLY);
            pstmt.setInt(1, sharetripNo);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Reply reply = new Reply(
                    rs.getInt("boardNo"),
                    rs.getInt("no"),
                    rs.getString("id"),
                    rs.getString("regdate"),
                    rs.getString("content")
                );
                replyList.add(reply);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            oracle.close(con, pstmt, rs);
        }
        return replyList;
    }
    
	public List<Reply> getLatestReplyList(){
		List<Reply> replyList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.LATEST_REPLY);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Reply reply = new Reply(
						rs.getInt("boardNo"),
						rs.getInt("no"),
						rs.getString("id"),
						rs.getString("regdate"),
						rs.getString("content"));
				replyList.add(reply);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return replyList;
	}
	
	public List<Reply> getReplyList(){
		List<Reply> replyList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_REPLY);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Reply reply = new Reply(
						rs.getInt("boardNo"),
						rs.getInt("no"),
						rs.getString("id"),
						rs.getString("regdate"),
						rs.getString("content"));
				replyList.add(reply);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return replyList;
	}
	
	public int insReply(Reply reply) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_REPLY);
			pstmt.setInt(1, reply.getBoardNo());
			pstmt.setString(2, reply.getId());
			pstmt.setString(3, reply.getContent());
			cnt = pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProReply(Reply reply) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_REPLY);
			pstmt.setString(1, reply.getContent());
			pstmt.setInt(2, reply.getBoardNo());
			pstmt.setInt(3, reply.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delReply(int boardNo, int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_REPLY);
			pstmt.setInt(1, boardNo);
			pstmt.setInt(2, no);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}

	public Reply getReply(int no) {
		Reply reply = new Reply();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_REPLY_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
	        	reply.setBoardNo(rs.getInt("boardNo"));
	        	reply.setNo(rs.getInt("no"));
	        	reply.setRegdate(rs.getString("regdate"));
	        	reply.setContent(rs.getString("content"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return reply;
	}
}
