--------------------------------------------------------
--  파일이 생성됨 - 화요일-5월-25-2021   
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

   COMMENT ON COLUMN "BOARD"."B_NO" IS '시퀀스로 자동으로 증가
ROWNUM으로 화면에 뿌릴예정이지만 기본키를 위해 만들어 놓음';
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

   COMMENT ON COLUMN "BOARDCOMMENT"."B_NO" IS '시퀀스로 자동으로 증가
ROWNUM으로 화면에 뿌릴예정이지만 기본키를 위해 만들어 놓음';
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

   COMMENT ON COLUMN "FAQTABLE"."USER_NICK" IS '운영자만 글을 올릴 수 있게 설정';
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

   COMMENT ON COLUMN "USERTABLE"."REG_DATE" IS 'YYYY-MM-DD HH:MI 형식';
   COMMENT ON COLUMN "USERTABLE"."PHONENUM" IS '전화번호 넣을 때 -제외하고 11자리 입력하게끔 안내해야함';
   COMMENT ON COLUMN "USERTABLE"."USER_SEX" IS '남 또는 여로 저장';

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
