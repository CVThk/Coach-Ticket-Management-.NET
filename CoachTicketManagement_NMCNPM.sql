/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     27/11/2022 9:05:17 CH                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_ACCOUNT') and o.name = 'FK_TBL_ACCO_TAI_KHOAN_TBL_EMPL')
alter table TBL_ACCOUNT
   drop constraint FK_TBL_ACCO_TAI_KHOAN_TBL_EMPL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_BILL') and o.name = 'FK_TBL_BILL_RELATIONS_TBL_CLIE')
alter table TBL_BILL
   drop constraint FK_TBL_BILL_RELATIONS_TBL_CLIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_BILL') and o.name = 'FK_TBL_BILL_RELATIONS_TBL_EMPL')
alter table TBL_BILL
   drop constraint FK_TBL_BILL_RELATIONS_TBL_EMPL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_BILLDETAILS') and o.name = 'FK_TBL_BILL_TBL_BILLD_TBL_BILL')
alter table TBL_BILLDETAILS
   drop constraint FK_TBL_BILL_TBL_BILLD_TBL_BILL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_BILLDETAILS') and o.name = 'FK_TBL_BILL_TBL_BILLD_TBL_TICK')
alter table TBL_BILLDETAILS
   drop constraint FK_TBL_BILL_TBL_BILLD_TBL_TICK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_BOOKED') and o.name = 'FK_TBL_BOOK_TBL_BOOKE_TBL_COAC')
alter table TBL_BOOKED
   drop constraint FK_TBL_BOOK_TBL_BOOKE_TBL_COAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_BOOKED') and o.name = 'FK_TBL_BOOK_TBL_BOOKE_TBL_SEAT')
alter table TBL_BOOKED
   drop constraint FK_TBL_BOOK_TBL_BOOKE_TBL_SEAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_CLIENT') and o.name = 'FK_TBL_CLIE__IA_CHI_C_TBL_WARD')
alter table TBL_CLIENT
   drop constraint FK_TBL_CLIE__IA_CHI_C_TBL_WARD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_DISTRICT') and o.name = 'FK_TBL_DIST_HUYEN_TBL_CITY')
alter table TBL_DISTRICT
   drop constraint FK_TBL_DIST_HUYEN_TBL_CITY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_DRIVER') and o.name = 'FK_TBL_DRIV__IA_CHI_D_TBL_WARD')
alter table TBL_DRIVER
   drop constraint FK_TBL_DRIV__IA_CHI_D_TBL_WARD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_DROPOFF') and o.name = 'FK_TBL_DROP_TBL_DROPO_TBL_BUSL')
alter table TBL_DROPOFF
   drop constraint FK_TBL_DROP_TBL_DROPO_TBL_BUSL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_DROPOFF') and o.name = 'FK_TBL_DROP_TBL_DROPO_TBL_STAT')
alter table TBL_DROPOFF
   drop constraint FK_TBL_DROP_TBL_DROPO_TBL_STAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_EMPLOYEE') and o.name = 'FK_TBL_EMPL_RELATIONS_TBL_PERM')
alter table TBL_EMPLOYEE
   drop constraint FK_TBL_EMPL_RELATIONS_TBL_PERM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_EMPLOYEE') and o.name = 'FK_TBL_EMPL_TAI_KHOAN_TBL_ACCO')
alter table TBL_EMPLOYEE
   drop constraint FK_TBL_EMPL_TAI_KHOAN_TBL_ACCO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_EMPLOYEE') and o.name = 'FK_TBL_EMPL_TYPE_OF_E_TBL_TYPE')
alter table TBL_EMPLOYEE
   drop constraint FK_TBL_EMPL_TYPE_OF_E_TBL_TYPE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_EMPLOYEE') and o.name = 'FK_TBL_EMPL__IA_CHI_E_TBL_WARD')
alter table TBL_EMPLOYEE
   drop constraint FK_TBL_EMPL__IA_CHI_E_TBL_WARD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_PICKUP') and o.name = 'FK_TBL_PICK_TBL_PICKU_TBL_STAT')
alter table TBL_PICKUP
   drop constraint FK_TBL_PICK_TBL_PICKU_TBL_STAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_PICKUP') and o.name = 'FK_TBL_PICK_TBL_PICKU_TBL_BUSL')
alter table TBL_PICKUP
   drop constraint FK_TBL_PICK_TBL_PICKU_TBL_BUSL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_SERVICE') and o.name = 'FK_TBL_SERV_RELATIONS_TBL_EMPL')
alter table TBL_SERVICE
   drop constraint FK_TBL_SERV_RELATIONS_TBL_EMPL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_SERVICE') and o.name = 'FK_TBL_SERV_RELATIONS_TBL_CLIE')
alter table TBL_SERVICE
   drop constraint FK_TBL_SERV_RELATIONS_TBL_CLIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_SERVICE') and o.name = 'FK_TBL_SERV_RELATIONS_TBL_UNIT')
alter table TBL_SERVICE
   drop constraint FK_TBL_SERV_RELATIONS_TBL_UNIT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_SERVICE') and o.name = 'FK_TBL_SERV_RELATIONS_TBL_TRIP')
alter table TBL_SERVICE
   drop constraint FK_TBL_SERV_RELATIONS_TBL_TRIP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_TICKET') and o.name = 'FK_TBL_TICK_CO_TBL_TRIP')
alter table TBL_TICKET
   drop constraint FK_TBL_TICK_CO_TBL_TRIP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_TICKET') and o.name = 'FK_TBL_TICK_GHE_TBL_SEAT')
alter table TBL_TICKET
   drop constraint FK_TBL_TICK_GHE_TBL_SEAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_TICKET') and o.name = 'FK_TBL_TICK_RELATIONS_TBL_PRIC')
alter table TBL_TICKET
   drop constraint FK_TBL_TICK_RELATIONS_TBL_PRIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_TRIP') and o.name = 'FK_TBL_TRIP_CO_THE__I_TBL_COAC')
alter table TBL_TRIP
   drop constraint FK_TBL_TRIP_CO_THE__I_TBL_COAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_TRIP') and o.name = 'FK_TBL_TRIP_CO_TRIP_TBL_BUSL')
alter table TBL_TRIP
   drop constraint FK_TBL_TRIP_CO_TRIP_TBL_BUSL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_TRIP') and o.name = 'FK_TBL_TRIP_DRIVER_TBL_DRIV')
alter table TBL_TRIP
   drop constraint FK_TBL_TRIP_DRIVER_TBL_DRIV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_TRIP') and o.name = 'FK_TBL_TRIP_THOI_GIAN_TBL_TIME')
alter table TBL_TRIP
   drop constraint FK_TBL_TRIP_THOI_GIAN_TBL_TIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_TRIP') and o.name = 'FK_TBL_TRIP_THUOC_TRI_TBL_EMPL')
alter table TBL_TRIP
   drop constraint FK_TBL_TRIP_THUOC_TRI_TBL_EMPL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBL_WARD') and o.name = 'FK_TBL_WARD_XA_TBL_DIST')
alter table TBL_WARD
   drop constraint FK_TBL_WARD_XA_TBL_DIST
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_ACCOUNT')
            and   name  = 'TAI_KHOAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_ACCOUNT.TAI_KHOAN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_ACCOUNT')
            and   type = 'U')
   drop table TBL_ACCOUNT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_BILL')
            and   name  = 'RELATIONSHIP_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_BILL.RELATIONSHIP_17_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_BILL')
            and   name  = 'RELATIONSHIP_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_BILL.RELATIONSHIP_16_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_BILL')
            and   type = 'U')
   drop table TBL_BILL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_BILLDETAILS')
            and   name  = 'TBL_BILLDETAILS2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_BILLDETAILS.TBL_BILLDETAILS2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_BILLDETAILS')
            and   name  = 'TBL_BILLDETAILS_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_BILLDETAILS.TBL_BILLDETAILS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_BILLDETAILS')
            and   type = 'U')
   drop table TBL_BILLDETAILS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_BOOKED')
            and   name  = 'TBL_BOOKED2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_BOOKED.TBL_BOOKED2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_BOOKED')
            and   name  = 'TBL_BOOKED_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_BOOKED.TBL_BOOKED_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_BOOKED')
            and   type = 'U')
   drop table TBL_BOOKED
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_BUSLINE')
            and   type = 'U')
   drop table TBL_BUSLINE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_CITY')
            and   type = 'U')
   drop table TBL_CITY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_CLIENT')
            and   name  = '_IA_CHI_CLIENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_CLIENT._IA_CHI_CLIENT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_CLIENT')
            and   type = 'U')
   drop table TBL_CLIENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_COACH')
            and   type = 'U')
   drop table TBL_COACH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_DISTRICT')
            and   name  = 'HUYEN_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_DISTRICT.HUYEN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_DISTRICT')
            and   type = 'U')
   drop table TBL_DISTRICT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_DRIVER')
            and   name  = '_IA_CHI_DRIVER_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_DRIVER._IA_CHI_DRIVER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_DRIVER')
            and   type = 'U')
   drop table TBL_DRIVER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_DROPOFF')
            and   name  = 'TBL_DROPOFF2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_DROPOFF.TBL_DROPOFF2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_DROPOFF')
            and   name  = 'TBL_DROPOFF_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_DROPOFF.TBL_DROPOFF_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_DROPOFF')
            and   type = 'U')
   drop table TBL_DROPOFF
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_EMPLOYEE')
            and   name  = 'RELATIONSHIP_25_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_EMPLOYEE.RELATIONSHIP_25_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_EMPLOYEE')
            and   name  = 'TYPE_OF_EMPLOYEE_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_EMPLOYEE.TYPE_OF_EMPLOYEE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_EMPLOYEE')
            and   name  = 'TAI_KHOAN2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_EMPLOYEE.TAI_KHOAN2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_EMPLOYEE')
            and   name  = '_IA_CHI_EMPLOYEE_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_EMPLOYEE._IA_CHI_EMPLOYEE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_EMPLOYEE')
            and   type = 'U')
   drop table TBL_EMPLOYEE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_PERMISSION')
            and   type = 'U')
   drop table TBL_PERMISSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_PERMISSIONGROUP')
            and   type = 'U')
   drop table TBL_PERMISSIONGROUP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_PICKUP')
            and   name  = 'TBL_PICKUP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_PICKUP.TBL_PICKUP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_PICKUP')
            and   name  = 'TBL_PICKUP_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_PICKUP.TBL_PICKUP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_PICKUP')
            and   type = 'U')
   drop table TBL_PICKUP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_PRICE')
            and   type = 'U')
   drop table TBL_PRICE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_SEAT')
            and   type = 'U')
   drop table TBL_SEAT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_SERVICE')
            and   name  = 'RELATIONSHIP_24_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_SERVICE.RELATIONSHIP_24_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_SERVICE')
            and   name  = 'RELATIONSHIP_23_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_SERVICE.RELATIONSHIP_23_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_SERVICE')
            and   name  = 'RELATIONSHIP_22_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_SERVICE.RELATIONSHIP_22_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_SERVICE')
            and   name  = 'RELATIONSHIP_20_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_SERVICE.RELATIONSHIP_20_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_SERVICE')
            and   type = 'U')
   drop table TBL_SERVICE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_STATION')
            and   type = 'U')
   drop table TBL_STATION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_TICKET')
            and   name  = 'RELATIONSHIP_26_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_TICKET.RELATIONSHIP_26_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_TICKET')
            and   name  = 'GHE_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_TICKET.GHE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_TICKET')
            and   name  = 'CO_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_TICKET.CO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_TICKET')
            and   type = 'U')
   drop table TBL_TICKET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_TIMEBUSLINE')
            and   type = 'U')
   drop table TBL_TIMEBUSLINE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_TRIP')
            and   name  = 'CO_THE__I_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_TRIP.CO_THE__I_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_TRIP')
            and   name  = 'THUOC_TRIP_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_TRIP.THUOC_TRIP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_TRIP')
            and   name  = 'THOI_GIAN_CUA_TRIP_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_TRIP.THOI_GIAN_CUA_TRIP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_TRIP')
            and   name  = 'DRIVER_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_TRIP.DRIVER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_TRIP')
            and   name  = 'CO_TRIP_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_TRIP.CO_TRIP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_TRIP')
            and   type = 'U')
   drop table TBL_TRIP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_TYPEOFEMPLOYEE')
            and   type = 'U')
   drop table TBL_TYPEOFEMPLOYEE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_UNIT')
            and   type = 'U')
   drop table TBL_UNIT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBL_WARD')
            and   name  = 'XA_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBL_WARD.XA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBL_WARD')
            and   type = 'U')
   drop table TBL_WARD
go

/*==============================================================*/
/* Table: TBL_ACCOUNT                                           */
/*==============================================================*/
create table TBL_ACCOUNT (
   IDACCOUNT            int                  identity,
   IDEMPLOYEE           int                  not null,
   USERNAME             varchar(100)         null,
   PASSWORD             varchar(50)          null,
   constraint PK_TBL_ACCOUNT primary key (IDACCOUNT)
)
go

/*==============================================================*/
/* Index: TAI_KHOAN_FK                                          */
/*==============================================================*/




create nonclustered index TAI_KHOAN_FK on TBL_ACCOUNT (IDEMPLOYEE ASC)
go

/*==============================================================*/
/* Table: TBL_BILL                                              */
/*==============================================================*/
create table TBL_BILL (
   IDBILL               int                  identity,
   IDEMPLOYEE           int                  not null,
   IDCLIENT             int                  not null,
   TOTALMONEY           money                null,
   constraint PK_TBL_BILL primary key (IDBILL)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_16_FK on TBL_BILL (IDCLIENT ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_17_FK on TBL_BILL (IDEMPLOYEE ASC)
go

/*==============================================================*/
/* Table: TBL_BILLDETAILS                                       */
/*==============================================================*/
create table TBL_BILLDETAILS (
   IDBILL               int                  not null,
   IDTICKET             int                  not null,
   constraint PK_TBL_BILLDETAILS primary key (IDBILL, IDTICKET)
)
go

/*==============================================================*/
/* Index: TBL_BILLDETAILS_FK                                    */
/*==============================================================*/




create nonclustered index TBL_BILLDETAILS_FK on TBL_BILLDETAILS (IDBILL ASC)
go

/*==============================================================*/
/* Index: TBL_BILLDETAILS2_FK                                   */
/*==============================================================*/




create nonclustered index TBL_BILLDETAILS2_FK on TBL_BILLDETAILS (IDTICKET ASC)
go

/*==============================================================*/
/* Table: TBL_BOOKED                                            */
/*==============================================================*/
create table TBL_BOOKED (
   IDTRIP             int                  not null,
   IDSEAT               int                  not null,
   constraint PK_TBL_BOOKED primary key (IDTRIP, IDSEAT)
)
go

/*==============================================================*/
/* Index: TBL_BOOKED_FK                                         */
/*==============================================================*/




create nonclustered index TBL_BOOKED_FK on TBL_BOOKED (IDTRIP ASC)
go

/*==============================================================*/
/* Index: TBL_BOOKED2_FK                                        */
/*==============================================================*/




create nonclustered index TBL_BOOKED2_FK on TBL_BOOKED (IDSEAT ASC)
go

/*==============================================================*/
/* Table: TBL_BUSLINE                                           */
/*==============================================================*/
create table TBL_BUSLINE (
   IDBUSLINE            int                  identity,
   DEPARTURESTATION     nvarchar(max)                 not null,
   DESTINATIONSTATION   nvarchar(max)                 not null,
   constraint PK_TBL_BUSLINE primary key (IDBUSLINE)
)
go

/*==============================================================*/
/* Table: TBL_CITY                                              */
/*==============================================================*/
create table TBL_CITY (
   IDCITY               int                  not null,
   NAMECITY             nvarchar(max)                 not null,
   constraint PK_TBL_CITY primary key (IDCITY)
)
go

/*==============================================================*/
/* Table: TBL_CLIENT                                            */
/*==============================================================*/
create table TBL_CLIENT (
   IDCLIENT             int                  identity,
   IDWARD               int                  not null,
   NAMECLIENT           nvarchar(max)                 null,
   DATEOFBIRTHCLIENT    date             null,
   GENDERCLIENT        nvarchar(max)                 null,
   IDENTITYCARDCLIENT   varchar(12)          null,
   PHONECLIENT          varchar(10)          null,
   EMAILCLIENT          varchar(200)         null,
   constraint PK_TBL_CLIENT primary key (IDCLIENT)
)
go

/*==============================================================*/
/* Index: _IA_CHI_CLIENT_FK                                     */
/*==============================================================*/




create nonclustered index _IA_CHI_CLIENT_FK on TBL_CLIENT (IDWARD ASC)
go

/*==============================================================*/
/* Table: TBL_COACH                                             */
/*==============================================================*/
create table TBL_COACH (
   IDCOACH              int                  identity,
   LICENSEPLATE         varchar(20)          not null,
   AMOUNTSEAT           int                  not null,
   constraint PK_TBL_COACH primary key (IDCOACH)
)
go

/*==============================================================*/
/* Table: TBL_DISTRICT                                          */
/*==============================================================*/
create table TBL_DISTRICT (
   IDDISTRICT           int                  not null,
   IDCITY               int                  not null,
   NAMEDISTRICT         nvarchar(max)                 not null,
   constraint PK_TBL_DISTRICT primary key (IDDISTRICT)
)
go

/*==============================================================*/
/* Index: HUYEN_FK                                              */
/*==============================================================*/




create nonclustered index HUYEN_FK on TBL_DISTRICT (IDCITY ASC)
go

/*==============================================================*/
/* Table: TBL_DRIVER                                            */
/*==============================================================*/
create table TBL_DRIVER (
   IDDRIVER             int                  identity,
   IDWARD               int                  not null,
   NAMEDRIVER           nvarchar(max)                 not null,
   DATEOFBIRTHDRIVER    date             not null,
   GENDERDRIVER         nvarchar(max)                 not null,
   IDENTITYCARDDRIVER   varchar(12)          not null,
   PHONEDRIVER          varchar(10)          not null,
   EMAILDRIVER          varchar(200)         not null,
   DEGREE               varchar(5)           null,
   constraint PK_TBL_DRIVER primary key (IDDRIVER)
)
go

/*==============================================================*/
/* Index: _IA_CHI_DRIVER_FK                                     */
/*==============================================================*/




create nonclustered index _IA_CHI_DRIVER_FK on TBL_DRIVER (IDWARD ASC)
go

/*==============================================================*/
/* Table: TBL_DROPOFF                                           */
/*==============================================================*/
create table TBL_DROPOFF (
   IDBUSLINE            int                  not null,
   IDSTATION            int                  not null,
   SURCHARGEDROPOFF     float                null,
   constraint PK_TBL_DROPOFF primary key (IDBUSLINE, IDSTATION)
)
go

/*==============================================================*/
/* Index: TBL_DROPOFF_FK                                        */
/*==============================================================*/




create nonclustered index TBL_DROPOFF_FK on TBL_DROPOFF (IDBUSLINE ASC)
go

/*==============================================================*/
/* Index: TBL_DROPOFF2_FK                                       */
/*==============================================================*/




create nonclustered index TBL_DROPOFF2_FK on TBL_DROPOFF (IDSTATION ASC)
go

/*==============================================================*/
/* Table: TBL_EMPLOYEE                                          */
/*==============================================================*/
create table TBL_EMPLOYEE (
   IDEMPLOYEE           int                  identity,
   IDWARD               int                  not null,
   IDTYPE               int                  not null,
   IDACCOUNT            int                  null,
   IDPERMISSIONGROUP    int                  null,
   NAMEEMPLOYEE         nvarchar(max)                 null,
   DATEOFBIRTHEMPLOYEE  date             null,
   GENDEREMPLOYEE       nvarchar(3)                 null,
   IDENTITYCARDEMPLOYEE varchar(12)          null,
   PHONEEMPLOYEE        varchar(10)          null,
   EMAILEMPLOYEE        varchar(200)         null,
   constraint PK_TBL_EMPLOYEE primary key (IDEMPLOYEE)
)
go

/*==============================================================*/
/* Index: _IA_CHI_EMPLOYEE_FK                                   */
/*==============================================================*/




create nonclustered index _IA_CHI_EMPLOYEE_FK on TBL_EMPLOYEE (IDWARD ASC)
go

/*==============================================================*/
/* Index: TAI_KHOAN2_FK                                         */
/*==============================================================*/




create nonclustered index TAI_KHOAN2_FK on TBL_EMPLOYEE (IDACCOUNT ASC)
go

/*==============================================================*/
/* Index: TYPE_OF_EMPLOYEE_FK                                   */
/*==============================================================*/




create nonclustered index TYPE_OF_EMPLOYEE_FK on TBL_EMPLOYEE (IDTYPE ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_25_FK on TBL_EMPLOYEE (IDPERMISSIONGROUP ASC)
go

/*==============================================================*/
/* Table: TBL_PERMISSION                                        */
/*==============================================================*/
create table TBL_PERMISSION (
   IDPERMISSION         int                  identity,
   DESCRIBEPERMISSION   nvarchar(200)                 null,
   constraint PK_TBL_PERMISSION primary key (IDPERMISSION)
)
go

/*==============================================================*/
/* Table: TBL_PERMISSIONGROUP                                   */
/*==============================================================*/
create table TBL_PERMISSIONGROUP (
   IDPERMISSIONGROUP    int                  identity,
   NAMEGROUP            nvarchar(200)                 null,
   constraint PK_TBL_PERMISSIONGROUP primary key (IDPERMISSIONGROUP)
)
go

/*==============================================================*/
/* Table: TBL_PICKUP                                            */
/*==============================================================*/
create table TBL_PICKUP (
   IDSTATION            int                  not null,
   IDBUSLINE            int                  not null,
   SURCHARGEPICKUP      float                null,
   constraint PK_TBL_PICKUP primary key (IDSTATION, IDBUSLINE)
)
go

/*==============================================================*/
/* Index: TBL_PICKUP_FK                                         */
/*==============================================================*/




create nonclustered index TBL_PICKUP_FK on TBL_PICKUP (IDSTATION ASC)
go

/*==============================================================*/
/* Index: TBL_PICKUP2_FK                                        */
/*==============================================================*/




create nonclustered index TBL_PICKUP2_FK on TBL_PICKUP (IDBUSLINE ASC)
go

/*==============================================================*/
/* Table: TBL_PRICE                                             */
/*==============================================================*/
create table TBL_PRICE (
   IDPRICE              int                  identity,
   EFFECTIVEDATE        date             null,
   PRICE                money                null,
   constraint PK_TBL_PRICE primary key (IDPRICE)
)
go

/*==============================================================*/
/* Table: TBL_SEAT                                              */
/*==============================================================*/
create table TBL_SEAT (
   IDSEAT               int                  identity,
   SEATPOSITION         varchar(10)          not null,
   constraint PK_TBL_SEAT primary key (IDSEAT)
)
go

/*==============================================================*/
/* Table: TBL_SERVICE                                           */
/*==============================================================*/
create table TBL_SERVICE (
   IDSERVICE            int                  identity,
   IDTRIP               int                  not null,
   IDCLIENT             int                  not null,
   IDEMPLOYEE           int                  not null,
   IDUNIT               int                  not null,
   DESCRIBE             nvarchar(max)                 null,
   AMOUNT               float                null,
   NAMERECIEVER         nvarchar(max)                 null,
   PHONERECIEVER        varchar(11)          null,
   PICKUPPOINTSERVICE   nvarchar(max)                 null,
   DROPOFFPOINT         nvarchar(max)                 null,
   USEDATESERVICE       date             null,
   constraint PK_TBL_SERVICE primary key (IDSERVICE)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_20_FK on TBL_SERVICE (IDEMPLOYEE ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_22_FK on TBL_SERVICE (IDCLIENT ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_23_FK on TBL_SERVICE (IDUNIT ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_24_FK on TBL_SERVICE (IDTRIP ASC)
go

/*==============================================================*/
/* Table: TBL_STATION                                           */
/*==============================================================*/
create table TBL_STATION (
   IDSTATION            int                  identity,
   NAMESTATION          nvarchar(200)                 null,
   constraint PK_TBL_STATION primary key (IDSTATION)
)
go

/*==============================================================*/
/* Table: TBL_TICKET                                            */
/*==============================================================*/
create table TBL_TICKET (
   IDTICKET             int                  identity,
   IDSEAT               int                  not null,
   IDTRIP               int                  not null,
   IDPRICE              int                  not null,
   PICKUPPOINT          nvarchar(max)                 null,
   DROPOFFPOINT         nvarchar(max)                 null,
   TICKETPURCHASEDATE   date             null,
   constraint PK_TBL_TICKET primary key (IDTICKET)
)
go

/*==============================================================*/
/* Index: CO_FK                                                 */
/*==============================================================*/




create nonclustered index CO_FK on TBL_TICKET (IDTRIP ASC)
go

/*==============================================================*/
/* Index: GHE_FK                                                */
/*==============================================================*/




create nonclustered index GHE_FK on TBL_TICKET (IDSEAT ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_26_FK on TBL_TICKET (IDPRICE ASC)
go

/*==============================================================*/
/* Table: TBL_TIMEBUSLINE                                       */
/*==============================================================*/
create table TBL_TIMEBUSLINE (
   IDTIME               int                  identity,
   STARTTIME            time(0)             not null,
   FINISHTIME           time(0)             not null,
   constraint PK_TBL_TIMEBUSLINE primary key (IDTIME)
)
go

/*==============================================================*/
/* Table: TBL_TRIP                                              */
/*==============================================================*/
create table TBL_TRIP (
   IDTRIP               int                  identity,
   IDTIME               int                  not null,
   IDBUSLINE            int                  not null,
   IDEMPLOYEE           int                  not null,
   IDCOACH              int                  not null,
   IDDRIVER             int                  not null,
   DEPARTUREDAY         date             not null,
   AMOUNTEMPTYSEAT      int                  not null,
   constraint PK_TBL_TRIP primary key (IDTRIP)
)
go

/*==============================================================*/
/* Index: CO_TRIP_FK                                            */
/*==============================================================*/




create nonclustered index CO_TRIP_FK on TBL_TRIP (IDBUSLINE ASC)
go

/*==============================================================*/
/* Index: DRIVER_FK                                             */
/*==============================================================*/




create nonclustered index DRIVER_FK on TBL_TRIP (IDDRIVER ASC)
go

/*==============================================================*/
/* Index: THOI_GIAN_CUA_TRIP_FK                                 */
/*==============================================================*/




create nonclustered index THOI_GIAN_CUA_TRIP_FK on TBL_TRIP (IDTIME ASC)
go

/*==============================================================*/
/* Index: THUOC_TRIP_FK                                         */
/*==============================================================*/




create nonclustered index THUOC_TRIP_FK on TBL_TRIP (IDEMPLOYEE ASC)
go

/*==============================================================*/
/* Index: CO_THE__I_FK                                          */
/*==============================================================*/




create nonclustered index CO_THE__I_FK on TBL_TRIP (IDCOACH ASC)
go

/*==============================================================*/
/* Table: TBL_TYPEOFEMPLOYEE                                    */
/*==============================================================*/
create table TBL_TYPEOFEMPLOYEE (
   IDTYPE               int                  identity,
   NAMETYPE             nvarchar(200)                 not null,
   constraint PK_TBL_TYPEOFEMPLOYEE primary key (IDTYPE)
)
go

/*==============================================================*/
/* Table: TBL_UNIT                                              */
/*==============================================================*/
create table TBL_UNIT (
   IDUNIT               int                  identity,
   NAMEUNIT             nvarchar(200)                 null,
   MAXAMOUNT            float                null,
   PRICEUNIT            float                null,
   constraint PK_TBL_UNIT primary key (IDUNIT)
)
go

/*==============================================================*/
/* Table: TBL_WARD                                              */
/*==============================================================*/
create table TBL_WARD (
   IDWARD               int                  not null,
   IDDISTRICT           int                  not null,
   NAMEWARD             nvarchar(max)                 not null,
   constraint PK_TBL_WARD primary key (IDWARD)
)
go

/*==============================================================*/
/* Index: XA_FK                                                 */
/*==============================================================*/




create nonclustered index XA_FK on TBL_WARD (IDDISTRICT ASC)
go

alter table TBL_ACCOUNT
   add constraint FK_TBL_ACCO_TAI_KHOAN_TBL_EMPL foreign key (IDEMPLOYEE)
      references TBL_EMPLOYEE (IDEMPLOYEE)
go

alter table TBL_BILL
   add constraint FK_TBL_BILL_RELATIONS_TBL_CLIE foreign key (IDCLIENT)
      references TBL_CLIENT (IDCLIENT)
go

alter table TBL_BILL
   add constraint FK_TBL_BILL_RELATIONS_TBL_EMPL foreign key (IDEMPLOYEE)
      references TBL_EMPLOYEE (IDEMPLOYEE)
go

alter table TBL_BILLDETAILS
   add constraint FK_TBL_BILL_TBL_BILLD_TBL_BILL foreign key (IDBILL)
      references TBL_BILL (IDBILL)
go

alter table TBL_BILLDETAILS
   add constraint FK_TBL_BILL_TBL_BILLD_TBL_TICK foreign key (IDTICKET)
      references TBL_TICKET (IDTICKET)
go

alter table TBL_BOOKED
   add constraint FK_TBL_BOOK_TBL_BOOKE_TBL_TRIP foreign key (IDTRIP)
      references TBL_TRIP (IDTRIP)
go

alter table TBL_BOOKED
   add constraint FK_TBL_BOOK_TBL_BOOKE_TBL_SEAT foreign key (IDSEAT)
      references TBL_SEAT (IDSEAT)
go

alter table TBL_CLIENT
   add constraint FK_TBL_CLIE__IA_CHI_C_TBL_WARD foreign key (IDWARD)
      references TBL_WARD (IDWARD)
go

alter table TBL_DISTRICT
   add constraint FK_TBL_DIST_HUYEN_TBL_CITY foreign key (IDCITY)
      references TBL_CITY (IDCITY)
go

alter table TBL_DRIVER
   add constraint FK_TBL_DRIV__IA_CHI_D_TBL_WARD foreign key (IDWARD)
      references TBL_WARD (IDWARD)
go

alter table TBL_DROPOFF
   add constraint FK_TBL_DROP_TBL_DROPO_TBL_BUSL foreign key (IDBUSLINE)
      references TBL_BUSLINE (IDBUSLINE)
go

alter table TBL_DROPOFF
   add constraint FK_TBL_DROP_TBL_DROPO_TBL_STAT foreign key (IDSTATION)
      references TBL_STATION (IDSTATION)
go

alter table TBL_EMPLOYEE
   add constraint FK_TBL_EMPL_RELATIONS_TBL_PERM foreign key (IDPERMISSIONGROUP)
      references TBL_PERMISSIONGROUP (IDPERMISSIONGROUP)
go

alter table TBL_EMPLOYEE
   add constraint FK_TBL_EMPL_TAI_KHOAN_TBL_ACCO foreign key (IDACCOUNT)
      references TBL_ACCOUNT (IDACCOUNT)
go

alter table TBL_EMPLOYEE
   add constraint FK_TBL_EMPL_TYPE_OF_E_TBL_TYPE foreign key (IDTYPE)
      references TBL_TYPEOFEMPLOYEE (IDTYPE)
go

alter table TBL_EMPLOYEE
   add constraint FK_TBL_EMPL__IA_CHI_E_TBL_WARD foreign key (IDWARD)
      references TBL_WARD (IDWARD)
go

alter table TBL_PICKUP
   add constraint FK_TBL_PICK_TBL_PICKU_TBL_STAT foreign key (IDSTATION)
      references TBL_STATION (IDSTATION)
go

alter table TBL_PICKUP
   add constraint FK_TBL_PICK_TBL_PICKU_TBL_BUSL foreign key (IDBUSLINE)
      references TBL_BUSLINE (IDBUSLINE)
go

alter table TBL_SERVICE
   add constraint FK_TBL_SERV_RELATIONS_TBL_EMPL foreign key (IDEMPLOYEE)
      references TBL_EMPLOYEE (IDEMPLOYEE)
go

alter table TBL_SERVICE
   add constraint FK_TBL_SERV_RELATIONS_TBL_CLIE foreign key (IDCLIENT)
      references TBL_CLIENT (IDCLIENT)
go

alter table TBL_SERVICE
   add constraint FK_TBL_SERV_RELATIONS_TBL_UNIT foreign key (IDUNIT)
      references TBL_UNIT (IDUNIT)
go

alter table TBL_SERVICE
   add constraint FK_TBL_SERV_RELATIONS_TBL_TRIP foreign key (IDTRIP)
      references TBL_TRIP (IDTRIP)
go

alter table TBL_TICKET
   add constraint FK_TBL_TICK_CO_TBL_TRIP foreign key (IDTRIP)
      references TBL_TRIP (IDTRIP)
go

alter table TBL_TICKET
   add constraint FK_TBL_TICK_GHE_TBL_SEAT foreign key (IDSEAT)
      references TBL_SEAT (IDSEAT)
go

alter table TBL_TICKET
   add constraint FK_TBL_TICK_RELATIONS_TBL_PRIC foreign key (IDPRICE)
      references TBL_PRICE (IDPRICE)
go

alter table TBL_TRIP
   add constraint FK_TBL_TRIP_CO_THE__I_TBL_COAC foreign key (IDCOACH)
      references TBL_COACH (IDCOACH)
go

alter table TBL_TRIP
   add constraint FK_TBL_TRIP_CO_TRIP_TBL_BUSL foreign key (IDBUSLINE)
      references TBL_BUSLINE (IDBUSLINE)
go

alter table TBL_TRIP
   add constraint FK_TBL_TRIP_DRIVER_TBL_DRIV foreign key (IDDRIVER)
      references TBL_DRIVER (IDDRIVER)
go

alter table TBL_TRIP
   add constraint FK_TBL_TRIP_THOI_GIAN_TBL_TIME foreign key (IDTIME)
      references TBL_TIMEBUSLINE (IDTIME)
go

alter table TBL_TRIP
   add constraint FK_TBL_TRIP_THUOC_TRI_TBL_EMPL foreign key (IDEMPLOYEE)
      references TBL_EMPLOYEE (IDEMPLOYEE)
go

alter table TBL_WARD
   add constraint FK_TBL_WARD_XA_TBL_DIST foreign key (IDDISTRICT)
      references TBL_DISTRICT (IDDISTRICT)
go
ALTER TABLE TBL_DROPOFF
Add constraint DF_SURCHARGEDROPOFF default 0 for SURCHARGEDROPOFF
go

CREATE TABLE tbl_GrantPermission_Group(
	IDPermission int,
	IDPermissionGroup int,
	constraint PK_GrantPermission_Group primary key(IDPermission, IDPermissionGroup),
	constraint FK_GrantPermission_Group_Permission foreign key(IDPermission) references tbl_Permission(IDPermission),
	constraint FK_GrantPermission_Group_PermissionGroup foreign key(IDPermissionGroup) references tbl_PermissionGroup(IDPermissionGroup)
)
GO



/*==========================================================================================================================*/
/*                                                          RÀNG BUỘC TOÀN VẸN                                              */
/*==========================================================================================================================*/
ALTER TABLE tbl_Account
ADD 
	CONSTRAINT UNI_Username UNIQUE (Username)
GO
----------------------------------
AlTER TABLE tbl_Bill
ADD
	CONSTRAINT CK_TotalMoney CHECK (TotalMoney >= 0),
	CONSTRAINT DF_TotalMoney DEFAULT 0 FOR TOTALMONEY
GO
------------------------------------
ALTER TABLE tbl_BusLine
ADD
	CONSTRAINT DF_BusLine_DepartureStation DEFAULT N'Trà Vinh' FOR DepartureStation,
	CONSTRAINT DF_BusLine_DestinationStation DEFAULT N'Hồ Chí Minh' FOR DestinationStation

GO
------------------------------------
ALTER TABLE tbl_Client
ADD CONSTRAINT CK_Gender_Client CHECK(GenderClient in (N'Nam',N'Nữ'))

ALTER TABLE tbl_Client
ADD CONSTRAINT CK_Phone_Client CHECK(PhoneClient LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR PhoneClient LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')

ALTER TABLE tbl_Client
ADD CONSTRAINT CK_IdentityCart_Clent CHECK(IdentityCardClient LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR IdentityCardClient LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
	OR IdentityCardClient LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR IdentityCardClient LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')

ALTER TABLE tbl_Client
ADD CONSTRAINT UNI_IdentityCart_Client UNIQUE(IdentityCardClient)
ALTER TABLE tbl_Client
ADD CONSTRAINT UNI_Phone_Client UNIQUE(PhoneClient)
ALTER TABLE tbl_Client
ADD CONSTRAINT CK_Email_Client Check(EmailClient like '[a-z0-9]%@gmail.[a-z0-9]%')
------------------------------------
ALTER TABLE tbl_Coach
ADD 
	CONSTRAINT UNI_LicensePlate UNIQUE (LicensePlate)
GO
ALTER TABLE tbl_Coach
ADD 
	CONSTRAINT DF_AmountSeat DEFAULT 35 FOR AmountSeat
GO
------------------------------------
ALTER TABLE tbl_Driver
ADD CONSTRAINT CK_Gender_Driver CHECK(GenderDriver in (N'Nam',N'Nữ'))

ALTER TABLE tbl_Driver
ADD CONSTRAINT CK_Phone_Driver CHECK(PhoneDriver LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR PhoneDriver LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')

ALTER TABLE tbl_Driver
ADD CONSTRAINT CK_IdentityCart_Driver CHECK(IdentityCardDriver LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR IdentityCardDriver LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
	OR IdentityCardDriver LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR IdentityCardDriver LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')

ALTER TABLE tbl_Driver
ADD CONSTRAINT UNI_IdentityCart_Driver UNIQUE(IdentityCardDriver)
ALTER TABLE tbl_Driver
ADD CONSTRAINT UNI_Phone_Driver UNIQUE(PhoneDriver)
ALTER TABLE tbl_Driver
ADD CONSTRAINT CK_Email_Driver Check(EmailDriver like '[a-z0-9]%@gmail.[a-z0-9]%')
------------------------------------
AlTER TABLE tbl_Employee
ADD CONSTRAINT CK_Gender_Employee CHECK (GenderEmployee IN (N'Nam', N'Nữ'))
GO
AlTER TABLE tbl_Employee
ADD CONSTRAINT UNI_Phone_Employee UNIQUE (PhoneEmployee)
AlTER TABLE tbl_Employee
ADD CONSTRAINT UNI_Email_Employee UNIQUE (EmailEmployee)
ALTER TABLE tbl_Employee
ADD CONSTRAINT CK_Email_Employee Check(EmailEmployee like '[a-z0-9]%@gmail.[a-z0-9]%')
------------------------------------
ALTER TABLE tbl_PermissionGroup
ADD CONSTRAINT UNI_PermissionGroup_Name UNIQUE(NAMEGROUP)
GO
------------------------------------
ALTER TABLE tbl_Permission
ADD CONSTRAINT UNI_Permission_Describe UNIQUE(DESCRIBEPERMISSION)
GO
AlTER TABLE tbl_Permission
ADD CONSTRAINT DF_Describe_Permission DEFAULT 'CHƯA XÁC ĐỊNH' FOR DESCRIBEPERMISSION
------------------------------------
ALTER TABLE tbl_Price
ADD CONSTRAINT DF_Price DEFAULT 140000 FOR Price
GO

ALTER TABLE tbl_Price
ADD CONSTRAINT DF_EffectiveDate DEFAULT GETDATE() FOR EffectiveDate
GO
------------------------------------
ALTER TABLE tbl_Seat
ADD CONSTRAINT UNI_SeatPosition UNIQUE (SeatPosition)
GO
------------------------------------
ALTER TABLE tbl_Service
ADD	
	CONSTRAINT DF_Service_Describe DEFAULT N'CHƯA CÓ SỰ MÔ TẢ VỀ DỊCH VỤ!' FOR Describe,
	CONSTRAINT DF_Service_Amount DEFAULT  0 FOR Amount,
	CONSTRAINT CK_Service_Amount CHECK( Amount >= 0),
	CONSTRAINT DF_Service_NameReciever DEFAULT N'KHÔNG ĐƯỢC CUNG CẤP' FOR NameReciever,
	CONSTRAINT DF_Service_PhoneReciever  DEFAULT 'NULL' FOR PhoneReciever, --- Có 1 khách hàng có thể dk nhiều lần  nên sdt không có unique
	CONSTRAINT DF_Service_PickUpPoint DEFAULT N'CHƯA CUNG CẤP' FOR PICKUPPOINTSERVICE,
	CONSTRAINT DF_Service_DropOffPoint DEFAULT N'CHƯA CUNG CẤP' FOR DropOffPoint,
	CONSTRAINT DF_Service_UseDate DEFAULT GETDATE() FOR USEDATESERVICE
GO
------------------------------------
ALTER TABLE tbl_Station
ADD CONSTRAINT UNI_NameStation UNIQUE (NameStation)
GO
------------------------------------
ALTER TABLE tbl_Ticket
ADD 
	CONSTRAINT DF_PickUpPoint DEFAULT N'CHƯA ĐƯỢC CUNG CẤP' FOR PickUpPoint
GO

ALTER TABLE tbl_Ticket
ADD 
	CONSTRAINT DF_DropOffPoint DEFAULT N'CHƯA ĐƯỢC CUNG CẤP' FOR DropOffPoint
GO

ALTER TABLE tbl_Ticket
ADD 
	CONSTRAINT DF_TicketPurchaseDate DEFAULT GETDATE() FOR TicketPurchaseDate
GO
------------------------------------
ALTER TABLE tbl_TimeBusLine
ADD
	CONSTRAINT DF_TimeBusLine_StartTime DEFAULT  '00:00' FOR StartTime,
	CONSTRAINT DF_TimeBusLine_FinishTime DEFAULT  '00:00' FOR FinishTime

GO
------------------------------------
ALTER TABLE tbl_Trip
ADD
	CONSTRAINT DF_Trip_DepartureDay DEFAULT GETDATE() FOR DepartureDay,
	CONSTRAINT CK_Trip_AmountEmptySeat CHECK(AmountEmptySeat >= 0) ,
	CONSTRAINT DF_Trip_AmountEmptySeat DEFAULT 35 FOR AmountEmptySeat
GO
------------------------------------
AlTER TABLE tbl_TypeOfEmployee
ADD CONSTRAINT DF_NameType DEFAULT 'CHƯA XÁC ĐỊNH' FOR NameType
ALTER TABLE tbl_TypeOfEmployee
ADD CONSTRAINT UNI_NameTypeOfEmployee UNIQUE (NameType)
GO
------------------------------------
ALTER TABLE tbl_Unit
ADD
	CONSTRAINT UNI_Unit_Name UNIQUE(NAMEUNIT),
	CONSTRAINT DF_Unit_Price DEFAULT 1000 FOR PriceUnit,
	CONSTRAINT DF_Unit_MaxAmount DEFAULT 0 FOR MaxAmount,
	CONSTRAINT CK_Unit_Price CHECK (PriceUnit >= 0)
------------------------------------



/*==========================================================================================================================*/
/*                                                             TRIGGER                                                      */
/*==========================================================================================================================*/

--select e.ID, e.Name, e.Email, p.Describe from tbl_Employee e, tbl_PermissionGroup pg, tbl_GrantPermission_Group gg, tbl_Permission p where e.IDPermissionGroup = pg.ID and pg.ID = gg.IDPermissionGroup and gg.IDPermission = p.ID
CREATE TRIGGER tr_InsertEmployee ON tbl_Employee
AFTER INSERT
AS
BEGIN
	declare @username varchar(max), @password varchar(max) = 'employee123', @idEmployee int, @describe nvarchar(max)
	select @idEmployee = e.IDEMPLOYEE, @username = e.EMAILEMPLOYEE, @describe = p.DESCRIBEPERMISSION from inserted e, tbl_PermissionGroup pg, tbl_GrantPermission_Group gg, tbl_Permission p where e.IDPermissionGroup = pg.IDPERMISSIONGROUP and pg.IDPERMISSIONGROUP = gg.IDPermissionGroup and gg.IDPermission = p.IDPERMISSION
	if @describe = N'Không có quyền'
		return
	insert into tbl_Account(USERNAME, PASSWORD, IDEMPLOYEE) values (@username, @password, @idEmployee)
	declare @idaccount int
	select @idaccount = IDACCOUNT from TBL_ACCOUNT where USERNAME = @username and PASSWORD = @password
	update TBL_EMPLOYEE set IDACCOUNT = @idaccount where IDEMPLOYEE = @idEmployee
END	


CREATE VIEW view_trip
AS
	select t.IDTRIP, cast(ti.STARTTIME as nvarchar(max)) + ' - ' + cast(ti.FINISHTIME as nvarchar(max)) as 'Time', b.DEPARTURESTATION + ' - ' + b.DESTINATIONSTATION as 'BusLine', e.NAMEEMPLOYEE, c.LICENSEPLATE, d.NAMEDRIVER, t.DEPARTUREDAY, t.AMOUNTEMPTYSEAT
	from TBL_TRIP t, TBL_TIMEBUSLINE ti, TBL_BUSLINE b, TBL_EMPLOYEE e, TBL_COACH c, TBL_DRIVER d
	where ti.IDTIME = t.IDTIME and b.IDBUSLINE = t.IDBUSLINE and e.IDEMPLOYEE = t.IDEMPLOYEE and c.IDCOACH = t.IDCOACH and d.IDDRIVER = t.IDDRIVER
GO

/*==========================================================================================================================*/
/*                                                       STORE PROCEDURE                                                    */
/*==========================================================================================================================*/
CREATE PROC sp_TimeDistance @Start time, @End time
AS
	SELECT CONVERT(TIME,DATEADD(MS,DATEDIFF(SS, @Start, @End)*1000,0),114)
GO
--exec sp_TimeDistance '12:13', '23:01'

CREATE PROC sp_GetIDAccount @username nvarchar(max), @password nvarchar(max)
AS
	declare @id int = 0
	if (select count(*) from tbl_Account where Username = @username and Password = @password) > 0
		select @id = IDACCOUNT from tbl_Account where Username = @username and Password = @password
	return @id
GO
--declare @id int
--exec @id = sp_GetIDAccount 'trihoang@gmail.com', 'employee123'
--select @id

alter PROC sp_InsertTrip @idTime int, @idBusLine int, @idEmployee int, @idCoach int, @idDriver int, @strResult nvarchar(max) output
AS
	if not exists (select * from TBL_EMPLOYEE e, TBL_TYPEOFEMPLOYEE te where e.IDEMPLOYEE = @idEmployee and e.IDTYPE = te.IDTYPE and te.NAMETYPE like N'%Lơ xe%')
	begin
		set @strResult = N'Nhân viên này không thể theo xe !!!'
		return
	end

	if not exists (select * from TBL_DRIVER where IDDRIVER = @idDriver)
	begin
		set @strResult = N'Mã tài xế không tồn tại !!!'
		return
	end
		
	if exists (select * from TBL_TRIP where IDTIME = @idTime and IDBUSLINE = @idBusLine and DEPARTUREDAY = GETDATE())
	begin
		set @strResult = N'Chuyến đi đã tồn tại !!!'
		return
	end
		 
	if exists (select * from TBL_TRIP where DEPARTUREDAY = GETDATE() and IDEMPLOYEE = @idEmployee and IDTIME = @idTime)
	begin
		set @strResult = N'Nhân viên này đã được phân công !!!'
		return
	end
		
	if exists (select * from TBL_TRIP where DEPARTUREDAY = GETDATE() and IDDRIVER = @idDriver and IDTIME = @idTime)
	begin
		set @strResult = N'Tài xế này đã được phân công !!!'
		return
	end
		
	if exists (select * from TBL_TRIP where DEPARTUREDAY = GETDATE() and IDCOACH = @idCoach and IDTIME = @idTime)
	begin
		set @strResult = N'Xe này đã có lịch !!!'
		return
	end
		
	insert into TBL_TRIP(IDTIME, IDBUSLINE, IDEMPLOYEE, IDCOACH, IDDRIVER) values (@idTime, @idBusLine, @idEmployee, @idCoach, @idDriver)
	set @strResult = N'Thành công.'
GO

--select * from TBL_EMPLOYEE e, TBL_TYPEOFEMPLOYEE te where e.IDTYPE = te.IDTYPE and te.NAMETYPE like N'%Lơ Xe%'
--select * from TBL_EMPLOYEE e, TBL_TYPEOFEMPLOYEE te where e.IDTYPE = te.IDTYPE and te.NAMETYPE like N'%Kế toán%'
--select * from TBL_COACH
--select * from TBL_DRIVER


CREATE PROC sp_InsertTripDefault
AS
	declare @result nvarchar(100)
	-- Hướng từ Trà Vinh -> Hồ Chí Minh
	exec sp_InsertTrip @idTime=3,@idBusLine=1,@idEmployee=5,@idCoach=1,@idDriver=1,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=4,@idBusLine=2,@idEmployee=9,@idCoach=2,@idDriver=2,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=5,@idBusLine=3,@idEmployee=11,@idCoach=3,@idDriver=3,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=6,@idBusLine=4,@idEmployee=13,@idCoach=4,@idDriver=4,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=7,@idBusLine=1,@idEmployee=15,@idCoach=5,@idDriver=5,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=8,@idBusLine=2,@idEmployee=17,@idCoach=6,@idDriver=6,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=9,@idBusLine=3,@idEmployee=19,@idCoach=7,@idDriver=7,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=10,@idBusLine=4,@idEmployee=20,@idCoach=8,@idDriver=8,@strResult=@result output
	select @result
	-- Hướng từ Hồ Chí Minh -> Trà Vinh
	exec sp_InsertTrip @idTime=3,@idBusLine=16,@idEmployee=11,@idCoach=9,@idDriver=9,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=4,@idBusLine=17,@idEmployee=13,@idCoach=10,@idDriver=10,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=5,@idBusLine=18,@idEmployee=15,@idCoach=11,@idDriver=11,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=6,@idBusLine=19,@idEmployee=17,@idCoach=12,@idDriver=12,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=7,@idBusLine=16,@idEmployee=19,@idCoach=13,@idDriver=13,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=8,@idBusLine=17,@idEmployee=20,@idCoach=14,@idDriver=14,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=9,@idBusLine=18,@idEmployee=5,@idCoach=15,@idDriver=15,@strResult=@result output
	select @result

	exec sp_InsertTrip @idTime=10,@idBusLine=19,@idEmployee=9,@idCoach=1,@idDriver=1,@strResult=@result output
	select @result
GO

CREATE PROC sp_GetIDPriceTicket
AS
	declare @id int
	select @id = IDPRICE from TBL_PRICE where EFFECTIVEDATE = (select max(EFFECTIVEDATE) from TBL_PRICE)
	return @id
GO

--select IDPRICE from TBL_PRICE where EFFECTIVEDATE = (select MAX(EFFECTIVEDATE) from TBL_PRICE)

CREATE PROC sp_InsertAndGetIdBill @idEmployee int, @idClient int, @idBill int output, @strResult nvarchar(max) output
AS
	if not exists (select * from TBL_EMPLOYEE e, TBL_TYPEOFEMPLOYEE te where IDEMPLOYEE = @idEmployee and
		e.IDTYPE = te.IDTYPE and te.NAMETYPE like '%' + N'Vé' + '%')
	begin
		set @strResult = N'Nhân viên này không thể bán vé !!!'
		return
	end
	if not exists (select * from  TBL_CLIENT where IDCLIENT = @idClient)
	begin
		set @strResult = N'Thông tin khách hàng không hợp lệ !!!'
		return
	end
	insert into TBL_BILL(IDEMPLOYEE, IDCLIENT) values (@idEmployee, @idClient)
	set @strResult = N'Thành công'
	set @idBill = (select IDBILL from TBL_BILL where IDBILL = (select max(IDBILL) from TBL_BILL where IDEMPLOYEE = @idEmployee and IDCLIENT = @idClient))
GO


alter PROC sp_InsertTicKet @idSeat int, @idTrip int, @idPicUpPoint int, @idDropOffPoint int, @strResult nvarchar(max) output
AS
	declare @dateOrder datetime = getdate()
	if not exists (select * from TBL_TRIP where IDTRIP = @idTrip)
	begin
		set @strResult = N'Không tìm thấy chuyến đi phù hợp !!!'
		return
	end
	if (@idPicUpPoint = @idDropOffPoint)
	begin
		set @strResult = N'Điểm đón và điểm xuống xe bị trùng nhau !!!'
		return
	end
	if exists (select * from TBL_TRIP where (IDTRIP = @idTrip and @dateOrder > DEPARTUREDAY)
		or (DATEDIFF(D, convert(date, @dateOrder, 103), convert(date, DEPARTUREDAY, 103)) = 0  and convert(time(0), @dateOrder) >= (select ti.STARTTIME from TBL_TIMEBUSLINE ti, TBL_TRIP t where ti.IDTIME = t.IDTIME and IDTRIP = @idTrip)))
	begin
		set @strResult = N'Chuyến đi đã quá hạn !!!'
		return
	end

	if exists (select * from TBL_BOOKED where IDTRIP = @idTrip and IDSEAT = @idSeat)
	begin
		set @strResult = N'Ghế đã có người đặt !!!'
		return
	end

	if not exists (select * from TBL_TRIP t, TBL_PICKUP p where t.IDTRIP = @idTrip and t.IDBUSLINE = p.IDBUSLINE and p.IDSTATION = @idPicUpPoint)
	begin
		set @strResult = N'Điểm đón không tồn tại trong tuyến !!!'
		return
	end

	if not exists (select * from TBL_TRIP t, TBL_DROPOFF d where t.IDTRIP = @idTrip and t.IDBUSLINE = d.IDBUSLINE and d.IDSTATION = @idDropOffPoint)
	begin
		set @strResult = N'Điểm xuống xe không tồn tại trong tuyến !!!'
		return
	end
	declare @idPrice int, @pickup nvarchar(max), @dropoff nvarchar(max)
	exec @idPrice = sp_GetIDPriceTicket
	set @pickup = (select NAMESTATION from TBL_STATION where IDSTATION = @idPicUpPoint)
	set @dropoff = (select NAMESTATION from TBL_STATION where IDSTATION = @idDropOffPoint)
	insert into TBL_TICKET(IDSEAT, IDTRIP, IDPRICE, PICKUPPOINT, DROPOFFPOINT) values (@idSeat, @idTrip, @idPrice, @pickup, @dropoff)
	set @strResult = N'Thành công.'
GO

declare @strResult nvarchar(max)
exec sp_InsertTicKet @idSeat=1, @idTrip=3, @idPicUpPoint=1, @idDropOffPoint=2, @strResult=@strResult output
select @strResult



--if convert(time(0), GETDATE()) > convert(time(0), '15:30:30')
--	print 'true'
--else print 'false'


--select pg.NAMEGROUP from tbl_Employee e, tbl_PermissionGroup pg where e.IDEMPLOYEE = 24 and e.IDPermissionGroup = pg.IDPERMISSIONGROUP




/*==========================================================================================================================*/
/*                                                         INSERT INTO                                                      */
/*==========================================================================================================================*/


--- thêm vào Address

-- =============== Seat
INSERT INTO tbl_Seat
VALUES -- A là tầng dưới -- B là tầng trên. -- lấy xe có 40 chỗ.
	('A1'),	('A2'),	('A3'),	('A4'),	('A5'),	('A6'),	('A7'),	('A8'),	('A9'),	('A10'),
	('A11'),('A12'),('A13'),('A14'),('A15'),('A16'),('A17'),('A18'),('A19'),('A20'),('A21'),('A22'),('A23'),('A24'),
	('B1'),	('B2'),	('B3'),	('B4'),	('B5'),	('B6'),	('B7'),	('B8'),	('B9'),	('B10'),
	('B11'),('B12'),('B13'),('B14'),('B15'),('B16'),('B17'),('B18'),('B19'),('B20'),('B21')
GO

-- =============== Type Of Empoyee
INSERT INTO tbl_TypeOfEmployee
VALUES
	(N'Nhân Viên Quản Lý'),
	(N'Nhân Viên Bán Vé'),
	(N'Nhân Viên Kế Toán'),
	(N'Nhân Viên Lơ Xe')
GO

-- =============== PermissionGroup
INSERT INTO tbl_PermissionGroup VALUES (N'Admin')
INSERT INTO tbl_PermissionGroup VALUES (N'Bán Vé')
INSERT INTO tbl_PermissionGroup VALUES (N'Không')
INSERT INTO tbl_PermissionGroup VALUES (N'Kế Toán')
GO
-- =============== Permission
INSERT INTO tbl_Permission VALUES (N'Có tất cả quyền')
INSERT INTO tbl_Permission VALUES (N'Bán Vé')
INSERT INTO tbl_Permission VALUES (N'Không có quyền')
INSERT INTO tbl_Permission VALUES (N'Quản lý thu chi')
GO
-- =============== GrantPermission Group
INSERT INTO tbl_GrantPermission_Group VALUES (1, 1)
INSERT INTO tbl_GrantPermission_Group VALUES (2, 2)
INSERT INTO tbl_GrantPermission_Group VALUES (3, 3)
INSERT INTO tbl_GrantPermission_Group VALUES (4, 4)
GO

-- =============== Employee
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Châu Thịnh','24/05/2002',N'Nam','335064419','0972714788','thinhae2@gmail.com',29329,1, 1)


SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Lưu Hoàng Trí','09/04/1997',N'Nam','058084044019','0536101288','trihoang@gmail.com',26686,1, 1) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Lưu Thiên Hải','18/03/1996',N'Nam','053084005019','0636001299','thientri@gmail.com',26746,2, 2) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Vũ Hoàng Long','17/03/1993',N'Nam','058084800019','0356401257','hanglong@gmail.com',26791,3, 4)
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Trần Văn Hệ','12/06/1990',N'Nam','058054037019','0339234288','hevan@gmail.com',26986,4,3) 

SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Ngọc Minh Yến','27/09/1989',N'Nữ','058009644019','0536101277','minhyen@gmail.com',27706,1,1) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Bích La Thiên','11/07/2002',N'Nữ','050644005019','0636001290','lathien@gmail.com',27721,2,2) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Hoàng Thị Lụa','17/10/2000',N'Nữ','058089210019','0356401228','hanglua@gmail.com',9199,3,4) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Trần Khắc Ngọc Huệ','19/09/1995',N'Nữ','058054033469','0339234267','huengoc@gmail.com',24826,4,3) 

SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Lưu Hoàng Thiên Phúc','09/04/1987',N'Nam','058084044019','0536101257','thienphuc@gmail.com',19756,2,2) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Lưu Trấn Thiên Hải','18/03/1993',N'Nam','053084005019','0636001291','thienhai@gmail.com',19813,4,3) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Vũ Hoàng Long Cực','17/06/1996',N'Nam','058084800019','0356401222','longcuc@gmail.com',19825,3,4) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Trần Văn Hệ Mẫn','01/02/1992',N'Nam','058054037019','0339234277','heman@gmail.com',32020,4,3) 

SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Ngọc Minh Thanh Thanh','22/02/1992',N'Nữ','058009644019','0536101287','thanhthanh@gmail.com',32124,3,4) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Bích La Thiên Hương','11/07/2001',N'Nữ','050644005019','0636001297','huongthien@gmail.com',32152,4,3) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Hoàng Thị Thắm','19/10/2003',N'Nữ','058089210019','0356401227','hoangtham@gmail.com',32248,3,4) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Trần Huệ Thảo','29/09/1998',N'Nữ','058054033469','0339234287','huethao@gmail.com',32170,4,3) 

SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Thiên Hữu Bảo Long','01/04/1985',N'Nam','058084044019','0596235287','baolong@gmail.com',26518,3,4) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Lưu Hoàng Hà','06/03/1963',N'Nam','045734005019','0637854297','hoangha@gmail.com',26551,4,3) 
SET DATEFORMAT  dmy INSERT INTO tbl_Employee(NAMEEMPLOYEE, DATEOFBIRTHEMPLOYEE, GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE, EMAILEMPLOYEE, IDWARD, IDTYPE, IDPERMISSIONGROUP) VALUES (N'Vũ Văn Lý','24/06/1960',N'Nam','058084300019','0356489627','valy@gmail.com',26584,4,3)

-- =============== Station
INSERT INTO tbl_Station VALUES (N'Quận Bình Thạnh')
INSERT INTO tbl_Station VALUES (N'Sân Bay Tân Sơn Nhất')
INSERT INTO tbl_Station VALUES (N'Quận 7')
INSERT INTO tbl_Station VALUES (N'Khu Công Nghiệp Tân Bình')
INSERT INTO tbl_Station VALUES (N'Quận 8')
INSERT INTO tbl_Station VALUES (N'Phú Nhuận')
INSERT INTO tbl_Station VALUES (N'Quận 3')
INSERT INTO tbl_Station VALUES (N'Quận 1')
INSERT INTO tbl_Station VALUES (N'Càng Long')
INSERT INTO tbl_Station VALUES (N'Thành Phố Trà Vinh')
INSERT INTO tbl_Station VALUES (N'Văn Phòng Trà Vinh')
INSERT INTO tbl_Station VALUES (N'Huyện Cầu Ngang')
INSERT INTO tbl_Station VALUES (N'Huyện Tiểu Cần')
INSERT INTO tbl_Station VALUES (N'Huyện Cầu Kè')
INSERT INTO tbl_Station VALUES (N'Huyện Châu Thành')
INSERT INTO tbl_Station VALUES (N'Bến Xe khách Cầu Ngang')
INSERT INTO tbl_Station VALUES (N'Bến Xe khách Huyện Tiểu Cần')
INSERT INTO tbl_Station VALUES (N'Cầu Trà Mẹt')
INSERT INTO tbl_Station VALUES (N'Nhà Thờ Phước Hảo')
INSERT INTO tbl_Station VALUES (N'Vòng Xoay Tượng Đài Chiến Thắng')
INSERT INTO tbl_Station VALUES (N'Cây Xăng Thuận Phát')
INSERT INTO tbl_Station VALUES (N'Ấp Bến Có')
INSERT INTO tbl_Station VALUES (N'Trạm Thu Phí Tân An')
INSERT INTO tbl_Station VALUES (N'Vòng Xoay Ngã 5')
INSERT INTO tbl_Station VALUES (N'Lò Bánh Mì Minh Tâm')
INSERT INTO tbl_Station VALUES (N'Lò Bánh Mì Phương Lan')
INSERT INTO tbl_Station VALUES (N'Cầu Vượt Nguyễn Văn Linh')
INSERT INTO tbl_Station VALUES (N'Công Viên Phú Lâm')
INSERT INTO tbl_Station VALUES (N'Chi Nhánh Xăng Dầu Số 06 (COMECO)')
INSERT INTO tbl_Station VALUES (N'Văn Phòng Tân Thanh Thủy - Trà Vinh')
INSERT INTO tbl_Station VALUES (N'Bến Xe Miền Tây')
INSERT INTO tbl_Station VALUES (N'Quận 11')
INSERT INTO tbl_Station VALUES (N'Bến Xe Bến Tre')
INSERT INTO tbl_Station VALUES (N'Trạm Thu Phí Rạch Miễu')
INSERT INTO tbl_Station VALUES (N'Chợ Mỏ Cày')
INSERT INTO tbl_Station VALUES (N'Cầu Cổ Chiên')
INSERT INTO tbl_Station VALUES (N'Cầu Hàm Luông')
GO
-- =============== Time BusLine
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('00:00', '02:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('02:00', '04:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('04:00', '06:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('06:00', '08:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('08:00', '10:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('10:00', '12:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('12:00', '14:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('14:00', '16:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('16:00', '18:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('18:00', '20:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('20:00', '22:00')
INSERT INTO tbl_TimeBusLine(STARTTIME, FINISHTIME) Values ('22:00', '00:00')

-- =============== BusLine
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Trà Vinh', N'Hồ Chí Minh')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Trà Vinh', N'Quận 5')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Trà Vinh', N'Bình Tân')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Trà Vinh', N'Bến Tre')

INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Tiểu Cần', N'Hồ Chí Minh')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Tiểu Cần', N'Quận 5')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Tiểu Cần', N'Bình Tân')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Tiểu Cần', N'Bến Tre')

INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Cầu Kè', N'Hồ Chí Minh')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Cầu Kè', N'Quận 5')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Cầu Kè', N'Bình Tân')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Cầu Kè', N'Bến Tre')

INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Bến Tre', N'Hồ Chí Minh')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Bến Tre', N'Quận 5')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Bến Tre', N'Bình Tân')


INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Hồ Chí Minh', N'Trà Vinh')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Hồ Chí Minh', N'Tiểu Cần')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Hồ Chí Minh', N'Cầu Kè')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Hồ Chí Minh', N'Bến Tre')

INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Quận 5', N'Trà Vinh')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Quận 5', N'Tiểu Cần')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Quận 5', N'Cầu Kè')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Quận 5', N'Bến Tre')

INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Bình Tân', N'Trà Vinh')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Bình Tân', N'Tiểu Cần')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Bình Tân', N'Cầu Kè')
INSERT INTO tbl_BusLine(DEPARTURESTATION, DESTINATIONSTATION) Values (N'Bình Tân', N'Bến Tre')

-- =============== PickUp DropOff
-- Trà Vinh - HCM
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (1, 19)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (1, 10)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (1, 20)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (1, 11)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (1, 21)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (1, 22)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (1, 9)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 23)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 24)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 25)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 26)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 27)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 28)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 29)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 30)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 31)
INSERT INTO tbl_DropOff(IDBusLine, IDStation, SURCHARGEDROPOFF) Values (1, 32, 10000)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 5)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (1, 2)
INSERT INTO tbl_DropOff(IDBusLine, IDStation, SURCHARGEDROPOFF) Values (1, 4, 20000)

-- Trà Vinh - Quận 5
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (2, 19)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (2, 10)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (2, 20)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (2, 11)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (2, 21)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (2, 22)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (2, 9)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 23)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 24)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 25)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 26)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 27)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 28)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 29)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 30)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 31)
INSERT INTO tbl_DropOff(IDBusLine, IDStation, SURCHARGEDROPOFF) Values (2, 32, 10000)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 5)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (2, 2)
INSERT INTO tbl_DropOff(IDBusLine, IDStation, SURCHARGEDROPOFF) Values (2, 4, 20000)
-- Trà Vinh - Bình Tân
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (3, 19)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (3, 10)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (3, 20)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (3, 11)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (3, 21)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (3, 22)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (3, 9)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 23)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 24)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 25)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 26)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 27)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 28)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 29)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 30)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 31)
INSERT INTO tbl_DropOff(IDBusLine, IDStation, SURCHARGEDROPOFF) Values (3, 32, 10000)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 5)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (3, 2)
INSERT INTO tbl_DropOff(IDBusLine, IDStation, SURCHARGEDROPOFF) Values (3, 4, 20000)

-- HCM - Trà Vinh
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (16, 1, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (16, 2, 20000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (16, 3, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (16, 4, 20000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (16, 5, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (16, 6, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (16, 7, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (16, 8, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (16, 32, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (16, 29)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (16, 28)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (16, 26)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (16, 27)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (16, 25)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (16, 24)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (16, 9)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (16, 10)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (16, 11)
INSERT INTO tbl_DropOff(IDBusLine, IDStation, SURCHARGEDROPOFF) Values (16, 12, 10000)
INSERT INTO tbl_DropOff(IDBusLine, IDStation, SURCHARGEDROPOFF) Values (16, 13, 10000)
INSERT INTO tbl_DropOff(IDBusLine, IDStation, SURCHARGEDROPOFF) Values (16, 14, 10000)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (16, 15)

-- HCM - Tiểu Cần
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (17, 1, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (17, 2, 20000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (17, 3, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (17, 4, 20000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (17, 5, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (17, 6, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (17, 7, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (17, 8, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (17, 32, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (17, 29)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (17, 28)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (17, 26)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (17, 27)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (17, 25)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (17, 24)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (17, 17)

-- HCM - Cầu Kè
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (18, 1, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (18, 2, 20000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (18, 3, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (18, 4, 20000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (18, 5, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (18, 6, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (18, 7, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (18, 8, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (18, 32, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (18, 29)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (18, 28)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (18, 26)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (18, 27)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (18, 25)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (18, 24)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (18, 14)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (18, 18)

-- HCM - Bến Tre
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (19, 1, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (19, 2, 20000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (19, 3, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (19, 4, 20000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (19, 5, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (19, 6, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (19, 7, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (19, 8, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation, SURCHARGEPICKUP) Values (19, 32, 10000)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (19, 29)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (19, 28)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (19, 26)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (19, 27)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (19, 25)
INSERT INTO tbl_PickUp(IDBusLine, IDStation) Values (19, 24)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (19, 33)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (19, 34)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (19, 35)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (19, 36)
INSERT INTO tbl_DropOff(IDBusLine, IDStation) Values (19, 37)




-- =============== Unit
INSERT INTO tbl_Unit (NAMEUNIT, MAXAMOUNT, PRICEUNIT)
VALUES (N'Cái',40,1000),
	   (N'Thùng',10,10000),
	   (N'Chiếc',2,200000),
	   (N'Kilogram',100,1000)
GO

-- =============== Client
SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Ngô Vương Quốc Trung','03/05/1989',N'Nam','251245168','0398954482','quoctrung1989@gmail.com',28249)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Phạm Tiến Phúc','01/06/1986',N'Nam','251245369','0335803148','tienphuc1986@gmail.com',28252)
	   
SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Dư Thị Hoài Thương','11/07/1990',N'Nữ','564549899','0395465446','hoaithuong1990@gmail.com',28255)
	   
SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Hoàng Thị Thắm','14/11/2002',N'Nữ','254646513','0334678216','hoangthitham2002@gmail.com',28258)
	   
SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Thị Ngọc Ánh','30/04/2002',N'Nữ','24631579','0334687216','ngocanh2002@gmail.com',28261)
	   
SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Trung Hiếu','09/08/1999',N'Nam','234689713','0303156788','nguyentrunghieu1999@gmail.com',28264)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Đăng Phước Thịnh','13/07/1993',N'Nam','253468139','0303269716','dangphuocthinh1993@gmail.com',28267)
	   
SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Hoàng Ngọc Khánh Vy','05/01/2004',N'Nữ','234689133','0331247038','khanhvy04@gmail.com',28270)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Võ Thị Thảo','14/11/2003',N'Nữ','234687163','0364210356','vothithao03@gmail.com',28273)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Bùi Minh Nghĩa','09/01/2005',N'Nam','253461273','0316405678','minhnghia05@gmail.com',28276)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Bảo Trọng','03/05/2001',N'Nam','234687129','0334678921','baotrong2001@gmail.com',28279)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Bùi Minh Đức','02/01/1997',N'Nam','253162045','0303421783','buiminhduc97@gmail.com',28282)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Lê Tuấn Anh','02/07/1989',N'Nam','253102468','0334106973','tuananh89@gmail.com',28285)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Thành Tín','02/04/1977',N'Nam','253461207','0330124689','thanhtin69@gmail.com',28288)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Thị Thảo','08/03/1978',N'Nữ','253021345','0303789456','thaonguyen78@gmail.com',28291)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Quốc Thái','09/05/1989',N'Nam','253124068','0334012568','quocthai89@gmail.com',28294)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Đình Phi Long','07/06/1978',N'Nam','253012479','0302146893','longdinhphi78@gmail.com',28297)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Lương Thị Thanh Tâm','01/07/1991',N'Nữ','253641204','0330167892','thanhtam91@gmail.com',28300)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Thị Bích Trâm','06/03/1979',N'Nữ','253164792','0325769164','tramnguyen77@gmail.com',28303)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Tạ Văn Phi','09/07/1979',N'Nam','253120467','0312796312','phita1979@gmail.com',28306)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Thị Trang','03/03/2002',N'Nữ','253102466','0331024598','trangnguyen2002@gmail.com',28309)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Ngô Văn Sang','09/01/1999',N'Nam','253102453','0398632145','vansang99@gmail.com',28312)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Trương Thế Toàn','03/04/1992',N'Nam','223912376','0397631486','thetoan92@gmail.com',28315)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Nguyễn Thị Hồng Hạnh','03/07/1986',N'Nữ','257312046','0337123891','hanhnguyen1986@gmail.com',28318)

SET DATEFORMAT DMY 
INSERT INTO tbl_Client(NAMECLIENT, DATEOFBIRTHCLIENT, GENDERCLIDENT, IDENTITYCARDCLIENT, PHONECLIENT, EMAILCLIENT, IDWARD)
VALUES(N'Trần Thị Thương','07/03/2004',N'Nữ','231046231','0330179277','thuongnguyen2004@gmail.com',28321)

GO

-- =============== Coach
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('84B-312.38',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('84B-320.34',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('41B-315.26',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('59B-485.15',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('84B-311.47',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('51B-365.15',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('50B-157.36',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('56B-245.14',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('59B-378.33',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('84B-235.11',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('57B-366.66',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('84B-235.15',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('57B-315.45',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('51B-435.45',45)
INSERT INTO tbl_Coach(LICENSEPLATE, AMOUNTSEAT) VALUES('52B-337.41',45)

-- =============== Driver
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Nguyễn Thanh Hà','18/05/1995','Nam','064789436891','0327591586','nguyenthanhha123@gmail.com','E',4)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Trần Hoàng An','15/05/1990','Nam','068789436893','0329591586','tranhoangan123@gmail.com','E',6)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Nguyễn Ngọc Hòa','17/08/1993','Nam','068789436891','0329588586','tranngochoa123@gmail.com','E',6)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Hoàng Thanh Quang','25/05/1995','Nam','068786936891','0329599686','hoangthanhquang123@gmail.com','E',1)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Trần Nguyễn Thanh Hòa','30/05/1993','Nam','068589436891','0329791586','trannguyenthanhhoa123@gmail.com','E',6)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Hoàng Quang Hoan','24/03/1992','Nam','068713436891','0320291386','hoangquanghoan123@gmail.com','E',31)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Nguyễn Trần Thanh An','15/12/1991','Nam','068785436891','0329001586','trannguyenthanhan123@gmail.com','E',22)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Võ Thanh Ngọc','12/10/1994','Nam','068781236891','0329111586','vothanhngoc123@gmail.com','E',8)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Lê An','29/08/1996','Nam','068702436891','0329519586','lean123@gmail.com','E',4)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Trịnh Văn Hoàng','21/10/1989','Nam','068708436891','0329201586','trinhvanhoang123@gmail.com','E',31)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Phạm Thanh Khoa','19/07/1995','Nam','068736943691','0378591586','phamthanhkhoa123@gmail.com','E',6)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Võ Nguyễn Ngọc Hoan','11/06/1990','Nam','068787736891','0321291586','vonguyenngochoan123@gmail.com','E',1)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Lê Văn Danh','10/08/1995','Nam','068784436899','0329578586','levandanh123@gmail.com','E',4)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Nguyễn Văn Khải','24/10/1995','Nam','068789400891','0325591586','nguyenvankhai123@gmail.com','E',34)
SET DATEFORMAT DMY INSERT INTO tbl_Driver(NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER, PHONEDRIVER, EMAILDRIVER, DEGREE, IDWARD) VALUES(N'Trần Lê Hà','20/11/1993','Nam','068789422891','0329533586','tranleha123@gmail.com','E',10)

-- =============== Trip
SET DATEFORMAT DMY INSERT INTO TBL_PRICE(EFFECTIVEDATE, PRICE) values('01/12/2022', 140000)

-- =============== Trip
exec sp_InsertTripDefault
go	
-- =============== Ticket







-- ================================================================== QUERY ==================================================================
--select a.IDACCOUNT, a.IDEMPLOYEE, a.USERNAME, p.NAMEGROUP from TBL_ACCOUNT a, TBL_EMPLOYEE e, TBL_PERMISSIONGROUP p where a.IDEMPLOYEE = e.IDEMPLOYEE and e.IDPERMISSIONGROUP = p.IDPERMISSIONGROUP
--select * from TBL_PERMISSIONGROUP

--select e.IDACCOUNT, e.IDEMPLOYEE, e.NAMEEMPLOYEE, e.DATEOFBIRTHEMPLOYEE, e.GENDEREMPLOYEE, e.IDENTITYCARDEMPLOYEE, e.PHONEEMPLOYEE, e.EMAILEMPLOYEE, t.NAMETYPE, w.NAMEWARD, d.NAMEDISTRICT, c.NAMECITY
--from TBL_EMPLOYEE e, TBL_CITY c, TBL_DISTRICT d, TBL_WARD w, TBL_TYPEOFEMPLOYEE t
--where e.IDTYPE = t.IDTYPE and e.IDWARD = w.IDWARD and w.IDDISTRICT = d.IDDISTRICT and d.IDCITY = c.IDCITY

--select * from TBL_TYPEOFEMPLOYEE

--select d.IDDRIVER, d.NAMEDRIVER, d.DATEOFBIRTHDRIVER, d.GENDERDRIVER, d.IDENTITYCARDDRIVER, d.PHONEDRIVER, d.EMAILDRIVER, w.NAMEWARD, TBL_DISTRICT.NAMEDISTRICT, c.NAMECITY
--from TBL_DRIVER d, TBL_CITY c, TBL_DISTRICT, TBL_WARD w
--where d.IDWARD = w.IDWARD and w.IDDISTRICT = TBL_DISTRICT.IDDISTRICT and TBL_DISTRICT.IDCITY = c.IDCITY


--select * from TBL_BUSLINE

--select s.NAMESTATION from TBL_BUSLINE b, TBL_PICKUP p, TBL_STATION s where b.IDBUSLINE = p.IDBUSLINE and p.IDSTATION = s.IDSTATION
--select s.NAMESTATION from TBL_DROPOFF d, TBL_STATION s where 1 = d.IDBUSLINE and d.IDSTATION = s.IDSTATION

--select * from TBL_TIMEBUSLINE

select * from TBL_TRIP


--select * from view_trip
--select IDEMPLOYEE, NAMEEMPLOYEE from TBL_EMPLOYEE e, TBL_TYPEOFEMPLOYEE te where e.IDTYPE = te.IDTYPE and te.NAMETYPE like N'%Lơ Xe%'
--select IDDRIVER, NAMEDRIVER from TBL_DRIVER
--select IDBUSLINE, DEPARTURESTATION + ' - ' + DESTINATIONSTATION as 'BusLine' from TBL_BUSLINE
--select IDCOACH, LICENSEPLATE from TBL_COACH
--select IDTIME, cast(STARTTIME as nvarchar(max)) + ' - ' + cast(FINISHTIME as nvarchar(max)) as 'Time' from TBL_TIMEBUSLINE

select idward from TBL_WARD where NAMEWARD like '%Trà Vinh%'

select IDDISTRICT from tbl_Ward where IDWard = 20962