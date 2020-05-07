
-- ����
CREATE TABLE geoevent(
	-- �����ȣ
	geoeventnum number not null,
	-- ����
	event varchar2(50) not null,
	primary key (eventnum)
);
create sequence eventnum_seq;


-- ����ð�
CREATE TABLE geotime
(
	-- �ð���ȣ
	geotimenum number not null,
	-- �����ȣ
	geoeventnum number not null,
	-- �ּҰ���
	minprice number not null, 
	-- �ִ밡��
	maxprice number not null,
	-- �����ѽð���
	ricecakeup date,  
	-- �϶��ѽð���
	ricecakedown date,
	-- �޸���
	notepad clob,
	-- ��¥
	regdate date,
	primary key (eventnum)
);
create sequence geotimenum_seq;    


ALTER TABLE commLikes
	ADD FOREIGN KEY (commnum)
	REFERENCES comments (commnum)
;



=======================================================

-- �źϸ��
CREATE TABLE geoWrite
(
	-- �����ȣ
	eventnum number not null,
	-- ����
	event varchar2(50) not null,
	-- �ּҰ���
	minprice number not null, 
	-- �ִ밡��
	maxprice number not null,
	-- �����ѽð���
	ricecakeup date,  
	-- �϶��ѽð���
	ricecakedown date,
	-- �޸���
	notepad clob,
	-- ��¥
	regdate date,
	primary key (eventnum)
);
create sequence eventnum_seq;