create table TB_IOT_PRDCT_AUTH
(
    PRODUCT_SERIAL_NUMBER varchar(63)     not null comment '제품 시리얼 번호'
        primary key,
    AUTH_YN               enum ('Y', 'N') null comment '인증 여부',
    USE_YN                enum ('Y', 'N') null comment '사용 여부',
    MOD_DATE              datetime        null comment '수정일',
    REG_DATE              datetime        null comment '등록일'
)
    comment 'IOT 제품 인증 테이블';

