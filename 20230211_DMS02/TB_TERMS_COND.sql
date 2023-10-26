create table TB_TERMS_COND
(
    CUSTOMER_LINK_NUMBER int(20)         null comment '고객 연동 번호',
    TERMS_CODE           varchar(63)     not null comment '약관 코드',
    TERMS_VERSION        varchar(20)     not null comment '약관 버전',
    TERMS_CONT           varchar(100)    null comment '약관 내용',
    AGRTR_CNDTN_YN       varchar(1)      null comment '동의 여부',
    USE_YN               enum ('Y', 'N') null comment '사용 여부',
    MOD_DATE             datetime        null comment '수정일',
    REG_DATE             datetime        null comment '등록일',
    constraint TB_TERMS_COND_TB_COMM_CODE_null_fk
        foreign key (TERMS_CODE) references TB_COMM_CODE (CODE)
            on update cascade on delete cascade,
    constraint TB_TERMS_COND_TB_MEMBER_null_fk
        foreign key (CUSTOMER_LINK_NUMBER) references TB_MEMBER (CUSTOMER_LINK_NUMBER)
            on update cascade on delete cascade
)
    comment '약관 동의 테이블';

