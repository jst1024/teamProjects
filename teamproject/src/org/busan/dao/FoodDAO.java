package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.busan.dto.Food;


public class FoodDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Food> getFoodList(){
		List<Food> foodList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_FOOD);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Food food = new Food(
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
						rs.getString("mainmenu"),
						rs.getString("ontime"),
						rs.getString("dayoff"));
				foodList.add(food);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return foodList;
	}
	
	public Food getFood(int no) {
		Food food = new Food();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.VISITED_UPD_FOOD);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_FOOD_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				food.setNo(rs.getInt("no"));
				food.setTitle(rs.getString("title"));
				food.setSubtitle(rs.getString("subtitle"));
				food.setPhoto(rs.getString("photo"));
				food.setContent(rs.getString("content"));
				food.setAddr(rs.getString("addr"));
				food.setTel(rs.getString("tel"));
				food.setReltag(rs.getString("reltag"));
				food.setVisited(rs.getInt("visited"));
				food.setLiked(rs.getInt("liked"));
				food.setMainmenu(rs.getString("mainmenu"));
				food.setOntime(rs.getString("ontime"));
				food.setDayoff(rs.getString("dayoff"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return food;
	}
	
	public int insFood(Food food) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_FOOD);
			pstmt.setString(1, food.getTitle());
			pstmt.setString(2, food.getSubtitle());
			pstmt.setString(3, food.getPhoto());
			pstmt.setString(4, food.getContent());
			pstmt.setString(5, food.getAddr());
			pstmt.setString(6, food.getTel());
			pstmt.setString(7, food.getReltag());
			pstmt.setInt(8, food.getVisited());
			pstmt.setInt(9, food.getLiked());
			pstmt.setString(10, food.getMainmenu());
			pstmt.setString(11, food.getOntime());
			pstmt.setString(12, food.getDayoff());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProFood(Food food) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_FOOD);
			pstmt.setString(1, food.getTitle());
			pstmt.setString(2, food.getSubtitle());
			pstmt.setString(3, food.getPhoto());
			pstmt.setString(4, food.getContent());
			pstmt.setString(5, food.getAddr());
			pstmt.setString(6, food.getTel());
			pstmt.setString(7, food.getReltag());
			pstmt.setInt(8, food.getVisited());
			pstmt.setInt(9, food.getLiked());
			pstmt.setString(10, food.getMainmenu());
			pstmt.setString(11, food.getOntime());
			pstmt.setString(12, food.getDayoff());
			pstmt.setInt(13, food.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delFood(int no){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_FOOD);
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
