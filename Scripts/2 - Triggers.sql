/* ********************* */


create or replace trigger "SEC_HD_TICKETS_T1"
AFTER
insert or update on "SEC_HD_TICKETS"
for each row
declare get_user varchar2(20);
begin
SELECT v('APP_USER') INTO get_user from dual;

if inserting then
    INSERT into SEC_HD_WORKFLOWS(WORKFLOW_ID, WORKFLOW_TYPE, TYPE_ID, WORKFLOW_STATUS, WORKFLOW_STATUS_UPDATE, workflow_status_updated_by, created_by, created_on, updated_by, updated_on) 
    values(SEC_HD_WORKFLOWS_SEQ.NEXTVAL, 'TICKETS', :new.TICKET_ID, :new.TICKET_STATUS, SYSTIMESTAMP, get_user, get_user, sysdate, get_user, sysdate);

elsif (updating and :new.TICKET_STATUS != :old.TICKET_STATUS) then
    INSERT into SEC_HD_WORKFLOWS(WORKFLOW_ID, WORKFLOW_TYPE, TYPE_ID, WORKFLOW_STATUS, WORKFLOW_STATUS_UPDATE, workflow_status_updated_by, created_by, created_on, updated_by, updated_on) 
    values(SEC_HD_WORKFLOWS_SEQ.NEXTVAL, 'TICKETS', :new.TICKET_ID, :new.TICKET_STATUS, SYSTIMESTAMP, get_user, get_user, sysdate, get_user, sysdate);
end if;
end;
/


/* ********************* */


/* ********************* */


create or replace trigger "SEC_HD_TICKETS_T2"
AFTER
insert or update on "SEC_HD_TICKETS"
for each row
declare get_user varchar(20);
begin
select v('APP_USER') into get_user from dual;
    IF (:new.ticket_status = 'RETRIEVED') THEN
        update SEC_HD_WORKTOOL_ALLOCATIONS
        set ALLOCATION_STATUS = 'RETRIEVED', 
        allocation_status_date = SYSTIMESTAMP,
        updated_by = get_user,
        updated_on = sysdate
        where WORKTOOL_ID = :NEW.WORKTOOL_ID;
    ELSIF (:new.ticket_status = 'OUT FOR REPAIRS') THEN
        update SEC_HD_WORKTOOL_ALLOCATIONS
        set ALLOCATION_STATUS = 'OUT FOR REPAIRS',
        allocation_status_date = SYSTIMESTAMP,
        updated_by = get_user,
        updated_on = sysdate
        where WORKTOOL_ID = :NEW.WORKTOOL_ID;
    ELSIF (:new.ticket_status = 'BACK FROM REPAIRS') THEN
        update SEC_HD_WORKTOOL_ALLOCATIONS
        set ALLOCATION_STATUS = 'BACK FROM REPAIRS',
        allocation_status_date = SYSTIMESTAMP,
        updated_by = get_user,
        updated_on = sysdate
        where WORKTOOL_ID = :NEW.WORKTOOL_ID;
    ELSIF (:new.ticket_status = 'RESOLVED') THEN
        update SEC_HD_WORKTOOL_ALLOCATIONS
        set ALLOCATION_STATUS = 'WITH STAFF',
        allocation_status_date = SYSTIMESTAMP,
        updated_by = get_user,
        updated_on = sysdate
        where WORKTOOL_ID = :NEW.WORKTOOL_ID;
    ELSIF (:new.ticket_status = 'END OF LIFE') THEN
        update SEC_HD_WORKTOOL_ALLOCATIONS
        set ALLOCATION_STATUS = 'END OF LIFE',
        allocation_status_date = SYSTIMESTAMP,
        updated_by = get_user,
        updated_on = sysdate
        where WORKTOOL_ID = :NEW.WORKTOOL_ID;        
    END IF;
end;
/


/* ********************* */


/* ********************* */


create or replace trigger "SEC_HD_WORKTOOL_ALLOCATIONS_T1"
after
insert or update on "SEC_HD_WORKTOOL_ALLOCATIONS"
for each row 
when (new.ALLOCATION_STATUS != old.ALLOCATION_STATUS)
declare get_user varchar2(20);
begin
SELECT v('APP_USER') INTO get_user FROM dual;
INSERT into SEC_HD_WORKFLOWS(WORKFLOW_ID, WORKFLOW_TYPE, TYPE_ID, WORKFLOW_STATUS, WORKFLOW_STATUS_UPDATE, workflow_status_updated_by, created_by, created_on, updated_by, updated_on)
values(SEC_HD_WORKFLOWS_SEQ.NEXTVAL, 'WORKTOOLS', :new.WORKTOOL_ID, :new.allocation_status, SYSTIMESTAMP, get_user, get_user, sysdate, get_user, sysdate);
end;
/


/* ********************* */


/* ********************* */


create or replace trigger "SEC_HD_WORKTOOL_ALLOCATIONS_T2"
AFTER 
insert or update on "SEC_HD_WORKTOOL_ALLOCATIONS" 
for each row 
declare get_user varchar(20);
BEGIN
select v('APP_USER') into get_user from dual;
    if (:new.allocation_status = 'WITH STAFF') THEN
    UPDATE SEC_HD_WORKTOOL_INFORMATION
    SET WORKTOOL_STATUS = 'ALLOCATED',
    worktool_status_date = SYSTIMESTAMP,
    updated_by = get_user,
    updated_on = SYSDATE
    WHERE WORKTOOL_ID = :NEW.WORKTOOL_ID;    
    else
    UPDATE SEC_HD_WORKTOOL_INFORMATION
    SET WORKTOOL_STATUS = 'UNALLOCATED',
    worktool_status_date = SYSTIMESTAMP,
    updated_by = get_user,
    updated_on = SYSDATE
    WHERE WORKTOOL_ID = :NEW.WORKTOOL_ID;
END IF;
END;
/


/* ********************* */


/* ********************* */


create or replace trigger "bi_SEC_HD_DEPARTMENTS"  
  before
insert or update on "SEC_HD_DEPARTMENTS"
  for each row 
begin  
  if inserting then
    select "SEC_HD_DEPARTMENTS_SEQ".nextval into :new."DEPARTMENT_ID" from sys.dual;
    select v('APP_USER') into :new."CREATED_BY" from sys.dual;
    select sysdate into :new."CREATED_ON" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
elsif updating then
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
  end if;
end;
/


/* ********************* */


/* ********************* */


create or replace trigger "bi_SEC_HD_DIVISIONS"  
  before
insert or update on "SEC_HD_DIVISIONS"
  for each row 
begin  
  if inserting then
    select "SEC_HD_DIVISIONS_SEQ".nextval into :new."DIVISION_ID" from sys.dual;
    select v('APP_USER') into :new."CREATED_BY" from sys.dual;
    select sysdate into :new."CREATED_ON" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
elsif updating then
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
  end if;
end;
/

/* ********************* */


/* ********************* */


create or replace trigger "bi_SEC_HD_STAFF"   
  before insert or update on "SEC_HD_STAFF"               
  for each row  
begin  
  if inserting then
    select "SEC_HD_STAFF_SEQ".nextval into :new."STAFF_ID" from sys.dual;  
    select v('APP_USER') into :new."CREATED_BY" from sys.dual;
    select sysdate into :new."CREATED_ON" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
elsif updating then
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
  end if;
end;
/


/* ********************* */


/* ********************* */


create or replace trigger "bi_SEC_HD_STAFF_INFO"   
  before insert or update on "SEC_HD_STAFF_INFO"               
  for each row  
begin  
  if inserting then
    select "SEC_HD_STAFF_INFO_SEQ".nextval into :new."STAFF_ID" from sys.dual;  
    select v('APP_USER') into :new."CREATED_BY" from sys.dual;
    select sysdate into :new."CREATED_ON" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
elsif updating then
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
  end if;
end;
/


/* ********************* */


/* ********************* */


create or replace trigger "bi_SEC_HD_TICKETS"
  before
insert or update on "SEC_HD_TICKETS"
  for each row
begin
if inserting then
    select "SEC_HD_TICKETS_SEQ".nextval into :new."TICKET_ID" from sys.dual;
    select SYSTIMESTAMP into :new."TICKET_DATE" from sys.dual;
    select 'PENDING' into :new."TICKET_STATUS" from sys.dual;
    select SYSTIMESTAMP into :new."TICKET_STATUS_DATE" from sys.dual;
    select 'UNASSIGNED' into :new."TICKET_ASSIGNED_TO" from sys.dual;
    select v('APP_USER') into :new."CREATED_BY" from sys.dual;
    select sysdate into :new."CREATED_ON" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
elsif updating then
    select SYSTIMESTAMP into :new."TICKET_STATUS_DATE" from sys.dual;
    select v('APP_USER') into :new."TICKET_STATUS_UPDATED_BY" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
end if;
end;
/


/* ********************* */


/* ********************* */


create or replace trigger "bi_SEC_HD_TICKET_CATEGORIES"  
  before
insert or update on "SEC_HD_TICKET_CATEGORIES"              
  for each row 
begin  
  if inserting then
    select "SEC_HD_TICKET_CATEGORIES_SEQ".nextval into :new."CATEGORY_ID" from sys.dual;
    select v('APP_USER') into :new."CREATED_BY" from sys.dual;
    select sysdate into :new."CREATED_ON" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
elsif updating then
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
  end if;
end;
/


/* ********************* */


/* ********************* */


create or replace trigger "bi_SEC_HD_WORKTOOL_ALLOCATIONS"  
  before
insert or update on "SEC_HD_WORKTOOL_ALLOCATIONS"              
  for each row 
begin
  if inserting then
    select "SEC_HD_WORKTOOL_ALLOCATIO_SEQ".nextval into :new."ALLOCATION_ID" from sys.dual;
    select 'WITH STAFF' into :new."ALLOCATION_STATUS" from sys.dual;
    select SYSTIMESTAMP into :new."ALLOCATION_STATUS_DATE" from sys.dual;
    select v('APP_USER') into :new."CREATED_BY" from sys.dual;
    select sysdate into :new."CREATED_ON" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
elsif updating then
    select SYSTIMESTAMP into :new."ALLOCATION_STATUS_DATE" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
  end if;
end;
/


/* ********************* */


/* ********************* */


create or replace trigger "bi_SEC_HD_WORKTOOL_INFORMATION"  
  before insert or update on "SEC_HD_WORKTOOL_INFORMATION"
  for each row 
begin  
  if inserting then
    select "SEC_HD_WORKTOOL_INFORMATI_SEQ".nextval into :new."WORKTOOL_ID" from sys.dual;
    select 'UNALLOCATED' into :new."WORKTOOL_STATUS" from sys.dual;
    select SYSTIMESTAMP into :new."WORKTOOL_STATUS_DATE" from sys.dual;    
    select v('APP_USER') into :new."CREATED_BY" from sys.dual;
    select sysdate into :new."CREATED_ON" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
elsif updating then
    select SYSTIMESTAMP into :new."WORKTOOL_STATUS_DATE" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
end if;
end;
/


/* ********************* */


/* ********************* */


create or replace TRIGGER "bi_SEC_HD_WORKTOOL_MF"
before
insert or update on "SEC_HD_WORKTOOL_MF"
for each row
begin
if inserting then 
    select "SEC_HD_WORKTOOL_MF_SEQ".nextval into :new."WORKTOOL_MF_ID" from sys.dual;
    select v('APP_USER') into :new."CREATED_BY" from sys.dual;
    select sysdate into :new."CREATED_ON" from sys.dual;
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
elsif updating then
    select v('APP_USER') into :new."UPDATED_BY" from sys.dual;
    select sysdate into :new."UPDATED_ON" from sys.dual;
end if;
end;
/


/* ********************* */