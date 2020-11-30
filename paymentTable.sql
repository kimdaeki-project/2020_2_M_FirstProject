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
