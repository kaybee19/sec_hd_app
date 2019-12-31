/**************************/


/* Ticket Categories */


insert all
into sec_hd_ticket_categories(category_type, category_name) values('HARDWARE', 'FAULTY KEYBOARD')
into sec_hd_ticket_categories(category_type, category_name) values('HARDWARE', 'FAULTY DISPLAY')
into sec_hd_ticket_categories(category_type, category_name) values('HARDWARE', 'FAULTY SPEAKERS')
into sec_hd_ticket_categories(category_type, category_name) values('HARDWARE', 'BROKEN PART')
into sec_hd_ticket_categories(category_type, category_name) values('HARDWARE', 'FAULTY CABLE')
into sec_hd_ticket_categories(category_type, category_name) values('SOFTWARE', 'EXPIRED WINDOWS')
into sec_hd_ticket_categories(category_type, category_name) values('SOFTWARE', 'SYSTEM VIRUS')
into sec_hd_ticket_categories(category_type, category_name) values('SOFTWARE', 'FORGOT PASSWORD')
into sec_hd_ticket_categories(category_type, category_name) values('SOFTWARE', 'UNRESPONSIVE SYSTEM')
into sec_hd_ticket_categories(category_type, category_name) values('SOFTWARE', 'SYSTEM ERROR')
into sec_hd_ticket_categories(category_type, category_name) values('NETWORK', 'LAN CONNECTIVITY')
into sec_hd_ticket_categories(category_type, category_name) values('NETWORK', 'WIFI CONNECTIVITY')
into sec_hd_ticket_categories(category_type, category_name) values('NETWORK', 'FORGOT PASSWORD')
into sec_hd_ticket_categories(category_type, category_name) values('NETWORK', 'SLOW CONNECTION')
into sec_hd_ticket_categories(category_type, category_name) values('NETWORK', 'CLIENT CONNECTION')
select * from dual;
/


/**************************/


/* Worktool Manufacturer */


insert all
into sec_hd_worktool_mf(worktool_mf_name) values('HP')
into sec_hd_worktool_mf(worktool_mf_name) values('TOSHIBA')
into sec_hd_worktool_mf(worktool_mf_name) values('DELL')
into sec_hd_worktool_mf(worktool_mf_name) values('LENOVO')
into sec_hd_worktool_mf(worktool_mf_name) values('ACER')
select * from dual;
/


/**************************/


/* Departments */


insert all
into SEC_HD_DEPARTMENTS (DEPARTMENT_NAME, DEPARTMENT_SHORT_CODE) VALUES ('LEGAL AND ENFORCEMENT', 'LGEN')
into SEC_HD_DEPARTMENTS (DEPARTMENT_NAME, DEPARTMENT_SHORT_CODE) VALUES ('INFORMATION TECHNOLOGY', 'ITXX')
into SEC_HD_DEPARTMENTS (DEPARTMENT_NAME, DEPARTMENT_SHORT_CODE) VALUES ('FINANACE AND ACCOUNTS', 'FNAC')
SELECT * FROM DUAL;
/


/**************************/


/* Divisions */


insert all
into SEC_HD_DIVISIONS (DEPARTMENT_ID, DIVISION_NAME, DIVISION_SHORT_CODE, DIVISION_FLOOR, DIVISION_WING, DIVISION_POSITION) VALUES (1, 'LEGAL', 'LEG', 'THIRD', 'SHORT', 'LEFT')
into SEC_HD_DIVISIONS (DEPARTMENT_ID, DIVISION_NAME, DIVISION_SHORT_CODE, DIVISION_FLOOR, DIVISION_WING, DIVISION_POSITION) VALUES (1, 'MONITORING', 'MON', 'FOURTH', 'LONG', 'RIGHT')
into SEC_HD_DIVISIONS (DEPARTMENT_ID, DIVISION_NAME, DIVISION_SHORT_CODE, DIVISION_FLOOR, DIVISION_WING, DIVISION_POSITION) VALUES (2, 'APPLICATIONS', 'APP', 'THIRD', 'LONG', 'LEFT')
into SEC_HD_DIVISIONS (DEPARTMENT_ID, DIVISION_NAME, DIVISION_SHORT_CODE, DIVISION_FLOOR, DIVISION_WING, DIVISION_POSITION) VALUES (2, 'HARDWARE AND SUPPORT', 'HWS',  'THIRD', 'LONG', 'LEFT') 
into SEC_HD_DIVISIONS (DEPARTMENT_ID, DIVISION_NAME, DIVISION_SHORT_CODE, DIVISION_FLOOR, DIVISION_WING, DIVISION_POSITION) VALUES (3, 'FINANCIAL SERVICES', 'FSR', 'SECOND', 'SHORT', 'RIGHT') 
into SEC_HD_DIVISIONS (DEPARTMENT_ID, DIVISION_NAME, DIVISION_SHORT_CODE, DIVISION_FLOOR, DIVISION_WING, DIVISION_POSITION) VALUES (3, 'INVESTMENT SERVICES', 'ISR', 'SECOND', 'SHORT', 'LEFT')
SELECT * FROM DUAL;
/


/**************************/


/* Staff information table */


insert all
/*Staff*/
into sec_hd_staff_info(staff_info_title, staff_info_lname, staff_info_fname, staff_info_gender, staff_info_dob, staff_info_state, staff_info_emp_start_date, department_id, division_id) values('Divisional Head - Applications', 'Shady', 'Slim', 'M', '01/01/1980', 'ABUJA', '01/01/2010', '2', '3')
into sec_hd_staff_info(staff_info_title, staff_info_lname, staff_info_fname, staff_info_gender, staff_info_dob, staff_info_state, staff_info_emp_start_date, department_id, division_id) values('Lead Developer', 'Doe', 'Jane', 'F', '01/01/1980', 'KADUNA', '01/01/2010', '2', '3')
into sec_hd_staff_info(staff_info_title, staff_info_lname, staff_info_fname, staff_info_gender, staff_info_dob, staff_info_state, staff_info_emp_start_date, department_id, division_id) values('Senior Manager', 'Man', 'Bat', 'M', '01/01/1980', 'ABIA', '01/01/2010', '2', '3')
into sec_hd_staff_info(staff_info_title, staff_info_lname, staff_info_fname, staff_info_gender, staff_info_dob, staff_info_state, staff_info_emp_start_date, department_id, division_id) values('Divisional Head - Finanace', 'One', 'Ziggy', 'M', '01/01/1980', 'LAGOS', '01/01/2010', '3', '5')
into sec_hd_staff_info(staff_info_title, staff_info_lname, staff_info_fname, staff_info_gender, staff_info_dob, staff_info_state, staff_info_emp_start_date, department_id, division_id) values('Senior Accountant', 'Dee', 'Vanessa', 'F', '01/01/1980', 'KWARA', '01/01/2010', '3', '5')
/*support*/
into sec_hd_staff_info(staff_info_title, staff_info_lname, staff_info_fname, staff_info_gender, staff_info_dob, staff_info_state, staff_info_emp_start_date, department_id, division_id) values('Support Staff', 'Port', 'Sup', 'M', '01/01/1980', 'KANO', '01/01/2010', '2', '4')
into sec_hd_staff_info(staff_info_title, staff_info_lname, staff_info_fname, staff_info_gender, staff_info_dob, staff_info_state, staff_info_emp_start_date, department_id, division_id) values('Support Staff', 'Sup', 'Port', 'F', '01/01/1980', 'ANAMBARA', '01/01/2010', '2', '4')
/*admin*/
into sec_hd_staff_info(staff_info_title, staff_info_lname, staff_info_fname, staff_info_gender, staff_info_dob, staff_info_state, staff_info_emp_start_date, department_id, division_id) values('Divisional Head - Support', 'Bee', 'Kay', 'F', '01/01/1980', 'ABUJA', '01/01/2010', '2', '4')
into sec_hd_staff_info(staff_info_title, staff_info_lname, staff_info_fname, staff_info_gender, staff_info_dob, staff_info_state, staff_info_emp_start_date, department_id, division_id) values('Senior Support Administrator', 'Dev', 'Kay', 'M', '01/01/1980', 'PLATEAU', '01/01/2010', '2', '4')
SELECT * FROM DUAL;
/


/**************************/


/* Staff details */


insert all
/* staff */
into sec_hd_staff(staff_role, staff_username, staff_password) values('3', 'SLIMSHADY', '123456')
into sec_hd_staff(staff_role, staff_username, staff_password) values('3', 'JANEDOE', '123456')
into sec_hd_staff(staff_role, staff_username, staff_password) values('3', 'BATMAN', '123456')
into sec_hd_staff(staff_role, staff_username, staff_password) values('3', 'ZIGGYONE', '123456')
into sec_hd_staff(staff_role, staff_username, staff_password) values('3', 'VANESSADEE', '123456')
/* support */
into sec_hd_staff(staff_role, staff_username, staff_password) values('2', 'SUPPORT1', '123456')
into sec_hd_staff(staff_role, staff_username, staff_password) values('2', 'SUPPORT2', '123456')
/* admin */
into sec_hd_staff(staff_role, staff_username, staff_password) values('1', 'KAYDEV01', 'kaydev01')
into sec_hd_staff(staff_role, staff_username, staff_password) values('1', 'KAYBEE', 'kaybee')
SELECT * FROM DUAL;
/


/**************************/


/* Worktool information */


insert all
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('LAPTOP', '9753873218', '4', '08/02/2010', '11/11/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PRINTER', '6752901287', '1', '01/11/2011', '10/09/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('SCANNER', '7652009100', '1', '09/02/2012', '11/09/2013')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('TELEVISION', '8725791092', '4', '09/02/2010', '11/10/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('MOUSE', '1998765201', '1', '01/12/2011', '10/09/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('FAXER', '9982700190', '2', '01/11/2010', '01/09/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHONE', '8876109201', '5', '02/02/2009', '01/11/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PRINTER', '1233513456', '3', '11/11/2011', '12/12/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('SCANNER', '9872661091', '5', '07/09/2010', '11/01/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHOTOCOPIER', '1722119901', '3', '02/08/2010', '05/11/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('DESKTOP', '7655442200', '3', '02/08/2010', '09/01/2011')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('MOUSE', '1234561121', '1', '09/09/2011', '09/10/2011')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('KEYBOARD', '1100987261', '1', '12/01/2009', '08/08/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHONE', '1100000909', '3', '08/02/2009', '02/11/2009')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('TELEVISION', '2345098765', '2', '09/08/2011', '08/09/2011')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('LAPTOP', '0982762200', '4', '01/01/2011', '11/02/2011')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHONE', '1000090918', '5', '10/02/2011', '01/01/2011')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('FAXER', '0090991821', '3', '02/01/2010', '01/03/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('MOUSE', '1122339908', '1', '11/11/2010', '10/11/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('KEYBOARD', '2908176211', '1', '09/01/2011', '12/04/2011')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('TELEVISION', '2345098765', '2', '09/08/2011', '08/09/2011')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('LAPTOP', '0982762200', '4', '01/01/2011', '11/02/2011')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('SCANNER', '1278829101', '1', '09/11/2009', '11/02/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PRINTER', '2233451211', '1', '11/11/2011', '09/09/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHONE', '1000090918', '5', '10/02/2011', '01/01/2011')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('FAXER', '0090991821', '3', '02/01/2010', '01/03/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PRINTER', '0901221211', '3', '11/02/2011', '12/03/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('SHREDDER', '1121000121', '3', '12/03/2002', '02/01/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('SCANNER', '1220098771', '2', '11/12/2009', '12/11/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('LAPTOP', '8789010001', '4', '01/01/2012', '05/05/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHONE', '1222334680', '2', '11/01/2011', '01/09/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('MOUSE', '9089000001', '1', '01/06/2010', '01/09/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('KEYBOARD', '0090090121', '1', '09/01/2009', '11/03/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('DESKTOP', '5409123134', '5', '11/09/2012', '01/09/2013')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('MOUSE', '1200121234', '4', '01/09/2009', '01/09/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('KEYBOARD', '2214111212', '4', '11/02/2010', '09/11/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHONE', '5432112123', '3', '02/04/2010', '11/09/2013')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('LAPTOP', '0121341121', '1', '08/03/2010', '10/08/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHONE', '3354500911', '5', '11/11/2011', '12/12/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('MOUSE', '1143400911', '4', '08/03/2010', '01/02/2013')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('DESKTOP', '1099120012', '5', '12/03/2008', '01/02/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('MOUSE', '1110922012', '4', '01/02/2013', '09/05/2013')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('KEYBOARD', '1110090121', '1', '09/01/2009', '11/03/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('SHREDDER', '1121000121', '3', '12/03/2002', '02/01/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHONE', '98712201012', '2', '11/01/2008', '11/02/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('SCANNER', '3354510911', '5', '11/11/2011', '12/12/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PRINTER', '1143410911', '4', '08/03/2010', '01/02/2013')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PRINTER', '0601221211', '3', '11/02/2011', '12/03/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('SCANNER', '2214111212', '4', '11/02/2010', '09/11/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('DESKTOP', '1091121231', '1', '11/01/2008', '09/10/2013')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('MOUSE', '0001133412', '1', '01/01/2009', '11/11/2012')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('KEYBOARD', '1009012133', '1', '09/12/2009', '10/09/2010')
into sec_hd_worktool_information(worktool_type, worktool_sn, worktool_mf, worktool_mf_date, worktool_purchase_date) values('PHONE', '0909112012', '2', '12/03/2008', '10/06/2012')
select * from dual;
/


/**************************/


/* Worktool allocation */


insert all
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('1', '1', '12/05/2014', '2', '3', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('2', '1', '09/05/2014', '2', '3', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('3', '1', '11/05/2014', '2', '3', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('4', '1', '01/05/2014', '2', '3', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('5', '1', '04/05/2014', '2', '3', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('6', '1', '12/05/2014', '2', '3', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('7', '1', '02/05/2014', '2', '3', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('8', '1', '01/12/2013', '2', '3', 'DIVISIONAL HEAD', 'SHARED')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('9', '1', '02/12/2013', '2', '3', 'DIVISIONAL HEAD', 'SHARED')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('10', '1', '05/12/2013', '2', '3', 'DIVISIONAL HEAD', 'SHARED')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('11', '2', '12/12/2013', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('12', '2', '11/12/2013', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('13', '2', '11/12/2013', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('14', '2', '01/12/2013', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('15', '3', '02/11/2012', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('16', '3', '09/11/2012', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('17', '3', '11/11/2012', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('18', '3', '11/11/2012', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('19', '3', '12/11/2012', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('20', '3', '08/11/2012', '2', '3', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('21', '4', '12/01/2014', '3', '5', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('22', '4', '09/01/2014', '3', '5', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('23', '4', '10/01/2014', '3', '5', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('24', '4', '01/01/2014', '3', '5', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('25', '4', '04/02/2014', '3', '5', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('26', '4', '09/04/2014', '3', '5', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('27', '4', '01/04/2014', '3', '5', 'DIVISIONAL HEAD', 'SHARED')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('28', '4', '08/04/2014', '3', '5', 'DIVISIONAL HEAD', 'SHARED')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('29', '4', '01/04/2014', '3', '5', 'DIVISIONAL HEAD', 'SHARED')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('30', '5', '09/11/2012', '3', '5', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('31', '5', '05/11/2012', '3', '5', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('32', '5', '08/11/2012', '3', '5', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('33', '5', '11/11/2012', '3', '5', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('34', '6', '12/09/2012', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('35', '6', '11/09/2012', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('36', '6', '08/09/2012', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('37', '6', '12/09/2012', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('38', '7', '08/06/2013', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('38', '7', '09/06/2013', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('40', '7', '01/06/2013', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('41', '8', '11/11/2012', '2', '4', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('42', '8', '12/11/2012', '2', '4', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('43', '8', '11/11/2012', '2', '4', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('44', '8', '01/11/2012', '2', '4', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('45', '8', '11/09/2013', '2', '4', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('46', '8', '08/09/2013', '2', '4', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('47', '8', '05/09/2013', '2', '4', 'DIVISIONAL HEAD', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('48', '8', '07/09/2013', '2', '4', 'DIVISIONAL HEAD', 'SHARED')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('49', '8', '09/09/2013', '2', '4', 'DIVISIONAL HEAD', 'SHARED')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('50', '9', '02/09/2013', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('51', '9', '11/11/2014', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('52', '9', '02/11/2014', '2', '4', 'PERSONAL', 'PERSONAL')
into sec_hd_worktool_allocations(worktool_id, staff_id, allocation_date, department_id, division_id, allocation_type, allocation_use) values('53', '9', '03/11/2014', '2', '4', 'PERSONAL', 'PERSONAL')
select * from dual;
/

