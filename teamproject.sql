---------------------------------- 테이블 생성 -----------------------------------
-- 회원관리 (암호화 필요)
create table member (   -- 회원(member)
    no int not null,
    grade int not null,
    id varchar2(50) primary key not null,
    pw varchar2(2000) not null,
    nickname varchar2(50) not null,
    email varchar2(200),
    tel varchar2(30)
);

create table reply (    -- 댓글(reply)
    replyId NUMBER primary key,
    imgId NUMBER,
    userId VARCHAR2(50) not null,
    replyDate TIMESTAMP default sysdate,
    replyText VARCHAR2(2000) not null
);
    
-- 부산에가면(wibusan)
create table attr(     -- 명소(attr)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    subtitle VARCHAR2(200),
    photo VARCHAR2(1000),
    content varchar2(1000),
    addr varchar2(200) not null,
    tel varchar2(30),
    reltag varchar2(50),
    visited number,
    liked number,
    dayoff varchar2(500) not null,
    traffic varchar(1000),
    fee varchar2(500) not null,
    tips varchar2(1000)
);

create table food (     -- 음식(food)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    subtitle VARCHAR2(200),
    photo VARCHAR2(1000),
    content varchar2(1000),
    addr varchar2(200) not null,
    tel varchar2(30),
    reltag varchar2(50),
    visited number,
    liked number,
    mainmenu varchar2(500)not null,
    ontime varchar2(1000) not null,
    dayoff varchar2(500) not null
);

create table accom (    -- 숙박(accom)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    subtitle VARCHAR2(200),
    photo VARCHAR2(1000),
    content varchar2(1000),
    addr varchar2(200) not null,
    tel varchar2(30),
    reltag varchar2(50),
    visited number,
    liked number,
    busitype varchar2(50) not null,
    homepage varchar2(1000)
);

-- 추천여행(recotour)   
create table theme (    -- 테마여행(theme)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    subtitle VARCHAR2(200) not null,
    photo VARCHAR2(100),
    content VARCHAR2(2000),
    reltag VARCHAR2(100),
    visited NUMBER,
    liked NUMBER,
    author VARCHAR2(50)
);

-- 여행준비(readytour)
create table guidemap (     -- 가이드북&지도(guidemap)
    no NUMBER primary key,
    name VARCHAR2(50) not null,
    photo VARCHAR2(100),
    link VARCHAR2(1000) not null
);

-- 유용한정보(usefulinfo)
create table notice (       -- 공지(notice)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    content VARCHAR2(2000),
    resdate TIMESTAMP default sysdate
);

create table event (        -- 축제/행사(event)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    ondate varchar(30) not null,
    content VARCHAR2(2000),
    tel VARCHAR2(50),
    photo VARCHAR2(100),
    homepage VARCHAR2(1000)
);

create table sharetrip (
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    resdate TIMESTAMP default sysdate,
    author VARCHAR2(50) not null,
    liked NUMBER,
    replycount NUMBER,
    replyAvailable NUMBER not null  -- NUMBER가 1이면 답글허용, 2이면 답글 막기
);
--------------------------- 외래키 설정 -----------------------------------------

-- sharetrip의 author, reply의 userid를 member의 id에 외래키 지정
ALTER TABLE sharetrip
ADD CONSTRAINT fk_sharetrip_author FOREIGN KEY (author) REFERENCES member(id);
ALTER TABLE reply
ADD CONSTRAINT fk_reply_userid FOREIGN KEY (userid) REFERENCES member(id);

    -- MEMBER 테이블 제약조건 확인 쿼리(PK 확인용)
    SELECT constraint_name, constraint_type, table_name
    FROM user_constraints
    WHERE table_name = 'MEMBER';
    -- SHARETRIP 테이블 제약조건 확인 쿼리(FK 확인용 - R)
    SELECT constraint_name, constraint_type, table_name
    FROM user_constraints
    WHERE table_name = 'SHARETRIP';
    -- REPLY 테이블 제약조건 확인 쿼리(FK 확인용 - R)
    SELECT constraint_name, constraint_type, table_name
    FROM user_constraints
    WHERE table_name = 'REPLY';

-- 외래키 삭제
ALTER TABLE sharetrip DROP CONSTRAINT FK_SHARETRIP_AUTHOR;
ALTER TABLE reply DROP CONSTRAINT FK_REPLY_USERID;

COMMIT;

----------------------------- SELECT * FROM ------------------------------------
-- 회원관리 (암호화 필요)
select * from member;
select * from reply;
-- 부산에가면(wibusan)
select * from attr;         -- 명소(attr)
select * from food;         -- 음식(food)
select * from accom;        -- 숙박(accom)
-- 추천여행(recotour)   
select * from theme;        -- 테마여행(theme)
-- 여행준비(readytour)
select * from guidemap;     -- 가이드북&지도(guidemap)
-- 유용한정보(usefulinfo)
select * from notice;       -- 공지(notice)
select * from event;        -- 축제/행사(event)
select * from sharetrip;    -- 여행공유(이용자게시판)(sharetrip)

-------------------------------- drop table ------------------------------------
-- 회원관리 (암호화 필요)
drop table member;
drop table reply;
-- 부산에가면(wibusan)
drop table attr;         -- 명소(attr)
drop table food;         -- 음식(food)
drop table accom;        -- 숙박(accom)
-- 추천여행(recotour)   
drop table theme;        -- 테마여행(theme)
-- 여행준비(readytour)
drop table guidemap;     -- 가이드북&지도(guidemap)
-- 유용한정보(usefulinfo)
drop table notice;       -- 공지(notice)
drop table event;        -- 축제/행사(event)
drop table sharetrip;    -- 여행공유(이용자게시판)(sharetrip)

------------------------------- DELETE FROM ------------------------------------
-- 회원관리 (암호화 필요)
delete from member;
delete from reply;
-- 부산에가면(wibusan)
delete from attr;         -- 명소(attr)
delete from food;         -- 음식(food)
delete from accom;        -- 숙박(accom)
-- 추천여행(recotour)   
delete from theme;        -- 테마여행(theme)
-- 여행준비(readytour)
delete from guidemap;     -- 가이드북&지도(guidemap)
-- 유용한정보(usefulinfo)
delete from notice;       -- 공지(notice)
delete from event;        -- 축제/행사(event)
delete from sharetrip;    -- 여행공유(이용자게시판)(sharetrip)

-------------------------------- 더미 데이터 생성 ---------------------------------

-- 회원(member) 테이블에 더미 데이터 삽입
INSERT INTO member VALUES (1, 1, 'user1', 'password1', 'nickname1', 'user1@example.com', '010-1234-5678');
INSERT INTO member VALUES (2, 1, 'user2', 'password2', 'nickname2', 'user2@example.com', '010-2345-6789');
INSERT INTO member VALUES (3, 2, 'user3', 'password3', 'nickname3', 'user3@example.com', '010-3456-7890');
INSERT INTO member VALUES (4, 2, 'user4', 'password4', 'nickname4', 'user4@example.com', '010-4567-8901');
INSERT INTO member VALUES (5, 3, 'user5', 'password5', 'nickname5', 'user5@example.com', '010-5678-9012');

-- 댓글(reply) 테이블에 더미 데이터 삽입
INSERT INTO reply VALUES (1, 1, 'user1', default, 'Reply text 1');
INSERT INTO reply VALUES (2, 2, 'user2', default, 'Reply text 2');
INSERT INTO reply VALUES (3, 3, 'user3', default, 'Reply text 3');
INSERT INTO reply VALUES (4, 4, 'user4', default, 'Reply text 4');
INSERT INTO reply VALUES (5, 5, 'user5', default, 'Reply text 5');

-- 명소(attr) 테이블에 더미 데이터 삽입
INSERT INTO attr VALUES (1, 'Attraction 1', 'Subtitle 1', 'photo1.jpg', 'Content 1', 'Address 1', '010-1234-5678', 'Tag 1', 100, 50, 'Monday', 'Traffic info 1', 'Fee info 1', 'Tips 1');
INSERT INTO attr VALUES (2, 'Attraction 2', 'Subtitle 2', 'photo2.jpg', 'Content 2', 'Address 2', '010-2345-6789', 'Tag 2', 150, 70, 'Tuesday', 'Traffic info 2', 'Fee info 2', 'Tips 2');
INSERT INTO attr VALUES (3, 'Attraction 3', 'Subtitle 3', 'photo3.jpg', 'Content 3', 'Address 3', '010-3456-7890', 'Tag 3', 200, 90, 'Wednesday', 'Traffic info 3', 'Fee info 3', 'Tips 3');
INSERT INTO attr VALUES (4, 'Attraction 4', 'Subtitle 4', 'photo4.jpg', 'Content 4', 'Address 4', '010-4567-8901', 'Tag 4', 250, 110, 'Thursday', 'Traffic info 4', 'Fee info 4', 'Tips 4');
INSERT INTO attr VALUES (5, 'Attraction 5', 'Subtitle 5', 'photo5.jpg', 'Content 5', 'Address 5', '010-5678-9012', 'Tag 5', 300, 130, 'Friday', 'Traffic info 5', 'Fee info 5', 'Tips 5');

-- 음식(food) 테이블에 더미 데이터 삽입
INSERT INTO food VALUES (1, 'Food 1', 'Subtitle 1', 'photo1.jpg', 'Content 1', 'Address 1', '010-1234-5678', 'Tag 1', 100, 50, 'Menu 1', 'Open time 1', 'Day off 1');
INSERT INTO food VALUES (2, 'Food 2', 'Subtitle 2', 'photo2.jpg', 'Content 2', 'Address 2', '010-2345-6789', 'Tag 2', 150, 70, 'Menu 2', 'Open time 2', 'Day off 2');
INSERT INTO food VALUES (3, 'Food 3', 'Subtitle 3', 'photo3.jpg', 'Content 3', 'Address 3', '010-3456-7890', 'Tag 3', 200, 90, 'Menu 3', 'Open time 3', 'Day off 3');
INSERT INTO food VALUES (4, 'Food 4', 'Subtitle 4', 'photo4.jpg', 'Content 4', 'Address 4', '010-4567-8901', 'Tag 4', 250, 110, 'Menu 4', 'Open time 4', 'Day off 4');
INSERT INTO food VALUES (5, 'Food 5', 'Subtitle 5', 'photo5.jpg', 'Content 5', 'Address 5', '010-5678-9012', 'Tag 5', 300, 130, 'Menu 5', 'Open time 5', 'Day off 5');

-- 숙박(accom) 테이블에 더미 데이터 삽입
INSERT INTO accom VALUES (1, 'Accommodation 1', 'Subtitle 1', 'photo1.jpg', 'Content 1', 'Address 1', '010-1234-5678', 'Tag 1', 100, 50, 'Business type 1', 'Homepage 1');
INSERT INTO accom VALUES (2, 'Accommodation 2', 'Subtitle 2', 'photo2.jpg', 'Content 2', 'Address 2', '010-2345-6789', 'Tag 2', 150, 70, 'Business type 2', 'Homepage 2');
INSERT INTO accom VALUES (3, 'Accommodation 3', 'Subtitle 3', 'photo3.jpg', 'Content 3', 'Address 3', '010-3456-7890', 'Tag 3', 200, 90, 'Business type 3', 'Homepage 3');
INSERT INTO accom VALUES (4, 'Accommodation 4', 'Subtitle 4', 'photo4.jpg', 'Content 4', 'Address 4', '010-4567-8901', 'Tag 4', 250, 110, 'Business type 4', 'Homepage 4');
INSERT INTO accom VALUES (5, 'Accommodation 5', 'Subtitle 5', 'photo5.jpg', 'Content 5', 'Address 5', '010-5678-9012', 'Tag 5', 300, 130, 'Business type 5', 'Homepage 5');

-- 테마여행(theme) 테이블에 더미 데이터 삽입
INSERT INTO theme VALUES (1, 'Theme 1', 'Subtitle 1', 'photo1.jpg', 'Content 1', 'Tag 1', 100, 50, 'Author 1');
INSERT INTO theme VALUES (2, 'Theme 2', 'Subtitle 2', 'photo2.jpg', 'Content 2', 'Tag 2', 150, 70, 'Author 2');
INSERT INTO theme VALUES (3, 'Theme 3', 'Subtitle 3', 'photo3.jpg', 'Content 3', 'Tag 3', 200, 90, 'Author 3');
INSERT INTO theme VALUES (4, 'Theme 4', 'Subtitle 4', 'photo4.jpg', 'Content 4', 'Tag 4', 250, 110, 'Author 4');
INSERT INTO theme VALUES (5, 'Theme 5', 'Subtitle 5', 'photo5.jpg', 'Content 5', 'Tag 5', 300, 130, 'Author 5');

-- 가이드북&지도(guidemap) 테이블에 더미 데이터 삽입
INSERT INTO guidemap VALUES (1, 'Guidebook 1', 'photo1.jpg', 'Link 1');
INSERT INTO guidemap VALUES (2, 'Guidebook 2', 'photo2.jpg', 'Link 2');
INSERT INTO guidemap VALUES (3, 'Guidebook 3', 'photo3.jpg', 'Link 3');
INSERT INTO guidemap VALUES (4, 'Guidebook 4', 'photo4.jpg', 'Link 4');
INSERT INTO guidemap VALUES (5, 'Guidebook 5', 'photo5.jpg', 'Link 5');

-- 공지(notice) 테이블에 더미 데이터 삽입
INSERT INTO notice VALUES (1, 'Notice 1', 'Content 1', default);
INSERT INTO notice VALUES (2, 'Notice 2', 'Content 2', default);
INSERT INTO notice VALUES (3, 'Notice 3', 'Content 3', default);
INSERT INTO notice VALUES (4, 'Notice 4', 'Content 4', default);
INSERT INTO notice VALUES (5, 'Notice 5', 'Content 5', default);

-- 축제/행사(event) 테이블에 더미 데이터 삽입
INSERT INTO event VALUES (1, 'Event 1', '2024-05-01', 'Content 1', '010-1234-5678', 'photo1.jpg', 'Homepage 1');
INSERT INTO event VALUES (2, 'Event 2', '2024-05-02', 'Content 2', '010-2345-6789', 'photo2.jpg', 'Homepage 2');
INSERT INTO event VALUES (3, 'Event 3', '2024-05-03', 'Content 3', '010-3456-7890', 'photo3.jpg', 'Homepage 3');
INSERT INTO event VALUES (4, 'Event 4', '2024-05-04', 'Content 4', '010-4567-8901', 'photo4.jpg', 'Homepage 4');
INSERT INTO event VALUES (5, 'Event 5', '2024-05-05', 'Content 5', '010-5678-9012', 'photo5.jpg', 'Homepage 5');

-- 공유여행(sharetrip) 테이블에 더미 데이터 삽입
INSERT INTO sharetrip VALUES (1, 'Share Trip 1', default, 'user1', 100, 20, 1);
INSERT INTO sharetrip VALUES (2, 'Share Trip 2', default, 'user2', 200, 30, 1);
INSERT INTO sharetrip VALUES (3, 'Share Trip 3', default, 'user3', 300, 40, 1);
INSERT INTO sharetrip VALUES (4, 'Share Trip 4', default, 'user4', 400, 50, 1);
INSERT INTO sharetrip VALUES (5, 'Share Trip 5', default, 'user5', 500, 60, 1);
