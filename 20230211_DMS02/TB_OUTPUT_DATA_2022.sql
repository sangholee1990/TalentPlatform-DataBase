create table TB_OUTPUT_DATA_2022
(
    CUSTOMER_LINK_NUMBER int(20)  not null comment '고객 연동 번호',
    DATE_TIME            datetime not null comment '날짜 시간 UTC 기준'
        primary key,
    TEMP                 float    null comment '온도',
    HMDTY                float    null comment '습도',
    PM25                 float    null comment '미세먼지2.5',
    PM10                 float    null comment '미세먼지10',
    DUST                 float    null comment '황사',
    CO2                  float    null comment '이산화탄소',
    PWR                  float    null comment '전력량',
    GAS                  float    null comment '가스량',
    WATER                float    null comment '수도량',
    PRD_PWR              float    null comment '예측 전력량',
    PRD_GAS              float    null comment '예측 가스량',
    PRD_WATER            float    null comment '예측 수도량',
    MOD_DATE             datetime null comment '수정일',
    REG_DATE             datetime null comment '등록일',
    constraint TB_OUTPUT_DATA_2022_TB_MEMBER_null_fk
        foreign key (CUSTOMER_LINK_NUMBER) references TB_MEMBER (CUSTOMER_LINK_NUMBER)
            on update cascade on delete cascade
)
    comment 'API 테이블 2022';

