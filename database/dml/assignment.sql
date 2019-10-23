SET search_path TO shersched;

--Replace the other_assign_codes with the following.
DELETE FROM ASSIGNMENT where work_section_code = 'OTHER';
DELETE FROM OTHER_ASSIGN_CODE where created_by = 'CASS_ASSIGNMENTS';
INSERT INTO OTHER_ASSIGN_CODE (other_assign_code,description,effective_date,expiry_date,created_by,updated_by,created_dtm,updated_dtm,revision_count)
  	 VALUES ('PARDONS','Pardons',now(),null,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0),
       ('ENTREATMENTS','Entreatments',now(),null,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0),
       ('FILING','Filing',now(),null,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0);

--Replace all ESCORT_RUN codes with the below codes for every location in the system.
DELETE FROM ASSIGNMENT where work_section_code = 'ESCORTS';
DELETE FROM ESCORT_RUN where created_by = 'CASS_ASSIGNMENTS';
INSERT INTO ESCORT_RUN (escort_run_id,title,location_id,created_by,updated_by,created_dtm,updated_dtm,revision_count)
    SELECT uuid_generate_v4(),'Criminal',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Civil',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Cashier',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Interpreter',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Family',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Small Claims',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Youth',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Divorce',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Probate',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Court Records',location_id,'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION;

--Replace other assignments with the below for every location in the system
INSERT INTO assignment (assignment_id,title,work_section_code,location_id,other_assign_code,effective_date,created_by,updated_by,created_dtm,updated_dtm,revision_count) 
    SELECT uuid_generate_v4(),'Pardons','OTHER',location_id,'PARDONS',now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Entreatments','OTHER',location_id,'ENTREATMENTS',now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION
    UNION ALL
    SELECT uuid_generate_v4(),'Filing','OTHER',location_id,'FILING',now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM LOCATION;

--Insert the following escort assignments for every location in the system
INSERT INTO assignment (assignment_id,title,work_section_code,location_id,escort_run_id,effective_date,created_by,updated_by,created_dtm,updated_dtm,revision_count)
    SELECT uuid_generate_v4(),'Criminal','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Criminal'
    UNION ALL
    SELECT uuid_generate_v4(),'Civil','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Civil'
    UNION ALL
    SELECT uuid_generate_v4(),'Cashier','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Cashier'
    UNION ALL
    SELECT uuid_generate_v4(),'Interpreter','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Interpreter'
    UNION ALL
    SELECT uuid_generate_v4(),'Family','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Family'
    UNION ALL
    SELECT uuid_generate_v4(),'Small Claims','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Small Claims'
    UNION ALL
    SELECT uuid_generate_v4(),'Youth','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Youth'
    UNION ALL
    SELECT uuid_generate_v4(),'Divorce','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Divorce'
    UNION ALL
    SELECT uuid_generate_v4(),'Probate','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Probate'
    UNION ALL
    SELECT uuid_generate_v4(),'Court Records','ESCORTS',location_id,escort_run_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM ESCORT_RUN where title = 'Court Records';

--insert one court assignment for every court room already in the system.
INSERT INTO assignment (assignment_id,title,work_section_code,location_id,courtroom_id,effective_date,created_by,updated_by,created_dtm,updated_dtm,revision_count) 
    SELECT uuid_generate_v4(),courtroom_cd,'COURTS',location_id,courtroom_id,now(),'CASS_ASSIGNMENTS','CASS_ASSIGNMENTS',now(),now(),0 FROM courtroom;