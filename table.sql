-- NUM : 기본키
-- ID : member 테이블 ID 참조
-- regDate : Date가 아닌 String 형태로 사용
-- time : String 형태로 사용
-- name : 선택 예약한 트레이너 이름으로 사용
-- kind : 선택 예약한 트레이너의 운동 종류로 사용
-- business : 선택 예약한 트레이너의 출장 여부로 사용
create table payment(
    num number constraint payment_num_pk primary key,
    id varchar2(200) constraint payment_id_fk references member(id) on delete cascade,
    regDate varchar2(200),
    time varchar2(200),
    name varchar2(200),
    kind varchar2(200),
    business varchar2(200)
);

-- payment num Sequence
create sequence pay_test_seq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache
;

--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "PRO"."NOTICE" 
   (	"NUM" NUMBER, 
	"WRITER" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENTS" VARCHAR2(3000 BYTE), 
	"REGDATE" DATE, 
	"HIT" NUMBER
   ) 

--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ_NUM
--------------------------------------------------------

CREATE SEQUENCE  "PRO"."NOTICE_SEQ_NUM"  
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 15 
NOCACHE  
NOORDER  
NOCYCLE ;


--------------------------------------------------------
--  DDL for Table NOTICEFILE
--------------------------------------------------------

  CREATE TABLE "PRO"."NOTICEFILE" 
   (	"NUM" NUMBER, 
	"FILENAME" VARCHAR2(200 BYTE), 
	"ORINAME" VARCHAR2(200 BYTE)
   )



--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "PRO"."MEMBER" 
   (	"NUM" NUMBER, 
	"NAME" VARCHAR2(200 BYTE), 
	"ID" VARCHAR2(200 BYTE), 
	"PW" VARCHAR2(200 BYTE), 
	"PHONE" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"AGE" NUMBER, 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"GYM" VARCHAR2(200 BYTE), 
	"BUSINESS" VARCHAR2(20 BYTE), 
	"TRAINER" VARCHAR2(20 BYTE), 
	"KIND" VARCHAR2(100 BYTE), 
	"EDUCATION" VARCHAR2(200 BYTE), 
	"CERTIFICATE" VARCHAR2(200 BYTE), 
	"CAREER" VARCHAR2(200 BYTE)
   )

--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "PRO"."MEMBER" ADD CONSTRAINT "U_MEMBER_ID" UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PRO"."MEMBER" ADD CONSTRAINT "PK_MEMBER_NUM" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PRO"."MEMBER" MODIFY ("GENDER" CONSTRAINT "NN_MEMBER_GENDER" NOT NULL ENABLE);
  ALTER TABLE "PRO"."MEMBER" MODIFY ("PHONE" CONSTRAINT "NN_MEMBER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "PRO"."MEMBER" MODIFY ("PW" CONSTRAINT "NN_MEMBER_PW" NOT NULL ENABLE);
  ALTER TABLE "PRO"."MEMBER" MODIFY ("NAME" CONSTRAINT "NN_MEMBER_NAME" NOT NULL ENABLE);

   
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

CREATE SEQUENCE  "PRO"."MEMBER_SEQ"  
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 251 
NOCACHE  
NOORDER 
NOCYCLE ;

   
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "PRO"."QNA" 
   (	"NUM" NUMBER, 
	"REGDATE" DATE, 
	"TITLE" VARCHAR2(200 BYTE), 
	"WRITER" VARCHAR2(200 BYTE), 
	"CONTENTS" VARCHAR2(4000 BYTE), 
	"REF" NUMBER, 
	"STEP" NUMBER, 
	"DEPTH" NUMBER, 
	"HIT" NUMBER
   )

--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "PRO"."QNA" ADD PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE; 

--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "PRO"."QNA" ADD FOREIGN KEY ("WRITER")
	  REFERENCES "PRO"."MEMBER" ("ID") ON DELETE CASCADE ENABLE;
   
   
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

CREATE SEQUENCE  "PRO"."QNA_SEQ"  
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 2 
START WITH 41 
CACHE 20 
NOORDER  
NOCYCLE ;
   
--------------------------------------------------------
--  DDL for Table QNAFILE
--------------------------------------------------------

  CREATE TABLE "PRO"."QNAFILE" 
   (	"NUM" NUMBER, 
	"ID" VARCHAR2(200 BYTE), 
	"FILENAME" VARCHAR2(200 BYTE), 
	"ORINAME" VARCHAR2(200 BYTE)
   )
   
--------------------------------------------------------
--  DDL for Table TRAINERFILE
--------------------------------------------------------

  CREATE TABLE "PRO"."TRAINERFILE" 
   (	"NUM" NUMBER, 
	"ID" VARCHAR2(200 BYTE), 
	"FILENAME" VARCHAR2(200 BYTE), 
	"ORINAME" VARCHAR2(200 BYTE), 
	"NAME" VARCHAR2(30 BYTE)
   )

--------------------------------------------------------
--  Ref Constraints for Table TRAINERFILE
--------------------------------------------------------

  ALTER TABLE "PRO"."TRAINERFILE" ADD CONSTRAINT "TF_RF" FOREIGN KEY ("ID")
	  REFERENCES "PRO"."MEMBER" ("ID") ON DELETE CASCADE ENABLE;

--------------------------------------------------------
--  DDL for Sequence TRAINERFILE_SEQ
--------------------------------------------------------

CREATE SEQUENCE  "PRO"."TRAINERFILE_SEQ"  
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 10 
NOCACHE  
NOORDER  
NOCYCLE ;
