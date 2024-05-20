package org.busan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface SqlLang {
	String SELECT_ALL_NOTICE = "select * from notice order by regdate desc";
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	String UPD_NOTICE = "update notice set title=?, content=? where no=?";
	String DEL_NOTICE = "delete from notice where no=?";

	String SELECT_ALL_ATCFILE = "select * from atcfile order by no desc";
	String SELECT_ATCFILE_BYNO = "select * from atcfile where no=?";
	String UPD_ATCFILE = "update atcfile set oriname=?, newname=?, fsize=? where no=?";
	String DEL_ATCFILE = "delete from atcfile where no=?";
	
	String SELECT_ALL_MEMBER = "select * from member order by regdate";
	String SELECT_ONE_MEMBER = "select * from member where id=?";
	String INS_MEMBER = "insert into member values(?,?,?,?,?,?,?,?)";
	String UPD_MEMBER = "update member set pw=?,name=?,email=?,tel=? where id=?";
	String DEL_MEMBER = "delete from member where id=?";
	
	String SELECT_ALL_EVENT = "select * from event order by no desc";
	String SELECT_EVENT_BYNO = "select * from event where no=?";
	String UPD_EVENT = "update event set title=?, ondate=?, content=?, tel=?, homepage=?, photo=? where no=?";
	String DEL_EVENT = "delete from event where no=?";
	
	String SELECT_ALL_GUIDEMAP = "select * from guidemap order by no desc";
	String SELECT_GUIDEMAP_BYNO = "select * from guidemap where no=?";
	String UPD_GUIDEMAP = "update guidemap set name=?, link=?, photo=? where no=?";
	String DEL_GUIDEMAP = "delete from guidemap where no=?";

	String SELECT_ALL_THEME = "select * from theme order by no desc";
	String SELECT_THEME_BYNO = "select * from theme where no=?";
	String UPD_THEME = "update theme set title=?, subtitle=?, content=?, reltag=?, photo=? where no=?";
	String VISITED_UPD_THEME = "update theme set visited=visited+1 where no=?";
	String DEL_THEME = "delete from theme where no=?";

	String SELECT_ALL_ATTR = "select * from attr order by no desc";
	String SELECT_ATTR_BYNO = "select * from attr where no=?";
	String UPD_ATTR = "update attr set title=?, subtitle=?, content=?, addr=?, tel=?, reltag=?, dayoff=?, traffic=?, fee=?, tips=?, photo=? where no=?";
	String VISITED_UPD_ATTR = "update attr set visited=visited+1 where no=?";
	String DEL_ATTR = "delete from attr where no=?";

	String SELECT_ALL_FOOD = "select * from food order by no desc";
	String SELECT_FOOD_BYNO = "select * from food where no=?";
	String UPD_FOOD = "update food set title=?, subtitle=?, content=?, addr=?, tel=?, reltag=?, mainmenu=?, ontime=?, dayoff=?, photo=? where no=?";
	String VISITED_UPD_FOOD = "update food set visited=visited+1 where no=?";
	String DEL_FOOD = "delete from food where no=?";

	String SELECT_ALL_ACCOM = "select * from accom order by no desc";
	String SELECT_ACCOM_BYNO = "select * from accom where no=?";
	String UPD_ACCOM = "update accom set title=?, subtitle=?, content=?, addr=?, tel=?, reltag=?, busitype=?, homepage=?, photo=? where no=?";
	String VISITED_UPD_ACCOM = "update accom set visited=visited+1 where no=?";
	String DEL_ACCOM = "delete from accom where no=?";
	
	String SELECT_ALL_SHARETRIP = "select * from sharetrip order by regdate desc";
	String SELECT_SHARETRIP_BYNO = "select * from sharetrip where no=?";
	String UPD_SHARETRIP = "update sharetrip set title=?, photo=? where no=?";
	String DEL_SHARETRIP = "delete from sharetrip where no=?";
	String SELECT_REPLYCOUNT = "SELECT COUNT(*) AS replyCount FROM reply WHERE boardNo = ?";
	
	String SELECT_ALL_REPLY = "select * from reply order by regdate desc";
	String SELECT_REPLY_BYNO = "select * from reply where no=?";
	String UPD_REPLY = "update reply set content=? where boardNo=? and no=?";
	String UPD_REPLYCOUNT = "SELECT COUNT(*) AS replyCount FROM reply WHERE boardNo = ?";
	String DEL_REPLY = "delete from reply where boardNo=? and no=?";
	
	Connection connect();
	void close(Connection con, PreparedStatement pstmt);
	void close(Connection con, PreparedStatement pstmt, ResultSet rs);
}