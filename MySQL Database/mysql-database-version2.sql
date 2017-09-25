/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     22/09/2017 07:02:30                          */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_EVENT_RELATIONS_ESTIMASI') then
    alter table EVENT
       delete foreign key FK_EVENT_RELATIONS_ESTIMASI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_LOCATION') then
    alter table RELATIONSHIP_1
       delete foreign key FK_RELATION_RELATIONS_LOCATION
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_EVENT') then
    alter table RELATIONSHIP_1
       delete foreign key FK_RELATION_RELATIONS_EVENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_VEHICLE') then
    alter table RELATIONSHIP_2
       delete foreign key FK_RELATION_RELATIONS_VEHICLE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_EVENT') then
    alter table RELATIONSHIP_2
       delete foreign key FK_RELATION_RELATIONS_EVENT
end if;

drop index if exists ESTIMASI.ESTIMASI_PK;

drop table if exists ESTIMASI;

drop index if exists EVENT.RELATIONSHIP_5_FK;

drop index if exists EVENT.EVENT_PK;

drop table if exists EVENT;

drop index if exists LOCATION.LOCATION_PK;

drop table if exists LOCATION;

drop index if exists RELATIONSHIP_1.RELATIONSHIP_2_FK;

drop index if exists RELATIONSHIP_1.RELATIONSHIP_1_FK;

drop index if exists RELATIONSHIP_1.RELATIONSHIP_1_PK;

drop table if exists RELATIONSHIP_1;

drop index if exists RELATIONSHIP_2.RELATIONSHIP_4_FK;

drop index if exists RELATIONSHIP_2.RELATIONSHIP_3_FK;

drop index if exists RELATIONSHIP_2.RELATIONSHIP_2_PK;

drop table if exists RELATIONSHIP_2;

drop index if exists VEHICLE.VEHICLE_PK;

drop table if exists VEHICLE;

/*==============================================================*/
/* Table: ESTIMASI                                              */
/*==============================================================*/
create table ESTIMASI 
(
   "NO"                 integer                        not null,
   "FROM"               varchar(25)                    null,
   "TO"                 varchar(25)                    null,
   JARAK                integer                        null,
   ESTIM_WAKTU          integer                        null,
   constraint PK_ESTIMASI primary key ("NO")
);

/*==============================================================*/
/* Index: ESTIMASI_PK                                           */
/*==============================================================*/
create unique index ESTIMASI_PK on ESTIMASI (
"NO" ASC
);

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT 
(
   KD_KEGIATAN          integer                        not null,
   "NO"                 integer                        not null,
   NM_KEGIATAN          varchar(20)                    null,
   JAM_MULAI            time                           null,
   JAM_SELESAI          time                           null,
   TANGGAL              date                           null,
   WAKTU_TIBA           time                           null,
   constraint PK_EVENT primary key (KD_KEGIATAN)
);

/*==============================================================*/
/* Index: EVENT_PK                                              */
/*==============================================================*/
create unique index EVENT_PK on EVENT (
KD_KEGIATAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on EVENT (
"NO" ASC
);

/*==============================================================*/
/* Table: LOCATION                                              */
/*==============================================================*/
create table LOCATION 
(
   ID_LOKASI            integer                        not null,
   LOKASI               varchar(25)                    null,
   ALAMAT               varchar(40)                    null,
   GMT                  integer                        null,
   constraint PK_LOCATION primary key (ID_LOKASI)
);

/*==============================================================*/
/* Index: LOCATION_PK                                           */
/*==============================================================*/
create unique index LOCATION_PK on LOCATION (
ID_LOKASI ASC
);

/*==============================================================*/
/* Table: RELATIONSHIP_1                                        */
/*==============================================================*/
create table RELATIONSHIP_1 
(
   ID_LOKASI            integer                        not null,
   KD_KEGIATAN          integer                        not null,
   constraint PK_RELATIONSHIP_1 primary key clustered (ID_LOKASI, KD_KEGIATAN)
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_PK                                     */
/*==============================================================*/
create unique clustered index RELATIONSHIP_1_PK on RELATIONSHIP_1 (
ID_LOKASI ASC,
KD_KEGIATAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on RELATIONSHIP_1 (
ID_LOKASI ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on RELATIONSHIP_1 (
KD_KEGIATAN ASC
);

/*==============================================================*/
/* Table: RELATIONSHIP_2                                        */
/*==============================================================*/
create table RELATIONSHIP_2 
(
   KD_KENDARAAN         integer                        not null,
   KD_KEGIATAN          integer                        not null,
   constraint PK_RELATIONSHIP_2 primary key clustered (KD_KENDARAAN, KD_KEGIATAN)
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_PK                                     */
/*==============================================================*/
create unique clustered index RELATIONSHIP_2_PK on RELATIONSHIP_2 (
KD_KENDARAAN ASC,
KD_KEGIATAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on RELATIONSHIP_2 (
KD_KENDARAAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on RELATIONSHIP_2 (
KD_KEGIATAN ASC
);

/*==============================================================*/
/* Table: VEHICLE                                               */
/*==============================================================*/
create table VEHICLE 
(
   KD_KENDARAAN         integer                        not null,
   JNS_KENDARAAN        varchar(10)                    null,
   constraint PK_VEHICLE primary key (KD_KENDARAAN)
);

/*==============================================================*/
/* Index: VEHICLE_PK                                            */
/*==============================================================*/
create unique index VEHICLE_PK on VEHICLE (
KD_KENDARAAN ASC
);

alter table EVENT
   add constraint FK_EVENT_RELATIONS_ESTIMASI foreign key ("NO")
      references ESTIMASI ("NO")
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_1
   add constraint FK_RELATION_RELATIONS_LOCATION foreign key (ID_LOKASI)
      references LOCATION (ID_LOKASI)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_1
   add constraint FK_RELATION_RELATIONS_EVENT foreign key (KD_KEGIATAN)
      references EVENT (KD_KEGIATAN)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_2
   add constraint FK_RELATION_RELATIONS_VEHICLE foreign key (KD_KENDARAAN)
      references VEHICLE (KD_KENDARAAN)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_2
   add constraint FK_RELATION_RELATIONS_EVENT foreign key (KD_KEGIATAN)
      references EVENT (KD_KEGIATAN)
      on update restrict
      on delete restrict;

