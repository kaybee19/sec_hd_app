/**************************************/


/* Create view for ticket allocation */


CREATE OR REPLACE FORCE VIEW "SEC_HD_TICKET_INFO_ALLO" ("STAFF_ID", "WORKTOOL_ID", "WORKTOOL_TYPE", "WORKTOOL_SN", "WORKTOOL_MF", "ALLOCATION_DATE", "ALLOCATION_STATUS", "ALLOCATION_STATUS_DATE", "ALLOCATION_TYPE", "ALLOCATION_USE") AS 
  select SEC_HD_WORKTOOL_ALLOCATIONS.STAFF_ID as STAFF_ID,
    SEC_HD_WORKTOOL_ALLOCATIONS.WORKTOOL_ID as WORKTOOL_ID,
    SEC_HD_WORKTOOL_INFORMATION.WORKTOOL_TYPE as WORKTOOL_TYPE,
    SEC_HD_WORKTOOL_INFORMATION.WORKTOOL_SN as WORKTOOL_SN,
    SEC_HD_WORKTOOL_INFORMATION.WORKTOOL_MF as WORKTOOL_MF,
    SEC_HD_WORKTOOL_ALLOCATIONS.ALLOCATION_DATE as ALLOCATION_DATE,
    SEC_HD_WORKTOOL_ALLOCATIONS.ALLOCATION_STATUS as ALLOCATION_STATUS,
    SEC_HD_WORKTOOL_ALLOCATIONS.ALLOCATION_STATUS_DATE as ALLOCATION_STATUS_DATE,
    SEC_HD_WORKTOOL_ALLOCATIONS.ALLOCATION_TYPE as ALLOCATION_TYPE,
    SEC_HD_WORKTOOL_ALLOCATIONS.ALLOCATION_USE as ALLOCATION_USE 
 from SEC_HD_WORKTOOL_INFORMATION SEC_HD_WORKTOOL_INFORMATION,
    SEC_HD_WORKTOOL_ALLOCATIONS SEC_HD_WORKTOOL_ALLOCATIONS 
 where SEC_HD_WORKTOOL_ALLOCATIONS.WORKTOOL_ID=SEC_HD_WORKTOOL_INFORMATION.WORKTOOL_ID;
/


/**************************************/


/* Create package app security for login */


create or replace PACKAGE  "PKG_APP_SECURITY" AS
PROCEDURE add_new_user (p_username IN VARCHAR2, p_password IN VARCHAR2, p_user_role IN NUMBER, p_staff_id IN NUMBER);
PROCEDURE update_user (p_user_id IN NUMBER, p_username IN VARCHAR2, p_user_role IN NUMBER, p_old_password IN VARCHAR2 := NULL, p_new_password IN VARCHAR2 := NULL, p_updater IN NUMBER := 2);
FUNCTION authenticate_user (p_username VARCHAR2, p_password VARCHAR2)
RETURN BOOLEAN;
END;
/


/**************************************/


/* Create package app utilities for support */


create or replace PACKAGE  "PKG_APP_UTILITIES" AS
FUNCTION get_hash (p_string VARCHAR2)
RETURN VARCHAR2;
FUNCTION get_random_str (p_length NUMBER)
RETURN VARCHAR2;
FUNCTION apex_error_handling (p_error apex_error.t_error)
RETURN apex_error.t_error_result;
PROCEDURE send_mail (p_mail_to VARCHAR2, p_mail_subject VARCHAR2, p_mail_body VARCHAR2, p_mail_from VARCHAR2 := 'admin@sec.gov.ng');
END;
/


/**************************************/


/* Create procedure for ticket close */


create or replace procedure "TICKET_CLOSE"
as
begin
update sec_hd_workflows
set WORKFLOW_CLOSED_BY = 'SYSTEM'
where WORKFLOW_TYPE = 'TICKETS'
and WORKFLOW_STATUS = 'RESOLVED'
and WORKFLOW_CLOSED_BY is NULL
and (WORKFLOW_STATUS_UPDATE + INTERVAL '1' MINUTE < SYSTIMESTAMP);
end;
/


/**************************************/


/* Create job for 2 way ticket resolution */


BEGIN
DBMS_SCHEDULER.CREATE_JOB (
   job_name           =>  'TICKET_CLOSE_BY_WORKFLOWS',
   job_type           =>  'STORED_PROCEDURE',
   job_action         =>  'TICKET_CLOSE',
   start_date         =>  SYSTIMESTAMP,
   repeat_interval    => 'FREQ=MINUTELY; INTERVAL=2;',
   enabled            =>  TRUE);
END;
/
