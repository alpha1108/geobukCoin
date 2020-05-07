
CREATE TABLE geowrite
(
   -- 종목번호
   eventnum number not null,
   -- 종목
   event varchar2(50) not null,
   -- 최소가격
   minprice varchar2(20) not null, 
   -- 최대가격
   maxprice varchar2(20) not null,
   -- 떡상한날짜(시작일)
   ricecakeup date,  
   -- 하락한날짜(종료일)
   ricecakedown date,
   -- 메모기능
   notepad clob,
   -- 날짜
   regdate date,
   
   primary key (eventnum)
);
create sequence eventnum_seq;

ALTER TABLE geowrite add (status);
ALTER TABLE geowrite MODIFY (status default 'Y');

=======================================================

insert into geowrite values(eventnum_seq.nextval,'더마이다스터치골드(TMTG)','6.3','24.70','20/04/29','20/05/03',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'다빈치(DAC)','1.664','2.440','20/04/21','20/04/22',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'제로엑스(ZRX)','246.5','297.1','20/05/06','20/05/07',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'루나(DAC)','176.9','272.1','20/04/02','20/04/19',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'스와이프(SXP)','453.3','1039.5','20/04/03','20/04/03',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'베이직(BASIC)','5.183','6.089','20/05/06','20/05/06',null,'20/05/07','Y');

insert into geowrite values(eventnum_seq.nextval,'플레타(FLETA)','5.096','5.507','20/04/21','20/04/21','단 하루동안 10%정도 먹는다','20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'펑션엑스(FX)','62.03','72.01','20/04/10','20/05/10','단 하루동안 10%정도 먹는다','20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'원루트(RNT)','9.02','13.71','20/05/05','20/05/05','하루사이에 많이 오른다','20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'비체인(VET)','3.872','4.577','20/04/06','20/04/07','한 2틀정도 사이로 15%는 먹는다','20/05/07','Y');