
CREATE TABLE geowrite
(
   -- �����ȣ
   eventnum number not null,
   -- ����
   event varchar2(50) not null,
   -- �ּҰ���
   minprice varchar2(20) not null, 
   -- �ִ밡��
   maxprice varchar2(20) not null,
   -- �����ѳ�¥(������)
   ricecakeup date,  
   -- �϶��ѳ�¥(������)
   ricecakedown date,
   -- �޸���
   notepad clob,
   -- ��¥
   regdate date,
   
   primary key (eventnum)
);
create sequence eventnum_seq;

ALTER TABLE geowrite add (status);
ALTER TABLE geowrite MODIFY (status default 'Y');

=======================================================

insert into geowrite values(eventnum_seq.nextval,'�����̴ٽ���ġ���(TMTG)','6.3','24.70','20/04/29','20/05/03',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'�ٺ�ġ(DAC)','1.664','2.440','20/04/21','20/04/22',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'���ο���(ZRX)','246.5','297.1','20/05/06','20/05/07',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'�糪(DAC)','176.9','272.1','20/04/02','20/04/19',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'��������(SXP)','453.3','1039.5','20/04/03','20/04/03',null,'20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'������(BASIC)','5.183','6.089','20/05/06','20/05/06',null,'20/05/07','Y');

insert into geowrite values(eventnum_seq.nextval,'�÷�Ÿ(FLETA)','5.096','5.507','20/04/21','20/04/21','�� �Ϸ絿�� 10%���� �Դ´�','20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'��ǿ���(FX)','62.03','72.01','20/04/10','20/05/10','�� �Ϸ絿�� 10%���� �Դ´�','20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'����Ʈ(RNT)','9.02','13.71','20/05/05','20/05/05','�Ϸ���̿� ���� ������','20/05/07','Y');
insert into geowrite values(eventnum_seq.nextval,'��ü��(VET)','3.872','4.577','20/04/06','20/04/07','�� 2Ʋ���� ���̷� 15%�� �Դ´�','20/05/07','Y');