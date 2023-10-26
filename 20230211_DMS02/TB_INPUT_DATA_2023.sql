create table TB_INPUT_DATA_2023
(
    PRODUCT_SERIAL_NUMBER varchar(63) not null comment '제품 시리얼 번호',
    DATE_TIME             datetime    not null comment '날짜 시간 UTC 기준'
        primary key,
    TEMP                  float       null comment '온도',
    HMDTY                 float       null comment '습도',
    PM25                  float       null comment '미세먼지2.5',
    PM10                  float       null comment '미세먼지10',
    MVMNT                 varchar(20) null comment '움직임 센서',
    TVOC                  float       null comment '총 휘발성 유기화합물',
    HCHO                  float       null comment '포름알데하이드',
    CO2                   float       null comment '이산화탄소',
    CO                    float       null comment '일산화탄소',
    BENZO                 float       null comment '벤조피렌',
    RADON                 float       null comment '라돈',
    MOD_DATE              datetime    null comment '수정일',
    REG_DATE              datetime    null comment '등록일',
    TMP                   float       null comment '실수형 임시 변수',
    TMP2                  float       null comment '실수형 임시 변수2',
    TMP3                  float       null comment '실수형 임시 변수3',
    TMP4                  float       null comment '실수형 임시 변수4',
    TMP5                  float       null comment '실수형 임시 변수5',
    TMP6                  varchar(20) null comment '문자형 임시 변수',
    TMP7                  varchar(20) null comment '문자형 임시 변수2',
    TMP8                  varchar(20) null comment '문자형 임시 변수3',
    TMP9                  varchar(20) null comment '문자형 임시 변수4',
    TMP10                 varchar(20) null comment '문자형 임시 변수5',
    constraint TB_INPUT_DATA_2023_TB_IOT_PRDCT_AUTH_PRODUCT_SERIAL_NUMBER_fk
        foreign key (PRODUCT_SERIAL_NUMBER) references TB_IOT_PRDCT_AUTH (PRODUCT_SERIAL_NUMBER)
            on update cascade on delete cascade
)
    comment 'IOT 테이블 2023';

