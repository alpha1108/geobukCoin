

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

