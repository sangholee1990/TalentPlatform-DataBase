create table TB_OUTPUT_STAT_DATA_2022
(
    CUSTOMER_LINK_NUMBER int(20)  not null comment '고객 연동 번호',
    DATE_TIME            datetime not null comment '날짜 시간 UTC 기준'
        primary key,
    PRV_PWR              float    null comment '전월 전력량',
    PRV_GAS              float    null comment '전월 가스량',
    PRV_WATER            float    null comment '전월 수도량',
    PRD_PRV_PWR          float    null comment '예측 전월 전력량',
    PRD_PRV_GAS          float    null comment '예측 전월 가스량',
    PRD_PRV_WATER        float    null comment '예측 전월 수도량',
    PRE_PWR              float    null comment '당월 전력량',
    PRE_GAS              float    null comment '당월 가스량',
    PRE_WATER            float    null comment '당월 수도량',
    PRD_PRE_PWR          float    null comment '예측 당월 전력량',
    PRD_PRE_GAS          float    null comment '예측 당월 가스량',
    PRD_PRE_WATER        float    null comment '예측 당월 수도량',
    MOD_DATE             datetime null comment '수정일',
    REG_DATE             datetime null comment '등록일',
    constraint TB_OUTPUT_STAT_DATA_2022_TB_MEMBER_null_fk
        foreign key (CUSTOMER_LINK_NUMBER) references TB_MEMBER (CUSTOMER_LINK_NUMBER)
            on update cascade on delete cascade
)
    comment 'API 통계 테이블 2022';

