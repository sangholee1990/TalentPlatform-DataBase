create table TB_MSG_INFO
(
    MSG_CODE    varchar(63)     not null comment '메시지 코드',
    MSG_VERSION varchar(20)     not null comment '메시지 버전',
    MSG_CONT    varchar(2000)   null comment '메시지 내용',
    USE_YN      enum ('Y', 'N') null comment '사용 여부',
    MOD_DATE    datetime        null comment '수정일',
    REG_DATE    datetime        null comment '등록일',
    constraint TB_MSG_INFO_TB_COMM_CODE_null_fk
        foreign key (MSG_CODE) references TB_COMM_CODE (CODE)
            on update cascade on delete cascade
)
    comment '메시지 정보 테이블';

