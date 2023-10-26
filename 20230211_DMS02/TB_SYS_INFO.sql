create table TB_SYS_INFO
(
    CUSTOMER_LINK_NUMBER int(20)         not null comment '고객 연동 번호',
    PWR_SVN_TRG          int             null comment '전력 절감 목표량',
    GAS_SVN_TRG          int             null comment '가스 절감 목표량',
    WTR_SVN_TRG          int             null comment '수도 절감 목표량',
    ALARM_USE_YN         enum ('Y', 'N') null comment '알람 사용 여부',
    ALARM_SOUND_YN       enum ('Y', 'N') null comment '알람 소리 여부',
    ALARM_VBRTN_YN       enum ('Y', 'N') null comment '알람 진동 여부',
    ALARM_OPTM_YN        enum ('Y', 'N') null comment '알람 작동시간 여부',
    USE_YN               enum ('Y', 'N') null comment '사용 여부',
    REG_DATE             datetime        null comment '등록일',
    MOD_DATE             datetime        null comment '수정일',
    TMP                  float           null comment '실수형 임시 변수',
    TMP2                 float           null comment '실수형 임시 변수2',
    TMP3                 float           null comment '실수형 임시 변수3',
    TMP4                 float           null comment '실수형 임시 변수4',
    TMP5                 float           null comment '실수형 임시 변수5',
    TMP6                 varchar(20)     null comment '문자형 임시 변수',
    TMP7                 varchar(20)     null comment '문자형 임시 변수2',
    TMP8                 varchar(20)     null comment '문자형 임시 변수3',
    TMP9                 varchar(20)     null comment '문자형 임시 변수4',
    TMP10                varchar(20)     null comment '문자형 임시 변수5',
    constraint TB_SYS_INFO_TB_MEMBER_null_fk
        foreign key (CUSTOMER_LINK_NUMBER) references TB_MEMBER (CUSTOMER_LINK_NUMBER)
            on update cascade on delete cascade
)
    comment '시스템 정보 테이블';

