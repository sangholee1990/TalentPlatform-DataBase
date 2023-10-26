create table TB_MEMBER
(
    PRODUCT_SERIAL_NUMBER varchar(63)     not null comment '제품 시리얼 번호',
    CUSTOMER_LINK_NUMBER  int auto_increment comment '고객 연동 번호'
        primary key,
    KEPCO_API_KEY         varchar(63)     null comment '한전 고객 번호',
    SNS_ID                varchar(100)    null comment 'SNS 아이디',
    SNS_PWD               varchar(100)    null comment 'SNS 비밀번호',
    SNS_KEY               varchar(100)    null comment 'SNS 키',
    SNS_TYPE              varchar(100)    null comment 'SNS 종류',
    USER_NAME             varchar(100)    null comment '고객명',
    PHONE_NUMBER          varchar(20)     null comment '휴대폰 번호',
    ZIP_NUMBER            varchar(200)    null comment '우편번호',
    ADDR                  varchar(200)    null comment '주소',
    ADDR_DTL              varchar(200)    null comment '상세 주소',
    LON                   double          null comment '경도',
    LAT                   double          null comment '위도',
    HOUSE_AREA            double          null comment '주택 면적',
    MALE_CNT              int             null comment '남성 수',
    FEMALE_CNT            int             null comment '여성 수',
    ROOM_CNT              int             null comment '방 개수',
    TV_CNT                int             null comment 'TV 개수',
    AIR_CONDITIONER_CNT   int             null comment '에어컨 개수',
    WASHING_MACHINE_CNT   int             null comment '세탁기 개수',
    DRYER_CNT             int             null comment '건조기 개수',
    RICE_COOKER_CNT       int             null comment '전기밥솥 개수',
    FAN_CNT               int             null comment '선풍기 개수',
    DISK_WASHER_CNT       int             null comment '식기세척기 개수',
    COMPUTER_CNT          int             null comment '컴퓨터 개수',
    RATE_PLAN             varchar(100)    null comment '한전 요금제 정보',
    USE_YN                enum ('Y', 'N') null comment '사용 여부',
    MOD_DATE              datetime        null comment '수정일',
    REG_DATE              datetime        null comment '등록일',
    constraint CUSTOMER_LINK_NUMBER
        unique (CUSTOMER_LINK_NUMBER),
    constraint TB_MEMBER_KEPCO_API_KEY_fk
        foreign key (KEPCO_API_KEY) references TB_KEPCO_API_AUTH (KEPCO_API_KEY),
    constraint TB_MEMBER_TB_IOT_PRDCT_AUTH_null_fk
        foreign key (PRODUCT_SERIAL_NUMBER) references TB_IOT_PRDCT_AUTH (PRODUCT_SERIAL_NUMBER)
            on update cascade on delete cascade
)
    comment '회원 정보 테이블';

