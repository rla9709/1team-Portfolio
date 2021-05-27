--------------------------------------------------------
--  ������ ������ - ȭ����-5��-25-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "BOARD" 
   (	"B_NO" NUMBER, 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"DATE" DATE, 
	"COUNT" NUMBER(5,0), 
	"GOOD" NUMBER(3,0), 
	"TITLE" VARCHAR2(60 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"BOARD_TYPE" VARCHAR2(20 BYTE), 
	"PWD" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "BOARD"."B_NO" IS '�������� �ڵ����� ����
ROWNUM���� ȭ�鿡 �Ѹ����������� �⺻Ű�� ���� ����� ����';
--------------------------------------------------------
--  DDL for Table BOARDCOMMENT
--------------------------------------------------------

  CREATE TABLE "BOARDCOMMENT" 
   (	"B_NO" NUMBER, 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"C_CONTENT" VARCHAR2(100 BYTE), 
	"C_TIME" DATE, 
	"C_NO" NUMBER(4,0)
   ) ;

   COMMENT ON COLUMN "BOARDCOMMENT"."B_NO" IS '�������� �ڵ����� ����
ROWNUM���� ȭ�鿡 �Ѹ����������� �⺻Ű�� ���� ����� ����';
--------------------------------------------------------
--  DDL for Table CHATPROFILE
--------------------------------------------------------

  CREATE TABLE "CHATPROFILE" 
   (	"REG_DATE" DATE, 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"MBTI" VARCHAR2(4 BYTE), 
	"P_CONTENT" VARCHAR2(60 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FAQTABLE
--------------------------------------------------------

  CREATE TABLE "FAQTABLE" 
   (	"F_NO" NUMBER(3,0), 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"F_TITLE" VARCHAR2(40 BYTE), 
	"F_CONTENT" VARCHAR2(4000 BYTE), 
	"F_DATE" DATE
   ) ;

   COMMENT ON COLUMN "FAQTABLE"."USER_NICK" IS '��ڸ� ���� �ø� �� �ְ� ����';
--------------------------------------------------------
--  DDL for Table GOODCHECK
--------------------------------------------------------

  CREATE TABLE "GOODCHECK" 
   (	"GOOD_USER_NICK" VARCHAR2(20 BYTE), 
	"GOOD_B_NO" NUMBER(4,0)
   );
--------------------------------------------------------
--  DDL for Table MESSAGE
--------------------------------------------------------

  CREATE TABLE "MESSAGE" 
   (	"CHATNO" NUMBER, 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"TO_NICK" VARCHAR2(20 BYTE), 
	"CHAT_CONTENT" VARCHAR2(300 BYTE), 
	"CHAT_TIME" DATE, 
	"CHATREAD" NUMBER
   );
--------------------------------------------------------
--  DDL for Table NOTIFICATION
--------------------------------------------------------

  CREATE TABLE "NOTIFICATION" 
   (	"N_NO" NUMBER, 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"DATE" DATE, 
	"N_COUNT" NUMBER(3,0), 
	"N_TITLE" VARCHAR2(60 BYTE), 
	"N_CONTENT" VARCHAR2(4000 BYTE), 
	"NOTICE_TYPE" VARCHAR2(20 BYTE), 
	"N_PWD" VARCHAR2(20 BYTE)
   );
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "QNA" 
   (	"QNA_NO" NUMBER(3,0), 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"QNA_TITLE" VARCHAR2(60 BYTE), 
	"QNA_CONTENT" VARCHAR2(4000 BYTE), 
	"DATE" DATE, 
	"QNA_COUNT" NUMBER(5,0), 
	"QUESTION_TYPE" VARCHAR2(20 BYTE), 
	"QNA_PWD" VARCHAR2(20 BYTE)
   );
--------------------------------------------------------
--  DDL for Table QNACOMMENT
--------------------------------------------------------

  CREATE TABLE "QNACOMMENT" 
   (	"QNA_NO" NUMBER, 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"QNA_C_CONTENT" VARCHAR2(3000 BYTE), 
	"QNA_C_TIME" DATE, 
	"QNA_C_NO" NUMBER(4,0)
   );
--------------------------------------------------------
--  DDL for Table USERTABLE
--------------------------------------------------------

  CREATE TABLE "USERTABLE" 
   (	"USER_NICK" VARCHAR2(20 BYTE), 
	"USER_PW" VARCHAR2(20 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"REG_DATE" DATE, 
	"UP_DATE" DATE, 
	"PHONENUM" VARCHAR2(11 BYTE), 
	"MBTI" VARCHAR2(4 BYTE), 
	"USER_EMAIL" VARCHAR2(50 BYTE), 
	"USER_SEX" VARCHAR2(6 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"USER_EMAIL2" VARCHAR2(50 BYTE), 
	"ADDR1" VARCHAR2(100 BYTE), 
	"ADDR2" VARCHAR2(100 BYTE), 
	"ADDR3" VARCHAR2(100 BYTE), 
	"ADDR4" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "USERTABLE"."REG_DATE" IS 'YYYY-MM-DD HH:MI ����';
   COMMENT ON COLUMN "USERTABLE"."PHONENUM" IS '��ȭ��ȣ ���� �� -�����ϰ� 11�ڸ� �Է��ϰԲ� �ȳ��ؾ���';
   COMMENT ON COLUMN "USERTABLE"."USER_SEX" IS '�� �Ǵ� ���� ����';
REM INSERTING into BOARD
SET DEFINE OFF
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (144,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (145,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (146,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (147,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (148,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (149,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (150,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (151,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (152,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (143,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (46,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (48,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (47,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (49,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (50,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (51,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (52,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (53,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (54,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (55,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (56,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (57,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (58,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (59,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (60,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (61,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (62,'admin1',to_date('21/05/10','RR/MM/DD'),1,1,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (63,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (64,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (65,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (66,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (67,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (68,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (69,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (70,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (71,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (72,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (73,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (74,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (76,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (77,'admin1',to_date('21/05/10','RR/MM/DD'),1,1,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (78,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (79,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (80,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (81,'admin1',to_date('21/05/10','RR/MM/DD'),1,1,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (82,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (83,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (84,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (85,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (86,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (87,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (88,'admin1',to_date('21/05/10','RR/MM/DD'),1,2,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (89,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (90,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (91,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (92,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (93,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (94,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (95,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (96,'admin1',to_date('21/05/10','RR/MM/DD'),2,1,'����','����','dipl','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (97,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (98,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (99,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (100,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (101,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (102,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (103,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (104,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (105,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (106,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (107,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (108,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (109,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (110,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (111,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (112,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (113,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (114,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (115,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (116,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (117,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (118,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (119,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (120,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (121,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (122,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','admin','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (123,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (124,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (125,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (126,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (127,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (128,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (129,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (130,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (131,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (132,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (133,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (134,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (135,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (136,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (137,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (138,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (139,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (140,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (141,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (142,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','exp','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (1,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (2,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (3,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (4,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (5,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (6,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (7,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (8,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (9,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (10,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (11,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (12,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (13,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (14,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (15,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (16,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (17,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (18,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (19,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (20,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (21,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (22,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (23,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (24,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (25,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (26,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (27,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (28,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','free','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (29,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (30,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (31,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (32,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (33,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (34,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (35,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (36,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (37,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (38,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (39,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (40,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (41,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (42,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (43,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (44,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
Insert into BOARD (B_NO,USER_NICK,"DATE",COUNT,GOOD,TITLE,CONTENT,BOARD_TYPE,PWD) values (45,'admin1',to_date('21/05/10','RR/MM/DD'),0,0,'����','����','anal','1234');
REM INSERTING into BOARDCOMMENT
SET DEFINE OFF;
REM INSERTING into CHATPROFILE
SET DEFINE OFF;
Insert into CHATPROFILE (REG_DATE,USER_NICK,MBTI,P_CONTENT) values (to_date('21/05/17','RR/MM/DD'),'test2','ISFJ','����������');
Insert into CHATPROFILE (REG_DATE,USER_NICK,MBTI,P_CONTENT) values (to_date('21/05/21','RR/MM/DD'),'test1','ISFP','�ȳ��ϼ���');
REM INSERTING into FAQTABLE
SET DEFINE OFF;
REM INSERTING into GOODCHECK
SET DEFINE OFF;
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test4',113);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test2',227);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test2',120);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test5',111);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test5',117);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test5',113);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test1',242);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test1',239);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test1',237);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test1',229);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test1',231);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test1',227);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test2',242);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test2',239);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test3',206);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test3',205);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test3',199);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test3',192);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test3',195);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test3',196);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test4',117);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test4',111);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test1',242);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('test4',172);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('admin2',62);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('admin2',81);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('admin2',96);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('admin2',88);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('admin3',88);
Insert into GOODCHECK (GOOD_USER_NICK,GOOD_B_NO) values ('admin2',77);
REM INSERTING into MESSAGE
SET DEFINE OFF;
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (1,'admin1','�뿬�ǹٶ��','�ȳ��ϼſ�',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (2,'admin1','�뿬�ǹٶ��','���� admin1����Դϴ� ����� 
�����ʴϱ�?',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (3,'admin1','�뿬�ǹٶ��','����� �����ʴϱ�!',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (4,'�뿬�ǹٶ��','admin1','����
',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (5,'�뿬�ǹٶ��','admin1','�뿬�� �ǹٶ���Դϴ�.',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (6,'�뿬�ǹٶ��','admin1','������ �ݰ����ϴ�.',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (7,'admin1','�뿬�ǹٶ��','���',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (8,'admin1','�뿬�ǹٶ��','���� ��',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (9,'admin1','�뿬�ǹٶ��','����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (10,'admin1','�뿬�ǹٶ��','����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (11,'admin1','�뿬�ǹٶ��','����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (12,'admin1','�뿬�ǹٶ��','����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (13,'admin1','�뿬�ǹٶ��','����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (14,'admin1','�뿬�ǹٶ��','����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (15,'�뿬�ǹٶ��','admin1','����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (16,'�뿬�ǹٶ��','admin1','��������Ѥ�',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (17,'�뿬�ǹٶ��','admin1','������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (18,'�뿬�ǹٶ��','admin1','����������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (19,'admin1','�뿬�ǹٶ��','��������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (20,'admin1','�뿬�ǹٶ��','������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (21,'�뿬�ǹٶ��','admin1','��������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (22,'admin1','�뿬�ǹٶ��','����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (23,'�뿬�ǹٶ��','admin1','��������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (24,'�뿬�ǹٶ��','admin1','��������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (25,'�뿬�ǹٶ��','admin1','�ֽű��� ������
',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (26,'admin1','�뿬�ǹٶ��','����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (27,'admin1','�뿬�ǹٶ��','����������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (28,'�뿬�ǹٶ��','admin1','dgdgdg',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (29,'admin1','�뿬�ǹٶ��','�ȳ��ϼ���',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (30,'�뿬�ǹٶ��','admin1','��������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (31,'�뿬�ǹٶ��','admin1','�ű�����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (32,'admin1','�뿬�ǹٶ��','��',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (33,'�뿬�ǹٶ��','admin1','������ �̵�����',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (34,'admin1','�뿬�ǹٶ��','�����ű��ؿ�',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (35,'�뿬�ǹٶ��','admin1','ajax�� �ٷ�
',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (36,'�뿬�ǹٶ��','admin1','������ ���۵ǰ�
',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (37,'�뿬�ǹٶ��','admin1','�߾�� �������� ī��׳� �����ϰ�',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (38,'�뿬�ǹٶ��','admin1','��������������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (39,'admin1','�뿬�ǹٶ��','�� .. ��¥ �� ...',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (40,'�뿬�ǹٶ��','admin1','�ߵǳ׿�',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (41,'admin1','�뿬�ǹٶ��','������������
',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (42,'�뿬�ǹٶ��','admin1','���� �׽�Ʈ�����մϴ�.',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (43,'admin1','�뿬�ǹٶ��','�ܳ�',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (44,'admin1','�뿬�ǹٶ��','��...��',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (45,'admin1','�뿬�ǹٶ��','������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (46,'�뿬�ǹٶ��','admin1','��...��',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (47,'�뿬�ǹٶ��','admin1','������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (48,'admin1','�뿬�ǹٶ��','��������',to_date('21/05/14','RR/MM/DD'),1);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (49,'admin1','�뿬�ǹٶ��','gdgd
',to_date('21/05/14','RR/MM/DD'),0);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (50,'admin1','�뿬�ǹٶ��','gdgd',to_date('21/05/14','RR/MM/DD'),0);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (51,'admin1','�뿬�ǹٶ��','�ȳ��ϼ���
���� 
�����ϱ��',to_date('21/05/14','RR/MM/DD'),0);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (52,'admin1','�뿬�ǹٶ��','����',to_date('21/05/14','RR/MM/DD'),0);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (53,'admin1','�뿬�ǹٶ��','��
',to_date('21/05/14','RR/MM/DD'),0);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (55,'test2','test1','����',to_date('21/05/21','RR/MM/DD'),0);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (56,'test2','test1','��������',to_date('21/05/21','RR/MM/DD'),0);
Insert into MESSAGE (CHATNO,USER_NICK,TO_NICK,CHAT_CONTENT,CHAT_TIME,CHATREAD) values (54,'test1','test2','��
',to_date('21/05/21','RR/MM/DD'),1);
REM INSERTING into NOTIFICATION
SET DEFINE OFF;
Insert into NOTIFICATION (N_NO,USER_NICK,"DATE",N_COUNT,N_TITLE,N_CONTENT,NOTICE_TYPE,N_PWD) values (1,'admin1',to_date('21/05/10','RR/MM/DD'),2,'5/10 02~05 ���� ���˾ȳ�','���������̴�.','board','1234');
Insert into NOTIFICATION (N_NO,USER_NICK,"DATE",N_COUNT,N_TITLE,N_CONTENT,NOTICE_TYPE,N_PWD) values (2,'admin1',to_date('21/05/10','RR/MM/DD'),0,'ä�ù� ������ ���� ���� �ȳ�','������','chatting','1234');
REM INSERTING into QNA
SET DEFINE OFF;
Insert into QNA (QNA_NO,USER_NICK,QNA_TITLE,QNA_CONTENT,"DATE",QNA_COUNT,QUESTION_TYPE,QNA_PWD) values (1,'test2','gd','gd',to_date('21/05/17','RR/MM/DD'),0,'chatting','1234');
REM INSERTING into QNACOMMENT
SET DEFINE OFF;
REM INSERTING into USERTABLE
SET DEFINE OFF;
Insert into USERTABLE (USER_NICK,USER_PW,USER_NAME,REG_DATE,UP_DATE,PHONENUM,MBTI,USER_EMAIL,USER_SEX,USER_ID,USER_EMAIL2,ADDR1,ADDR2,ADDR3,ADDR4) values ('admin2','admin2@','admin2',to_date('21/05/10','RR/MM/DD'),null,'01012345678','ENFP','admin2','��','admin2','daum.net','04159','���� ������ ū�칰�� 4',' (���ﵿ)','123');
Insert into USERTABLE (USER_NICK,USER_PW,USER_NAME,REG_DATE,UP_DATE,PHONENUM,MBTI,USER_EMAIL,USER_SEX,USER_ID,USER_EMAIL2,ADDR1,ADDR2,ADDR3,ADDR4) values ('admin3','admin3#','admin3',to_date('21/05/10','RR/MM/DD'),null,'01012345678','ENFP','admin3','��','admin3','daum.net','38303','��� û���� ���ϸ� ����1�� 10',null,'1234');
Insert into USERTABLE (USER_NICK,USER_PW,USER_NAME,REG_DATE,UP_DATE,PHONENUM,MBTI,USER_EMAIL,USER_SEX,USER_ID,USER_EMAIL2,ADDR1,ADDR2,ADDR3,ADDR4) values ('test2','test2@','test2',to_date('21/05/17','RR/MM/DD'),null,'01012345678','ISFJ','test2','��','test2','naver.com','06000','���� ������ �б����� 386-1',null,'1');
Insert into USERTABLE (USER_NICK,USER_PW,USER_NAME,REG_DATE,UP_DATE,PHONENUM,MBTI,USER_EMAIL,USER_SEX,USER_ID,USER_EMAIL2,ADDR1,ADDR2,ADDR3,ADDR4) values ('�뿬�ǹٶ��','rlaruddbs1!','�����',to_date('21/05/11','RR/MM/DD'),null,'01066599708','ESFJ','ruddbs273','��','rlarla123','naver.com','51756','�泲 â���� ���������� �������׺Ϸ� 20',' (������)','123');
Insert into USERTABLE (USER_NICK,USER_PW,USER_NAME,REG_DATE,UP_DATE,PHONENUM,MBTI,USER_EMAIL,USER_SEX,USER_ID,USER_EMAIL2,ADDR1,ADDR2,ADDR3,ADDR4) values ('test1','test1!','test1',to_date('21/05/14','RR/MM/DD'),null,'01012345678','ISFP','test1','��','test1','naver.com','48415','�λ� ���� ����� 1',' (������)','123');
Insert into USERTABLE (USER_NICK,USER_PW,USER_NAME,REG_DATE,UP_DATE,PHONENUM,MBTI,USER_EMAIL,USER_SEX,USER_ID,USER_EMAIL2,ADDR1,ADDR2,ADDR3,ADDR4) values ('admin1','admin1!','admin1',to_date('21/05/10','RR/MM/DD'),null,'01012345678','ISFP','admin1','��','admin1','daum.net','13480','��� ������ �д籸 ����Ǳ��� 477',' (�Ǳ���)','103-111');
--------------------------------------------------------
--  DDL for Index PK_FAQTABLE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FAQTABLE" ON "FAQTABLE" ("F_NO");
--------------------------------------------------------
--  DDL for Index PK_NOTIFICATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_NOTIFICATION" ON "NOTIFICATION" ("N_NO");
--------------------------------------------------------
--  DDL for Index PK_USERTABLE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_USERTABLE" ON "USERTABLE" ("USER_NICK");
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BOARD" ON "BOARD" ("B_NO");
--------------------------------------------------------
--  DDL for Index PK_MESSAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MESSAGE" ON "MESSAGE" ("CHATNO");
--------------------------------------------------------
--  DDL for Index PK_QNA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_QNA" ON "QNA" ("QNA_NO");
--------------------------------------------------------
--  DDL for Index PK_CHATPROFILE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CHATPROFILE" ON "CHATPROFILE" ("REG_DATE");

--------------------------------------------------------
--  Constraints for Table BOARDCOMMENT
--------------------------------------------------------

  ALTER TABLE "BOARDCOMMENT" MODIFY ("C_NO" NOT NULL ENABLE);
  ALTER TABLE "BOARDCOMMENT" MODIFY ("C_TIME" NOT NULL ENABLE);
  ALTER TABLE "BOARDCOMMENT" MODIFY ("C_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOARDCOMMENT" MODIFY ("USER_NICK" NOT NULL ENABLE);
  ALTER TABLE "BOARDCOMMENT" MODIFY ("B_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNACOMMENT
--------------------------------------------------------

  ALTER TABLE "QNACOMMENT" MODIFY ("QNA_C_NO" NOT NULL ENABLE);
  ALTER TABLE "QNACOMMENT" MODIFY ("QNA_C_TIME" NOT NULL ENABLE);
  ALTER TABLE "QNACOMMENT" MODIFY ("QNA_C_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "QNACOMMENT" MODIFY ("USER_NICK" NOT NULL ENABLE);
  ALTER TABLE "QNACOMMENT" MODIFY ("QNA_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MESSAGE
--------------------------------------------------------

  ALTER TABLE "MESSAGE" ADD CONSTRAINT "PK_MESSAGE" PRIMARY KEY ("CHATNO") ENABLE;
  ALTER TABLE "MESSAGE" MODIFY ("CHAT_TIME" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE" MODIFY ("CHAT_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE" MODIFY ("TO_NICK" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE" MODIFY ("USER_NICK" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE" MODIFY ("CHATNO" NOT NULL ENABLE);
--------------------------------------------------------;
--  Constraints for Table CHATPROFILE
--------------------------------------------------------

  ALTER TABLE "CHATPROFILE" ADD CONSTRAINT "PK_CHATPROFILE" PRIMARY KEY ("REG_DATE") ENABLE;
  ALTER TABLE "CHATPROFILE" MODIFY ("MBTI" NOT NULL ENABLE);
  ALTER TABLE "CHATPROFILE" MODIFY ("USER_NICK" NOT NULL ENABLE);
  ALTER TABLE "CHATPROFILE" MODIFY ("REG_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" ADD CONSTRAINT "PK_QNA" PRIMARY KEY ("QNA_NO") ENABLE;
  ALTER TABLE "QNA" MODIFY ("QNA_PWD" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QUESTION_TYPE" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QNA_COUNT" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("DATE" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QNA_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QNA_TITLE" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("USER_NICK" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QNA_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTIFICATION
--------------------------------------------------------

  ALTER TABLE "NOTIFICATION" ADD CONSTRAINT "PK_NOTIFICATION" PRIMARY KEY ("N_NO") ENABLE;
  ALTER TABLE "NOTIFICATION" MODIFY ("N_PWD" NOT NULL ENABLE);
  ALTER TABLE "NOTIFICATION" MODIFY ("NOTICE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "NOTIFICATION" MODIFY ("N_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NOTIFICATION" MODIFY ("N_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NOTIFICATION" MODIFY ("N_COUNT" NOT NULL ENABLE);
  ALTER TABLE "NOTIFICATION" MODIFY ("DATE" NOT NULL ENABLE);
  ALTER TABLE "NOTIFICATION" MODIFY ("USER_NICK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FAQTABLE
--------------------------------------------------------

  ALTER TABLE "FAQTABLE" ADD CONSTRAINT "PK_FAQTABLE" PRIMARY KEY ("F_NO") ENABLE;
  ALTER TABLE "FAQTABLE" MODIFY ("F_DATE" NOT NULL ENABLE);
  ALTER TABLE "FAQTABLE" MODIFY ("F_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "FAQTABLE" MODIFY ("F_TITLE" NOT NULL ENABLE);
  ALTER TABLE "FAQTABLE" MODIFY ("USER_NICK" NOT NULL ENABLE);
  ALTER TABLE "FAQTABLE" MODIFY ("F_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GOODCHECK
--------------------------------------------------------

  ALTER TABLE "GOODCHECK" MODIFY ("GOOD_USER_NICK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERTABLE
--------------------------------------------------------

  ALTER TABLE "USERTABLE" ADD CONSTRAINT "PK_USERTABLE" PRIMARY KEY ("USER_NICK") ENABLE;
  ALTER TABLE "USERTABLE" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "USERTABLE" MODIFY ("USER_SEX" NOT NULL ENABLE);
  ALTER TABLE "USERTABLE" MODIFY ("PHONENUM" NOT NULL ENABLE);
  ALTER TABLE "USERTABLE" MODIFY ("REG_DATE" NOT NULL ENABLE);
  ALTER TABLE "USERTABLE" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "USERTABLE" MODIFY ("USER_PW" NOT NULL ENABLE);
  ALTER TABLE "USERTABLE" MODIFY ("USER_NICK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("B_NO") ENABLE;
  ALTER TABLE "BOARD" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("BOARD_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("COUNT" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("DATE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("USER_NICK" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("B_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" ADD CONSTRAINT "FK_USERTABLE_TO_BOARD_1" FOREIGN KEY ("USER_NICK")
	  REFERENCES "USERTABLE" ("USER_NICK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARDCOMMENT
--------------------------------------------------------

  ALTER TABLE "BOARDCOMMENT" ADD CONSTRAINT "FK_BOARD_TO_BOARDCOMMENT_1" FOREIGN KEY ("B_NO")
	  REFERENCES "BOARD" ("B_NO") ENABLE;
  ALTER TABLE "BOARDCOMMENT" ADD CONSTRAINT "FK_USERTABLE_TO_BOARDCOMMENT_1" FOREIGN KEY ("USER_NICK")
	  REFERENCES "USERTABLE" ("USER_NICK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHATPROFILE
--------------------------------------------------------

  ALTER TABLE "CHATPROFILE" ADD CONSTRAINT "FK_USERTABLE_TO_CHATPROFILE_1" FOREIGN KEY ("USER_NICK")
	  REFERENCES "USERTABLE" ("USER_NICK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FAQTABLE
--------------------------------------------------------

  ALTER TABLE "FAQTABLE" ADD CONSTRAINT "FK_USERTABLE_TO_FAQTABLE_1" FOREIGN KEY ("USER_NICK")
	  REFERENCES "USERTABLE" ("USER_NICK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MESSAGE
--------------------------------------------------------

  ALTER TABLE "MESSAGE" ADD CONSTRAINT "FK_USERTABLE_TO_MESSAGE_1" FOREIGN KEY ("USER_NICK")
	  REFERENCES "USERTABLE" ("USER_NICK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTIFICATION
--------------------------------------------------------

  ALTER TABLE "NOTIFICATION" ADD CONSTRAINT "FK_USERTABLE_TO_NOTIFICATION_1" FOREIGN KEY ("USER_NICK")
	  REFERENCES "USERTABLE" ("USER_NICK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNACOMMENT
--------------------------------------------------------

  ALTER TABLE "QNACOMMENT" ADD CONSTRAINT "FK_USERTABLE_TO_QNACOMMENT_1" FOREIGN KEY ("USER_NICK")
	  REFERENCES "USERTABLE" ("USER_NICK") ENABLE;
