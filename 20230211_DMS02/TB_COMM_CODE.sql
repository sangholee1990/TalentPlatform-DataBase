create table TB_COMM_CODE
(
    CODE     varchar(63)     not null comment '코드'
        primary key,
    NAME     varchar(500)    null comment '이름',
    USE_YN   enum ('Y', 'N') null comment '사용 여부',
    MOD_DATE datetime        null comment '수정일',
    REG_DATE datetime        null comment '등록일'
)
    comment '공통 코드 테이블';

