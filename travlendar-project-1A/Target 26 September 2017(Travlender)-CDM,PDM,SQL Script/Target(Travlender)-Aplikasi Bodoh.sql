/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     9/19/2017 10:21:05 AM                        */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_KEGIATAN_RELATIONS_USER') then
    alter table KEGIATAN
       delete foreign key FK_KEGIATAN_RELATIONS_USER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_KEGIATAN') then
    alter table RELATIONSHIP_2
       delete foreign key FK_RELATION_RELATIONS_KEGIATAN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_LOKASI') then
    alter table RELATIONSHIP_2
       delete foreign key FK_RELATION_RELATIONS_LOKASI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_KEGIATAN') then
    alter table RELATIONSHIP_3
       delete foreign key FK_RELATION_RELATIONS_KEGIATAN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_TRANSPOR') then
    alter table RELATIONSHIP_3
       delete foreign key FK_RELATION_RELATIONS_TRANSPOR
end if;

drop index if exists KEGIATAN.RELATIONSHIP_1_FK;

drop index if exists KEGIATAN.KEGIATAN_PK;

drop table if exists KEGIATAN;

drop index if exists LOKASI.LOKASI_PK;

drop table if exists LOKASI;

drop index if exists RELATIONSHIP_2.RELATIONSHIP_3_FK;

drop index if exists RELATIONSHIP_2.RELATIONSHIP_2_FK;

drop index if exists RELATIONSHIP_2.RELATIONSHIP_2_PK;

drop table if exists RELATIONSHIP_2;

drop index if exists RELATIONSHIP_3.RELATIONSHIP_5_FK;

drop index if exists RELATIONSHIP_3.RELATIONSHIP_4_FK;

drop index if exists RELATIONSHIP_3.RELATIONSHIP_3_PK;

drop table if exists RELATIONSHIP_3;

drop index if exists TRANSPORTASI.TRANSPORTASI_PK;

drop table if exists TRANSPORTASI;

drop index if exists "USER".USER_PK;

drop table if exists "USER";

/*==============================================================*/
/* Table: KEGIATAN                                              */
/*==============================================================*/
create table KEGIATAN 
(
   USERNAME             varchar(25)                    not null,
   ID_KEGIATAN          integer                        not null,
   NM_KEGIATAN          varchar(30)                    null,
   PRIORITAS            integer                        null,
   JAM_MULAI            timestamp                      null,
   JAM_AKHIR            timestamp                      null,
   constraint PK_KEGIATAN primary key (USERNAME, ID_KEGIATAN)
);

/*==============================================================*/
/* Index: KEGIATAN_PK                                           */
/*==============================================================*/
create unique index KEGIATAN_PK on KEGIATAN (
USERNAME ASC,
ID_KEGIATAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on KEGIATAN (
USERNAME ASC
);

/*==============================================================*/
/* Table: LOKASI                                                */
/*==============================================================*/
create table LOKASI 
(
   ID_LOKASI            integer                        not null,
   NM_LOKASI            varchar(20)                    null,
   LINTANG              float                          null,
   BUJUR                float                          null,
   GMT                  integer                        null,
   constraint PK_LOKASI primary key (ID_LOKASI)
);

/*==============================================================*/
/* Index: LOKASI_PK                                             */
/*==============================================================*/
create unique index LOKASI_PK on LOKASI (
ID_LOKASI ASC
);

/*==============================================================*/
/* Table: RELATIONSHIP_2                                        */
/*==============================================================*/
create table RELATIONSHIP_2 
(
   USERNAME             varchar(25)                    not null,
   ID_KEGIATAN          integer                        not null,
   ID_LOKASI            integer                        not null,
   constraint PK_RELATIONSHIP_2 primary key clustered (USERNAME, ID_KEGIATAN, ID_LOKASI)
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_PK                                     */
/*==============================================================*/
create unique clustered index RELATIONSHIP_2_PK on RELATIONSHIP_2 (
USERNAME ASC,
ID_KEGIATAN ASC,
ID_LOKASI ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on RELATIONSHIP_2 (
USERNAME ASC,
ID_KEGIATAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on RELATIONSHIP_2 (
ID_LOKASI ASC
);

/*==============================================================*/
/* Table: RELATIONSHIP_3                                        */
/*==============================================================*/
create table RELATIONSHIP_3 
(
   USERNAME             varchar(25)                    not null,
   ID_KEGIATAN          integer                        not null,
   JENIS_TRANSPORTASI   varchar(25)                    not null,
   constraint PK_RELATIONSHIP_3 primary key clustered (USERNAME, ID_KEGIATAN, JENIS_TRANSPORTASI)
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_PK                                     */
/*==============================================================*/
create unique clustered index RELATIONSHIP_3_PK on RELATIONSHIP_3 (
USERNAME ASC,
ID_KEGIATAN ASC,
JENIS_TRANSPORTASI ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on RELATIONSHIP_3 (
USERNAME ASC,
ID_KEGIATAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on RELATIONSHIP_3 (
JENIS_TRANSPORTASI ASC
);

/*==============================================================*/
/* Table: TRANSPORTASI                                          */
/*==============================================================*/
create table TRANSPORTASI 
(
   JENIS_TRANSPORTASI   varchar(25)                    not null,
   KECEPATAN            integer                        null,
   constraint PK_TRANSPORTASI primary key (JENIS_TRANSPORTASI)
);

/*==============================================================*/
/* Index: TRANSPORTASI_PK                                       */
/*==============================================================*/
create unique index TRANSPORTASI_PK on TRANSPORTASI (
JENIS_TRANSPORTASI ASC
);

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table "USER" 
(
   USERNAME             varchar(25)                    not null,
   EMAIL                varchar(25)                    null,
   PASSWORD             varchar(25)                    null,
   NAMA                 varchar(25)                    null,
   constraint PK_USER primary key (USERNAME)
);

/*==============================================================*/
/* Index: USER_PK                                               */
/*==============================================================*/
create unique index USER_PK on "USER" (
USERNAME ASC
);

alter table KEGIATAN
   add constraint FK_KEGIATAN_RELATIONS_USER foreign key (USERNAME)
      references "USER" (USERNAME)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_2
   add constraint FK_RELATION_RELATIONS_KEGIATAN foreign key (USERNAME, ID_KEGIATAN)
      references KEGIATAN (USERNAME, ID_KEGIATAN)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_2
   add constraint FK_RELATION_RELATIONS_LOKASI foreign key (ID_LOKASI)
      references LOKASI (ID_LOKASI)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_3
   add constraint FK_RELATION_RELATIONS_KEGIATAN foreign key (USERNAME, ID_KEGIATAN)
      references KEGIATAN (USERNAME, ID_KEGIATAN)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_3
   add constraint FK_RELATION_RELATIONS_TRANSPOR foreign key (JENIS_TRANSPORTASI)
      references TRANSPORTASI (JENIS_TRANSPORTASI)
      on update restrict
      on delete restrict;

