--ii.  Teacher(tno教师编号, tname教师姓名, 密码, 职称)
CREATE TABLE TEACHER(
       TNO NUMBER(5) NOT NULL,
       TNAME VARCHAR2(10) NOT NULL,
       TPASSWORD NUMBER(10) NOT NULL,
       JOB VARCHAR2(10) NOT NULL
)
--iv.	Course课程表(cno课程号PK，cname课程名，学分, 选课起始时间, 选课结束时间，tno教师号FK)
CREATE TABLE COURSE(
       CNO VARCHAR(5) NOT NULL,
       CNAME VARCHAR2(10) NOT NULL,
       CREDIT NUMBER(10) NOT NULL,
       FROMDATE DATE NOT NULL,
       ENDDAY DATE NOT NULL,
       TNO NUMBER(5) NOT NULL
)
--iii.	Score成绩表（cno课程编号FK，sno学号FK， 成绩）
CREATE TABLE SCORE(
       CNO NUMBER(5) NOT NULL,
       CNAME VARCHAR2(10) NOT NULL,
       SCORE NUMBER(5) NOT NULL
)

--v.	Manager管理员表（mno账号、mname用户名、密码）
CREATE TABLE MANAGER(
       MNO NUMBER(5) NOT NULL,
       MNAME VARCHAR2(10) NOT NULL,
       MPASSWORD NUMBER(5) NOT NULL
)