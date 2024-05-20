---------------------------------- 테이블 생성 -----------------------------------
-- 회원관리 (암호화 필요)
CREATE TABLE member (
    id VARCHAR2(20) PRIMARY KEY NOT NULL,   -- 회원 아이디(PK, board의 author, reply의 id에 의해 참조됨)
    pw VARCHAR2(1000) NOT NULL,         -- 회원 비밀번호
    name VARCHAR2(50) NOT NULL,         -- 회원명
    email VARCHAR2(100),                -- 회원 이메일
    tel VARCHAR2(30),                   -- 회원 연락처
    addr VARCHAR2(100),                 -- 회원 주소
    postcode VARCHAR2(100),             -- 우편번호
    regdate TIMESTAMP default sysdate   -- 가입일자
);

create table reply (    -- 댓글(reply)
    boardNo NUMBER NOT NULL,            -- 게시글 번호(sharetrip의 no에 외래키 지정. cascade)
    no NUMBER PRIMARY KEY NOT NULL,     -- 파일 번호
    regdate TIMESTAMP default sysdate,  -- 등록일자
    id VARCHAR(20) NOT NULL,            -- 작성자 아이디(member(id)에 fk, cascade)
    content VARCHAR2(2000) NOT NULL     -- 댓글 내용
);
    
-- 부산에가면(wibusan)
create table attr(     -- 명소(attr)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    subtitle VARCHAR2(200),
    content varchar2(1000),
    addr varchar2(200) not null,
    tel varchar2(30),
    reltag varchar2(50),
    visited number,
    liked number,
    dayoff varchar2(500) not null,
    traffic varchar(1000),
    fee varchar2(500) not null,
    tips varchar2(1000),
    photo VARCHAR(1000)
);


create table food (     -- 음식(food)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    subtitle VARCHAR2(200),
    content varchar2(1000),
    addr varchar2(200) not null,
    tel varchar2(30),
    reltag varchar2(50),
    visited number,
    liked number,
    mainmenu varchar2(500) not null,
    ontime varchar2(1000) not null,
    dayoff varchar2(500) not null,
    photo VARCHAR(1000)
);


create table accom (    -- 숙박(accom)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    subtitle VARCHAR2(200),
    content varchar2(1000),
    addr varchar2(200) not null,
    tel varchar2(30),
    reltag varchar2(50),
    visited number,
    liked number,
    busitype varchar2(50) not null,
    homepage varchar2(1000),
    photo VARCHAR(1000)
);

-- 추천여행(recotour)   
create table theme (    -- 테마여행(theme)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    subtitle VARCHAR2(200) not null,
    content VARCHAR2(2000),
    reltag VARCHAR2(100),
    visited NUMBER,
    liked NUMBER,
    photo VARCHAR(1000)
);

-- 여행준비(readytour)
create table guidemap (     -- 가이드북&지도(guidemap)
    no NUMBER primary key,
    name VARCHAR2(50) not null,
    link VARCHAR2(1000) not null,
    photo VARCHAR(1000)
);

-- 유용한정보(usefulinfo)
create table notice (       -- 공지(notice)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    content VARCHAR2(2000),
    regdate TIMESTAMP default sysdate
);

create table event (        -- 축제/행사(event)
    no NUMBER primary key,
    title VARCHAR2(200) not null,
    ondate varchar(30) not null,
    content VARCHAR2(2000),
    tel VARCHAR2(50),
    homepage VARCHAR2(1000),
    photo VARCHAR(1000)
);

create table sharetrip (    -- 여행 공유 게시판
    no NUMBER primary key,
    id VARCHAR(20) NOT NULL,
    title VARCHAR2(200) not null,
    regdate TIMESTAMP default sysdate,
    liked NUMBER,
    replycount NUMBER,
    photo VARCHAR(1000)
);
---------------------------------- 시퀀스 생성 -----------------------------------
-- reply 테이블 시퀀스
CREATE SEQUENCE replyseq START WITH 1 INCREMENT BY 1;
-- attr 테이블 시퀀스
CREATE SEQUENCE attrseq START WITH 1 INCREMENT BY 1;
-- food 테이블 시퀀스
CREATE SEQUENCE foodseq START WITH 1 INCREMENT BY 1;
-- accom 테이블 시퀀스
CREATE SEQUENCE accomseq START WITH 1 INCREMENT BY 1;
-- theme 테이블 시퀀스
CREATE SEQUENCE themeseq START WITH 1 INCREMENT BY 1;
-- guidemap 테이블 시퀀스
CREATE SEQUENCE guidemapseq START WITH 1 INCREMENT BY 1;
-- notice 테이블 시퀀스
CREATE SEQUENCE noticeseq START WITH 1 INCREMENT BY 1;
-- event 테이블 시퀀스
CREATE SEQUENCE eventseq START WITH 1 INCREMENT BY 1;
-- sharetrip 테이블 시퀀스
CREATE SEQUENCE sharetripseq START WITH 1 INCREMENT BY 1;

---------------------------- 외래키 설정 -----------------------------------------
-- reply 테이블의 boardNo를 sharetrip 테이블의 no에 외래키로 지정
ALTER TABLE reply
ADD CONSTRAINT fk_reply_boardNo
FOREIGN KEY (boardNo)
REFERENCES sharetrip (no)
ON DELETE CASCADE;

COMMIT;

----------------------------- SELECT * FROM ------------------------------------
-- 회원관리 (암호화 필요)
select * from member;
select * from reply;
select * from atcfile;
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

-------------------------------- 더미 데이터 생성 ---------------------------------
-- 회원관리(member)
INSERT INTO member VALUES ('user1', 'password1', '홍길동', 'user1@example.com', '010-1234-5678', '서울시 강남구', '12345', SYSDATE);
INSERT INTO member VALUES ('user2', 'password2', '김철수', 'user2@example.com', '010-2345-6789', '부산시 해운대구', '23456', SYSDATE);
INSERT INTO member VALUES ('user3', 'password3', '이영희', 'user3@example.com', '010-3456-7890', '대전시 서구', '34567', SYSDATE);

-- 댓글(reply)(sharetrip 먼저 삽입)
INSERT INTO reply VALUES (1, replyseq.nextval, SYSDATE, '첫 번째 댓글입니다.');
INSERT INTO reply VALUES (1, replyseq.nextval, SYSDATE, '두 번째 댓글입니다.');
INSERT INTO reply VALUES (2, replyseq.nextval, SYSDATE, '세 번째 댓글입니다.');

-- 명소(attr)
INSERT INTO attr VALUES (attrseq.nextval, '명소1', '부제1', '명소1에 대한 설명', '서울시', '010-1234-5678', '태그1', 10, 5, '매주 월요일', '교통 정보1', '5000원', '팁1','사진1');
INSERT INTO attr VALUES (attrseq.nextval, '명소2', '부제2', '명소2에 대한 설명', '부산시', '010-2345-6789', '태그2', 20, 15, '매주 화요일', '교통 정보2', '10000원', '팁2','사진2');
INSERT INTO attr VALUES (attrseq.nextval, '명소3', '부제3', '명소3에 대한 설명', '대구시', '010-3456-7890', '태그3', 30, 25, '매주 수요일', '교통 정보3', '15000원', '팁3','사진3');

-- 음식(food)
INSERT INTO food VALUES (foodseq.nextval, '음식1', '부제1', '음식1에 대한 설명', '서울시', '010-1234-5678', '태그1', 10, 5, '메인 메뉴1', '운영 시간1', '매주 월요일','사진1');
INSERT INTO food VALUES (foodseq.nextval, '음식2', '부제2', '음식2에 대한 설명', '부산시', '010-2345-6789', '태그2', 20, 15, '메인 메뉴2', '운영 시간2', '매주 화요일','사진2');
INSERT INTO food VALUES (foodseq.nextval, '음식3', '부제3', '음식3에 대한 설명', '대구시', '010-3456-7890', '태그3', 30, 25, '메인 메뉴3', '운영 시간3', '매주 수요일','사진3');

-- 숙박(accom)
INSERT INTO accom VALUES (accomseq.nextval, '숙박1', '부제1', '숙박1에 대한 설명', '서울시', '010-1234-5678', '태그1', 10, 5, '유형1', 'http://homepage1.com','사진1');
INSERT INTO accom VALUES (accomseq.nextval, '숙박2', '부제2', '숙박2에 대한 설명', '부산시', '010-2345-6789', '태그2', 20, 15, '유형2', 'http://homepage2.com','사진2');
INSERT INTO accom VALUES (accomseq.nextval, '숙박3', '부제3', '숙박3에 대한 설명', '대구시', '010-3456-7890', '태그3', 30, 25, '유형3', 'http://homepage3.com','사진3');

-- 테마여행(theme)
INSERT INTO theme VALUES (themeseq.nextval, '테마여행1', '부제1', '테마여행1에 대한 설명', '태그1', 10, 5,'사진1');
INSERT INTO theme VALUES (themeseq.nextval, '테마여행2', '부제2', '테마여행2에 대한 설명', '태그2', 20, 15,'사진2');
INSERT INTO theme VALUES (themeseq.nextval, '테마여행3', '부제3', '테마여행3에 대한 설명', '태그3', 30, 25,'사진3');

-- 가이드북&지도(guidemap)
INSERT INTO guidemap VALUES (guidemapseq.nextval, '가이드북1', 'http://link1.com','사진1');
INSERT INTO guidemap VALUES (guidemapseq.nextval, '가이드북2', 'http://link2.com','사진2');
INSERT INTO guidemap VALUES (guidemapseq.nextval, '가이드북3', 'http://link3.com','사진3');

-- 공지(notice)
INSERT INTO notice VALUES (noticeseq.nextval, '공지사항1', '공지사항1 내용', SYSDATE);
INSERT INTO notice VALUES (noticeseq.nextval, '공지사항2', '공지사항2 내용', SYSDATE);
INSERT INTO notice VALUES (noticeseq.nextval, '공지사항3', '공지사항3 내용', SYSDATE);

-- 축제/행사(event)
INSERT INTO event VALUES (eventseq.nextval, '행사1', '2024-06-01', '행사1 내용', '010-1234-5678', 'http://homepage1.com','사진1');
INSERT INTO event VALUES (eventseq.nextval, '행사2', '2024-07-01', '행사2 내용', '010-2345-6789', 'http://homepage2.com','사진2');
INSERT INTO event VALUES (eventseq.nextval, '행사3', '2024-08-01', '행사3 내용', '010-3456-7890', 'http://homepage3.com','사진3');

-- 여행 공유 게시판(sharetrip)
INSERT INTO sharetrip VALUES (sharetripseq.nextval, '여행 공유1', SYSDATE, 10, 5,'사진1');
INSERT INTO sharetrip VALUES (sharetripseq.nextval, '여행 공유2', SYSDATE, 20, 15,'사진2');
INSERT INTO sharetrip VALUES (sharetripseq.nextval, '여행 공유3', SYSDATE, 30, 25,'사진3');

commit;