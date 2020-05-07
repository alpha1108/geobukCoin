
-- 종목
CREATE TABLE geoevent(
	-- 종목번호
	geoeventnum number not null,
	-- 종목
	event varchar2(50) not null,
	primary key (eventnum)
);
create sequence eventnum_seq;


-- 떡상시간
CREATE TABLE geotime
(
	-- 시간번호
	geotimenum number not null,
	-- 종목번호
	geoeventnum number not null,
	-- 최소가격
	minprice number not null, 
	-- 최대가격
	maxprice number not null,
	-- 떡상한시간대
	ricecakeup date,  
	-- 하락한시간대
	ricecakedown date,
	-- 메모기능
	notepad clob,
	-- 날짜
	regdate date,
	primary key (eventnum)
);
create sequence geotimenum_seq;    


ALTER TABLE commLikes
	ADD FOREIGN KEY (commnum)
	REFERENCES comments (commnum)
;



=======================================================

-- 거북목록
CREATE TABLE geoWrite
(
	-- 종목번호
	eventnum number not null,
	-- 종목
	event varchar2(50) not null,
	-- 최소가격
	minprice number not null, 
	-- 최대가격
	maxprice number not null,
	-- 떡상한시간대
	ricecakeup date,  
	-- 하락한시간대
	ricecakedown date,
	-- 메모기능
	notepad clob,
	-- 날짜
	regdate date,
	primary key (eventnum)
);
create sequence eventnum_seq;