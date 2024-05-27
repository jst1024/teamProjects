create database team52;

use team52;
---------------------------------- 테이블 생성 -----------------------------------
-- 회원관리 (암호화 필요)
CREATE TABLE member (
    id VARCHAR(20) PRIMARY KEY NOT NULL,   -- 회원 아이디(PK, board의 author, reply의 id에 의해 참조됨)
    pw VARCHAR(1000) NOT NULL,             -- 회원 비밀번호
    name VARCHAR(50) NOT NULL,             -- 회원명
    email VARCHAR(100),                    -- 회원 이메일
    tel VARCHAR(30),                       -- 회원 연락처
    addr VARCHAR(100),                     -- 회원 주소
    postcode VARCHAR(100),                 -- 우편번호
    regdate DATETIME DEFAULT CURRENT_TIMESTAMP -- 가입일자
);

create table sharetrip (    -- 여행 공유 게시판
    no INT AUTO_INCREMENT PRIMARY KEY,
    id VARCHAR(20) NOT NULL,
    title VARCHAR(200) NOT NULL,
    regdate DATETIME DEFAULT CURRENT_TIMESTAMP,
    liked INT,
    replycount INT,
    photo VARCHAR(1000)
);

create table reply (
    boardNo INT NOT NULL,                    -- 게시글 번호(sharetrip의 no에 외래키 지정. cascade)
    no INT AUTO_INCREMENT NOT NULL,          -- 댓글 번호
    id VARCHAR(20) NOT NULL,                 -- 작성자 아이디(member(id)에 fk, cascade)
    regdate DATETIME DEFAULT CURRENT_TIMESTAMP,  -- 등록일자
    content VARCHAR(2000) NOT NULL,          -- 댓글 내용
    PRIMARY KEY (no, id),                    -- 복합 기본 키 지정
    CONSTRAINT fk_reply_boardNo FOREIGN KEY (boardNo) REFERENCES sharetrip(no) ON DELETE CASCADE,
    CONSTRAINT fk_reply_id FOREIGN KEY (id) REFERENCES member(id) ON DELETE CASCADE
);

-- 부산에가면(wibusan)
create table attr(     -- 명소(attr)
    no INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    subtitle VARCHAR(200),
    content VARCHAR(4000),
    addr VARCHAR(200) NOT NULL,
    tel VARCHAR(30),
    reltag VARCHAR(50),
    visited INT,
    liked INT,
    dayoff VARCHAR(500) NOT NULL,
    traffic VARCHAR(1000),
    fee VARCHAR(500) NOT NULL,
    tips VARCHAR(1000),
    photo VARCHAR(1000)
);

create table food (     -- 음식(food)
    no INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    subtitle VARCHAR(200),
    content VARCHAR(4000),
    addr VARCHAR(200) NOT NULL,
    tel VARCHAR(30),
    reltag VARCHAR(50),
    visited INT,
    liked INT,
    mainmenu VARCHAR(500) NOT NULL,
    ontime VARCHAR(1000) NOT NULL,
    dayoff VARCHAR(500),
    photo VARCHAR(1000)
);

create table accom (    -- 숙박(accom)
    no INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    subtitle VARCHAR(200),
    content VARCHAR(4000),
    addr VARCHAR(200) NOT NULL,
    tel VARCHAR(30),
    reltag VARCHAR(50),
    visited INT,
    liked INT,
    busitype VARCHAR(50) NOT NULL,
    homepage VARCHAR(1000),
    photo VARCHAR(1000)
);

-- 추천여행(recotour)   
create table theme (    -- 테마여행(theme)
    no INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    subtitle VARCHAR(200) NOT NULL,
    content VARCHAR(2000),
    reltag VARCHAR(100),
    visited INT,
    liked INT,
    photo VARCHAR(1000)
);

-- 여행준비(readytour)
create table guidemap (     -- 가이드북&지도(guidemap)
    no INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    link VARCHAR(1000) NOT NULL,
    photo VARCHAR(1000)
);

-- 유용한정보(usefulinfo)
create table notice (       -- 공지(notice)
    no INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(2000),
    regdate DATETIME DEFAULT CURRENT_TIMESTAMP
);

create table event (        -- 축제/행사(event)
    no INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    ondate VARCHAR(30) NOT NULL,
    content VARCHAR(2000),
    tel VARCHAR(50),
    homepage VARCHAR(1000),
    photo VARCHAR(1000)
);

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

commit;
