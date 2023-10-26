create table TB_KEPCO_API_AUTH
(
    KEPCO_API_KEY varchar(63)     not null comment '한전 고객 번호'
        primary key,
    AUTH_YN       enum ('Y', 'N') null comment '인증 여부',
    USE_YN        enum ('Y', 'N') null comment '사용 여부',
    MOD_DATE      datetime        null comment '수정일',
    REG_DATE      datetime        null comment '등록일'
)
    comment '한전 API 인증 테이블';

