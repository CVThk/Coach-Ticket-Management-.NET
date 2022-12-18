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
   INVOICEDATE			date				 null,
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

/*==============================================================*/
/* Table: TBL_GrantPermission_Group                             */
/*==============================================================*/

CREATE TABLE tbl_GrantPermission_Group(
	IDPermission int not null,
	IDPermissionGroup int not null
)
GO


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

AlTER TABLE TBL_EMPLOYEE
ADD CONSTRAINT UNI_IDENTITYCARDEMPLOYEE UNIQUE (IDENTITYCARDEMPLOYEE)
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

ALTER TABLE tbl_GrantPermission_Group
Add constraint PK_GrantPermission_Group primary key(IDPermission, IDPermissionGroup),
	constraint FK_GrantPermission_Group_Permission foreign key(IDPermission) references tbl_Permission(IDPermission),
	constraint FK_GrantPermission_Group_PermissionGroup foreign key(IDPermissionGroup) references tbl_PermissionGroup(IDPermissionGroup)
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
ALTER TABLE TBL_ACCOUNT
ADD CONSTRAINT DF_Account_Password DEFAULT 'employee123' FOR PASSWORD
GO

/*==========================================================================================================================*/
/*                                                             TRIGGER                                                      */
/*==========================================================================================================================*/

CREATE TRIGGER tr_InsertBillDetails ON tbl_BillDetails
AFTER INSERT
AS
BEGIN
	declare @idBill int
	set @idBill = (select IDBILL from inserted i)
	update TBL_BILL
	set TOTALMONEY = TOTALMONEY + (select p.PRICE from inserted i, TBL_TICKET t, TBL_PRICE p where i.IDTICKET = t.IDTICKET and t.IDPRICE = p.IDPRICE)
	where IDBILL = @idBill
END
GO
CREATE TRIGGER tr_DeleteBillDetails ON tbl_BillDetails
AFTER DELETE
AS
BEGIN
	declare @idBill int
	set @idBill = (select IDBILL from deleted d)
	update TBL_BILL
	set TOTALMONEY = TOTALMONEY - (select p.PRICE from deleted d, TBL_TICKET t, TBL_PRICE p where d.IDTICKET = t.IDTICKET and t.IDPRICE = p.IDPRICE)
	where IDBILL = @idBill
END
GO

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
GO
CREATE TRIGGER tr_UpdateAmountSeatEmptyTrip ON tbl_Booked
AFTER INSERT
AS
BEGIN
	declare @idTrip int
	set @idTrip = (select i.IDTRIP from inserted i)
	update TBL_TRIP
	set AMOUNTEMPTYSEAT = AMOUNTEMPTYSEAT - 1
	where IDTRIP = @idTrip
END
CREATE TRIGGER tr_UpdateAmountSeatEmptyTrip_Delete ON tbl_Booked
AFTER DELETE
AS
BEGIN
	declare @idTrip int
	set @idTrip = (select d.IDTRIP from deleted d)
	update TBL_TRIP
	set AMOUNTEMPTYSEAT = AMOUNTEMPTYSEAT + 1
	where IDTRIP = @idTrip
END


/*==========================================================================================================================*/
/*                                                              VIEW                                                        */
/*==========================================================================================================================*/
CREATE VIEW view_trip
AS
	select t.IDTRIP, cast(ti.STARTTIME as nvarchar(max)) + ' - ' + cast(ti.FINISHTIME as nvarchar(max)) as 'Time', b.DEPARTURESTATION + ' - ' + b.DESTINATIONSTATION as 'BusLine', e.NAMEEMPLOYEE, c.LICENSEPLATE, d.NAMEDRIVER, t.DEPARTUREDAY, t.AMOUNTEMPTYSEAT
	from TBL_TRIP t, TBL_TIMEBUSLINE ti, TBL_BUSLINE b, TBL_EMPLOYEE e, TBL_COACH c, TBL_DRIVER d
	where ti.IDTIME = t.IDTIME and b.IDBUSLINE = t.IDBUSLINE and e.IDEMPLOYEE = t.IDEMPLOYEE and c.IDCOACH = t.IDCOACH and d.IDDRIVER = t.IDDRIVER
GO
CREATE VIEW view_Bill
AS
	select bd.IDBILL, tic.IDTICKET, t.IDBUSLINE, b.DEPARTURESTATION, b.DESTINATIONSTATION, s.SEATPOSITION, c.LICENSEPLATE, ti.STARTTIME, ti.FINISHTIME, convert(varchar(max), t.DEPARTUREDAY, 103) AS 'DEPARTUREDAY', p.PRICE, convert(varchar(max), tic.TICKETPURCHASEDATE, 103) AS 'TICKETPURCHASEDATE', e.NAMEEMPLOYEE 
    from TBL_BILL, TBL_BILLDETAILS bd, TBL_TICKET tic, TBL_TRIP t, TBL_BUSLINE b, TBL_SEAT s, TBL_TIMEBUSLINE ti, TBL_PRICE p, TBL_EMPLOYEE e, TBL_COACH c
    where TBL_BILL.IDBILL = bd.IDBILL and bd.IDTICKET = tic.IDTICKET and tic.IDTRIP = t.IDTRIP and t.IDCOACH = c.IDCOACH and t.IDBUSLINE = b.IDBUSLINE and t.IDTIME = ti.IDTIME and TBL_BILL.IDEMPLOYEE = e.IDEMPLOYEE and tic.IDSEAT = s.IDSEAT
GO
alter VIEW view_BaoCao
AS
	select d.IDDRIVER, convert(datetime,t.DEPARTUREDAY, 103) as 'DEPARTUREDAY', d.NAMEDRIVER, d.PHONEDRIVER, b.DEPARTURESTATION, b.DESTINATIONSTATION, ve.SoVe, ve.TOTALMONEY, c.LICENSEPLATE
	from TBL_DRIVER d, TBL_TRIP t, TBL_COACH c, TBL_BUSLINE b,
		(select tic.IDTRIP, count(*) as 'SoVe', b.TOTALMONEY from TBL_TICKET tic, TBL_TRIP t, TBL_BILL b, TBL_BILLDETAILS bd where tic.IDTRIP = t.IDTRIP and tic.IDTICKET = bd.IDTICKET and bd.IDBILL = b.IDBILL group by b.TOTALMONEY, tic.IDTRIP) as ve
	where t.IDDRIVER = d.IDDRIVER and t.IDCOACH = c.IDCOACH and t.IDBUSLINE = b.IDBUSLINE and t.IDTRIP = ve.IDTRIP
GO

--select convert(varchar(max), getdate(), 103) as 'Date'
--select * from view_Bill
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

CREATE PROC sp_InsertTrip @idTime int, @idBusLine int, @idEmployee int, @idCoach int, @idDriver int, @strResult nvarchar(max) output
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
		
	if exists (select * from TBL_TRIP where IDTIME = @idTime and IDBUSLINE = @idBusLine and DEPARTUREDAY = cast(GETDATE() as date))
	begin
		set @strResult = N'Chuyến đi đã tồn tại !!!'
		return
	end
		 
	if exists (select * from TBL_TRIP where DEPARTUREDAY = cast(GETDATE() as date) and IDEMPLOYEE = @idEmployee and IDTIME = @idTime)
	begin
		set @strResult = N'Nhân viên này đã được phân công !!!'
		return
	end
		
	if exists (select * from TBL_TRIP where DEPARTUREDAY = cast(GETDATE() as date) and IDDRIVER = @idDriver and IDTIME = @idTime)
	begin
		set @strResult = N'Tài xế này đã được phân công !!!'
		return
	end
		
	if exists (select * from TBL_TRIP where DEPARTUREDAY = cast(GETDATE() as date) and IDCOACH = @idCoach and IDTIME = @idTime)
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
	if @result <> N'Thành công.'
	begin
		select @result as N'Kết Quả Thực Thi'
		return
	end
	

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


CREATE PROC sp_InsertAndGetIdBill @idEmployee int, @idClient int, @idBill int output, @strResult nvarchar(max) output
AS
	set @idBill = 0
	if not exists (select * from TBL_EMPLOYEE e, TBL_PERMISSIONGROUP p where IDEMPLOYEE = @idEmployee and
		e.IDPERMISSIONGROUP = p.IDPERMISSIONGROUP and (p.NAMEGROUP like '%Admin%' or p.NAMEGROUP like '%Bán vé%'))
	begin
		set @strResult = N'Nhân viên này không thể bán vé !!!'
		return
	end
	if not exists (select * from  TBL_CLIENT where IDCLIENT = @idClient)
	begin
		set @strResult = N'Thông tin khách hàng không hợp lệ !!!'
		return
	end
	insert into TBL_BILL(IDEMPLOYEE, IDCLIENT, INVOICEDATE) values (@idEmployee, @idClient, GETDATE())
	set @strResult = N'Thành công'
	set @idBill = (select IDBILL from TBL_BILL where IDBILL = (select max(IDBILL) from TBL_BILL where IDEMPLOYEE = @idEmployee and IDCLIENT = @idClient))
GO

--declare @idBill int, @strResult nvarchar(max)
--exec sp_InsertAndGetIdBill @idEmployee=4, @idClient=1, @idBill=@idBill output, @strResult=@strResult output
--select @idBill as 'IDBILL', @strResult as 'RESULT'

CREATE PROC sp_InsertTicKet @idSeat int, @idTrip int, @idPicUpPoint int, @idDropOffPoint int, @idTicket int output, @strResult nvarchar(max) output
AS
	set @idTicket = 0
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
	if exists (select * from TBL_TRIP where (IDTRIP = @idTrip and DATEDIFF(D, @dateOrder, DEPARTUREDAY) < 0)
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
	insert into TBL_BOOKED(IDTRIP, IDSEAT) values(@idTrip, @idSeat)
	set @strResult = N'Thành công.'
	set @idTicket = (select IDTICKET from TBL_TICKET where IDTRIP = @idTrip and IDSEAT = @idSeat)
GO

--declare @idTicket int, @strResult nvarchar(max)
--exec sp_InsertTicKet @idSeat=25, @idTrip=56, @idPicUpPoint=11, @idDropOffPoint=31, @idTicket=@idTicket output, @strResult=@strResult output
--select @idTicket as 'IDTICKET', @strResult as 'RESULT'

select * from TBL_TRIP where (IDTRIP = 56 and DATEDIFF(D, GETDATE(), DEPARTUREDAY) < 0)

CREATE PROC sp_DeteleBill @idBill int
AS
	if not exists (select * from TBL_BILL where IDBILL = @idBill)
		return
	if not exists (select * from TBL_BILLDETAILS where IDBILL = @idBill)
	begin
		delete TBL_BILL
		where IDBILL = @idBill
	end
GO

--exec sp_DeteleBill @idBill=''

CREATE PROC sp_DeteleTicket @idTicket int
AS
	if not exists (select * from TBL_TICKET where IDTICKET = @idTicket)
		return
	if not exists (select * from TBL_BILLDETAILS where IDTICKET = @idTicket)
	begin
		delete TBL_TICKET
		where IDTICKET = @idTicket
	end
GO
--exec sp_DeteleTicket @idTicket=''

CREATE PROC sp_InsertBillDetails @idBill int, @idTicket int, @strResult nvarchar(max) output
AS
	if not exists (select * from TBL_BILL where IDBILL = @idBill)
	begin
		set @strResult = N'Hóa đơn không tồn tại !!!'
		return
	end
	if not exists (select * from TBL_TICKET where IDTICKET = @idTicket)
	begin
		set @strResult = N'Vé không tồn tại !!!'
		return
	end
	insert into TBL_BILLDETAILS(IDBILL, IDTICKET) values(@idBill, @idTicket)
	set @strResult = N'Thành công.'
GO

--declare @strResult nvarchar(max)
--exec sp_InsertBillDetails @idBill=1, @idTicket=1, @strResult=@strResult output
--select @strResult as 'RESULT'

--declare @strResult nvarchar(max)
--exec sp_InsertTicKet @idSeat=1, @idTrip=3, @idPicUpPoint=1, @idDropOffPoint=2, @strResult=@strResult output
--select @strResult

CREATE PROC sp_GetIDClient @phone varchar(max)
AS
	declare @id int
	if not exists (select * from TBL_CLIENT where PHONECLIENT = @phone)
		return 0
	select @id = IDCLIENT from TBL_CLIENT where PHONECLIENT = @phone
	return @id
GO

CREATE PROC sp_DeleteAccount @idAccount int
AS
	if exists (select * from TBL_EMPLOYEE where IDACCOUNT = @idAccount)
	begin
		update TBL_EMPLOYEE
		set IDACCOUNT = null
		where IDEMPLOYEE = (select IDEMPLOYEE from TBL_EMPLOYEE where IDACCOUNT = @idAccount)
		delete TBL_ACCOUNT where IDACCOUNT = @idAccount
	end
GO
--exec sp_DeleteAccount @idAccount=''

CREATE PROC sp_InsertAccount @idEmployee int, @userName varchar(max), @typeAccount nvarchar(max), @strResult nvarchar(max) output
AS
	set @strResult = N'Thất bại !!!'
	if exists (select * from TBL_EMPLOYEE where IDEMPLOYEE = @idEmployee)
	begin
		if not exists (select * from TBL_ACCOUNT where USERNAME = @userName)
		begin
			if exists (select * from TBL_PERMISSIONGROUP pg where pg.NAMEGROUP = @typeAccount)
			begin
				declare @idPG int
				set @idPG = (select IDPERMISSIONGROUP from TBL_PERMISSIONGROUP pg where pg.NAMEGROUP = @typeAccount)
				insert into TBL_ACCOUNT (IDEMPLOYEE, USERNAME) values (@idEmployee, @userName)
				declare @idAccount int
				set @idAccount = (select IDACCOUNT from TBL_ACCOUNT where USERNAME = @userName)
				update TBL_EMPLOYEE set IDACCOUNT = @idAccount, IDPERMISSIONGROUP = @idPG where IDEMPLOYEE = @idEmployee
				set @strResult = N'Thành công.'
			end
		end
	end
GO
--declare @strResult nvarchar(max)
--exec sp_InsertAccount @idEmployee=1,@userName='',@typeAccount='',@strResult=@strResult output
--select @strResult
CREATE PROC sp_UpdateAccount @idEmployee int, @idAccount int, @userName varchar(max), @typeAccount nvarchar(max), @strResult nvarchar(max) output
AS
	set @strResult = N'Thất bại !!!'
	if exists (select * from TBL_EMPLOYEE where IDEMPLOYEE = @idEmployee)
	begin
		if exists (select * from TBL_ACCOUNT where IDACCOUNT = @idAccount)
		begin
			if exists (select * from TBL_PERMISSIONGROUP pg where pg.NAMEGROUP = @typeAccount)
			begin
				declare @idPG int
				set @idPG = (select IDPERMISSIONGROUP from TBL_PERMISSIONGROUP pg where pg.NAMEGROUP = @typeAccount)
				update TBL_ACCOUNT set USERNAME = @userName where IDACCOUNT = @idAccount
				update TBL_EMPLOYEE set IDPERMISSIONGROUP = @idPG where IDEMPLOYEE = @idEmployee
				set @strResult = N'Thành công.'
			end
		end
	end
GO
--declare @strResult nvarchar(max)
--exec sp_UpdateAccount @idEmployee=1, @idAccount=1, @userName='',@typeAccount='',@strResult=@strResult output
--select @strResult
CREATE PROC sp_GetIDBill @idTicket int
AS
BEGIN
	declare @id int = 0
	if exists (select * from TBL_BILLDETAILS where IDTICKET = @idTicket)
		set @id = (select b.IDBILL from TBL_BILL b, TBL_BILLDETAILS bd where b.IDBILL = bd.IDBILL and bd.IDTICKET = @idTicket)
	return @id
END
GO
--declare @idBill int
--exec @idBill = sp_GetIDBill @idTicket = 1
--select @idBill
alter PROC sp_DeleteTicket @idTicket int, @result nvarchar(max) output
AS
BEGIN
	set @result = N'Không thể hủy vé !!!'
	if exists (select * from TBL_TICKET where IDTICKET = @idTicket)
	begin
		declare @date datetime = GETDATE()
		if exists(select * from TBL_TRIP t, TBL_TICKET tic, TBL_TIMEBUSLINE ti where tic.IDTICKET = @idTicket and tic.IDTRIP = t.IDTRIP and t.IDTIME = ti.IDTIME and (DATEDIFF(D, @date, DEPARTUREDAY) < 0)
			or (DATEDIFF(D, convert(date, @date, 103), convert(date, DEPARTUREDAY, 103)) = 0  and convert(time(0), @date) >= ti.STARTTIME))
		begin
			return
		end
		declare @idBill int
		if exists (select * from TBL_BILLDETAILS where IDTICKET = @idTicket)
		begin
			select @idBill = IDBILL from TBL_BILLDETAILS where IDTICKET = @idTicket
			delete TBL_BILLDETAILS where IDTICKET = @idTicket
			exec sp_DeteleBill @idBill
			delete TBL_BOOKED where IDTRIP = (select tic.IDTRIP from TBL_TICKET tic where tic.IDTICKET = @idTicket) and IDSEAT = (select tic.IDSEAT from TBL_TICKET tic where tic.IDTICKET = @idTicket)
			delete TBL_TICKET where IDTICKET = @idTicket
			set @result = N'Thành công.'
			return
		end
	end
END
GO
--declare @result nvarchar(max)
--exec sp_DeleteTicket @idTicket=1, @result=@result output
--select @result

------------------------------------------------------------------------------- HOÀNG THỊ MỸ HẠNH
------------------DRIVER-----------------------
-----------------------update driver----------------------
CREATE PROC sp_UpdateDriver @IDDRIVER int,
							@IDWARD int,
							@NAMEDRIVER nvarchar(MAX),
							@DATEOFBIRTHDRIVER varchar(max),
							@GENDERDRIVER nvarchar(MAX), 
							@IDENTITYCARDDRIVER varchar(12),
							@PHONEDRIVER varchar(10),
							@EMAILDRIVER varchar(200)			
AS 
	BEGIN 
		
		UPDATE TBL_DRIVER
			SET NAMEDRIVER = @NAMEDRIVER , IDWARD = @IDWARD, DATEOFBIRTHDRIVER  = convert(date, @DATEOFBIRTHDRIVER),
			GENDERDRIVER = @GENDERDRIVER, IDENTITYCARDDRIVER = @IDENTITYCARDDRIVER, PHONEDRIVER  =@PHONEDRIVER,
			EMAILDRIVER = @EMAILDRIVER, DEGREE = 'E' 
		WHERE IDDRIVER = @IDDRIVER 
		
	END
GO
-------------------delete driver-----------------------------------------
CREATE PROC sp_deleteDriver @idDriver int
AS
	if not exists (select * from TBL_TRIP where IDDRIVER = @idDriver)
	begin
		--update TBL_TRIP
		--set	IDDRIVER = null
		--where IDDRIVER = @idDriver
		delete TBL_DRIVER where IDDRIVER = @idDriver
	end
GO
--------------------------insert driver-------------------------------
CREATE PROC sp_InsertDriver @IDWARD int, 
							@NAME nvarchar(max),
						    @DATEOFBIRTH date, 
							@GENDER nvarchar(4), 
							@IDENTITYCARD varchar(12),
							@PHONE varchar(10),
							@EMAIL varchar(200)	
AS 
	BEGIN 
		INSERT INTO TBL_DRIVER(IDWARD, NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER,PHONEDRIVER, EMAILDRIVER)
		VALUES (@IDWARD, @NAME, @DATEOFBIRTH, @GENDER, @IDENTITYCARD, @PHONE, @EMAIL)
	END
--------------------------------------------------------------------------------------------------		

------------------------------------------------------------------------------- MAI TRUNG TIẾN

CREATE PROC sp_UpdateEMPLOYEE @IDEMPLOYEE int,
							@IDWARD int,
							@IDTYPE int,
							@IDPERMISSIONGROUP int,
							@NAMEEMPLOYEE nvarchar(max),
							@DATEOFBIRTHEMPLOYEE date, 
							@GENDEREMPLOYEE nvarchar(4),
							@IDENTITYCARDEMPLOYEE varchar(12),
							@PHONEEMPLOYEE varchar(10),
							@EMAILEMPLOYEE varchar(200)					
AS 
	BEGIN 
		UPDATE TBL_EMPLOYEE 
			SET NAMEEMPLOYEE = @NAMEEMPLOYEE , IDWARD = @IDWARD, DATEOFBIRTHEMPLOYEE = @DATEOFBIRTHEMPLOYEE ,
			GENDEREMPLOYEE = @GENDEREMPLOYEE, IDENTITYCARDEMPLOYEE = @IDENTITYCARDEMPLOYEE, PHONEEMPLOYEE =@PHONEEMPLOYEE,
			EMAILEMPLOYEE = @EMAILEMPLOYEE, IDTYPE = @IDTYPE 
		WHERE IDEMPLOYEE = @IDEMPLOYEE 
		
	END
go


CREATE PROC sp_DeleteEMPLOYEE @IDEMPLOYEE int							
AS 
	BEGIN 
		IF NOT EXISTS(SELECT * FROM TBL_ACCOUNT WHERE IDEMPLOYEE = @IDEMPLOYEE)
			BEGIN 
				IF EXISTS(SELECT * FROM TBL_EMPLOYEE WHERE IDEMPLOYEE = @IDEMPLOYEE)
				DELETE FROM TBL_EMPLOYEE WHERE @IDEMPLOYEE = IDEMPLOYEE
				RETURN
			END
		
		--
		IF  EXISTS (SELECT * FROM TBL_BILL WHERE @IDEMPLOYEE = IDEMPLOYEE )
		BEGIN  
			DELETE FROM TBL_EMPLOYEE WHERE  IDEMPLOYEE= @IDEMPLOYEE 
			RETURN
		END
		IF EXISTS (SELECT * FROM TBL_TRIP WHERE @IDEMPLOYEE = IDEMPLOYEE)
		BEGIN 
			DELETE FROM TBL_EMPLOYEE WHERE  IDEMPLOYEE= @IDEMPLOYEE 
			RETURN
		END
		IF EXISTS (SELECT * FROM TBL_SERVICE WHERE @IDEMPLOYEE = IDEMPLOYEE)
		BEGIN
			DELETE FROM TBL_EMPLOYEE WHERE  IDEMPLOYEE= @IDEMPLOYEE
			RETURN
		END
		--
		IF EXISTS(SELECT * FROM TBL_ACCOUNT WHERE IDEMPLOYEE = @IDEMPLOYEE)
		BEGIN 
			IF EXISTS(SELECT * FROM TBL_EMPLOYEE WHERE IDEMPLOYEE = @IDEMPLOYEE)
			BEGIN
				DECLARE @IDACCOUNT INT
				SET @IDACCOUNT = (SELECT IDACCOUNT FROM TBL_ACCOUNT  WHERE IDEMPLOYEE = @IDEMPLOYEE)
				UPDATE TBL_EMPLOYEE 
				SET IDACCOUNT = NULL
				WHERE IDEMPLOYEE = (SELECT IDEMPLOYEE FROM TBL_EMPLOYEE WHERE  IDACCOUNT = @IDACCOUNT )
				DELETE FROM  TBL_ACCOUNT WHERE IDEMPLOYEE = @IDEMPLOYEE
				DELETE FROM TBL_EMPLOYEE WHERE  IDEMPLOYEE= @IDEMPLOYEE   
			END
		END
		
	END


CREATE PROC sp_InsertEMPLOYEE @IDWARD int, @IDTYPE int, @IDPERMISSIONGROUP int,
							@NAMEEMPLOYEE nvarchar(max), @DATEOFBIRTHEMPLOYEE date, 
							@GENDEREMPLOYEE nvarchar(4), @IDENTITYCARDEMPLOYEE varchar(12),
							@PHONEEMPLOYEE varchar(10),@EMAILEMPLOYEE varchar(200)	

AS 
	BEGIN 
		INSERT INTO TBL_EMPLOYEE (IDWARD,IDTYPE,IDPERMISSIONGROUP,NAMEEMPLOYEE,DATEOFBIRTHEMPLOYEE,
									GENDEREMPLOYEE,IDENTITYCARDEMPLOYEE,PHONEEMPLOYEE,EMAILEMPLOYEE)
			VALUES (@IDWARD, @IDTYPE, @IDPERMISSIONGROUP, @NAMEEMPLOYEE, @DATEOFBIRTHEMPLOYEE, 
							@GENDEREMPLOYEE, @IDENTITYCARDEMPLOYEE,@PHONEEMPLOYEE, @EMAILEMPLOYEE)
	END
GO
--- End MAI TRUNG TIẾN



/*==========================================================================================================================*/
/*                                                          FUNCTION                                                        */
/*==========================================================================================================================*/
CREATE FUNCTION f_GetTripByIDBusLineDepartureday(@idBusline int, @departureday datetime)
RETURNS TABLE
AS
	return (select t.IDTRIP, cast(ti.STARTTIME as nvarchar(max)) + ' - ' + cast(ti.FINISHTIME as nvarchar(max)) as 'Time', e.NAMEEMPLOYEE, c.LICENSEPLATE, d.NAMEDRIVER, t.DEPARTUREDAY, t.AMOUNTEMPTYSEAT, (select top(1) PRICE from TBL_PRICE where EFFECTIVEDATE = (select Max(EFFECTIVEDATE) from TBL_PRICE)) as 'Price'
	from TBL_TRIP t, TBL_TIMEBUSLINE ti, TBL_BUSLINE b, TBL_EMPLOYEE e, TBL_COACH c, TBL_DRIVER d
	where b.IDBUSLINE = @idBusline and DATEDIFF(D, t.DEPARTUREDAY, @departureday) = 0 and ti.IDTIME = t.IDTIME and ti.STARTTIME > cast(GETDATE() as time(0)) and b.IDBUSLINE = t.IDBUSLINE and e.IDEMPLOYEE = t.IDEMPLOYEE and c.IDCOACH = t.IDCOACH and d.IDDRIVER = t.IDDRIVER)
GO

--select * from f_GetTripByIDBusLineDepartureday(3,Convert(datetime, '05/12/2022', 103))

CREATE FUNCTION f_GetSeatByIDTrip(@idTrip int)
RETURNS TABLE
AS
	return (select s.SEATPOSITION
			from TBL_BOOKED b, TBL_SEAT s
			where b.IDTRIP = @idTrip and b.IDSEAT = s.IDSEAT)
GO

CREATE FUNCTION f_GetBills()
RETURNS TABLE
AS
	return (select b.IDBILL, e.NAMEEMPLOYEE, c.NAMECLIENT, convert(date, c.DATEOFBIRTHCLIENT, 103) AS 'DATEOFBIRTHCLIENT', b.TOTALMONEY, convert(date, b.INVOICEDATE, 103) AS 'INVOICEDATE' from TBL_BILL b, TBL_EMPLOYEE e, TBL_CLIENT c where b.IDEMPLOYEE = e.IDEMPLOYEE and b.IDCLIENT = c.IDCLIENT)
GO

CREATE FUNCTION f_GetBillDetails(@idBill int)
RETURNS TABLE
AS
	return (select tic.IDTICKET, bus.DEPARTURESTATION + ' - ' + bus.DESTINATIONSTATION as 'BUSLINE', cast(ti.STARTTIME as nvarchar(max)) + ' - ' + cast(ti.FINISHTIME as nvarchar(max)) as 'Time',
				t.DEPARTUREDAY, c.LICENSEPLATE, s.SEATPOSITION, tic.PICKUPPOINT, tic.DROPOFFPOINT, p.PRICE
			from TBL_BILLDETAILS b, TBL_TICKET tic, TBL_SEAT s, TBL_TRIP t, TBL_PRICE p, TBL_BUSLINE bus, TBL_COACH c, TBL_TIMEBUSLINE ti
			where b.IDBILL = @idBill and tic.IDTICKET = b.IDTICKET and tic.IDSEAT = s.IDSEAT and tic.IDTRIP = t.IDTRIP and tic.IDPRICE = p.IDPRICE and
			t.IDBUSLINE = bus.IDBUSLINE and t.IDCOACH = c.IDCOACH and t.IDTIME = ti.IDTIME)
GO



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

--select * from TBL_TRIP


--select * from view_trip
--select IDEMPLOYEE, NAMEEMPLOYEE from TBL_EMPLOYEE e, TBL_TYPEOFEMPLOYEE te where e.IDTYPE = te.IDTYPE and te.NAMETYPE like N'%Lơ Xe%'
--select IDDRIVER, NAMEDRIVER from TBL_DRIVER
--select IDBUSLINE, DEPARTURESTATION + ' - ' + DESTINATIONSTATION as 'BusLine' from TBL_BUSLINE
--select IDCOACH, LICENSEPLATE from TBL_COACH
--select IDTIME, cast(STARTTIME as nvarchar(max)) + ' - ' + cast(FINISHTIME as nvarchar(max)) as 'Time' from TBL_TIMEBUSLINE

--select idward from TBL_WARD where NAMEWARD like '%Trà Vinh%'

--select IDDISTRICT from tbl_Ward where IDWard = 20962

-- =============================== lấy ra những tuyến xe còn thời hạn
--select IDBUSLINE, DEPARTURESTATION + ' - ' + DESTINATIONSTATION as 'BusLine'
--from TBL_BUSLINE b
--where IDBUSLINE IN (select t.IDBUSLINE
--					from TBL_TRIP t, TBL_TIMEBUSLINE ti
--					where t.IDTIME = ti.IDTIME and ((DEPARTUREDAY > cast(GETDATE() as date)) or (DEPARTUREDAY = cast(GETDATE() as date)
--					and cast(GETDATE() as time(0)) < ti.STARTTIME)))
