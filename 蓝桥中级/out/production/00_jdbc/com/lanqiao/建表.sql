--ii.  Teacher(tno��ʦ���, tname��ʦ����, ����, ְ��)
CREATE TABLE TEACHER(
       TNO NUMBER(5) NOT NULL,
       TNAME VARCHAR2(10) NOT NULL,
       TPASSWORD NUMBER(10) NOT NULL,
       JOB VARCHAR2(10) NOT NULL
)
--iv.	Course�γ̱�(cno�γ̺�PK��cname�γ�����ѧ��, ѡ����ʼʱ��, ѡ�ν���ʱ�䣬tno��ʦ��FK)
CREATE TABLE COURSE(
       CNO VARCHAR(5) NOT NULL,
       CNAME VARCHAR2(10) NOT NULL,
       CREDIT NUMBER(10) NOT NULL,
       FROMDATE DATE NOT NULL,
       ENDDAY DATE NOT NULL,
       TNO NUMBER(5) NOT NULL
)
--iii.	Score�ɼ���cno�γ̱��FK��snoѧ��FK�� �ɼ���
CREATE TABLE SCORE(
       CNO NUMBER(5) NOT NULL,
       CNAME VARCHAR2(10) NOT NULL,
       SCORE NUMBER(5) NOT NULL
)

--v.	Manager����Ա��mno�˺š�mname�û��������룩
CREATE TABLE MANAGER(
       MNO NUMBER(5) NOT NULL,
       MNAME VARCHAR2(10) NOT NULL,
       MPASSWORD NUMBER(5) NOT NULL
)