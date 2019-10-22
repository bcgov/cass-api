-- set schema
SET search_path TO ${POSTGRES_SCHEMA};

-- SHERIFF_RANK_CODE
INSERT INTO sheriff_rank_code (
	sheriff_rank_code, description, effective_date, expiry_date, created_by, updated_by, created_dtm, updated_dtm, revision_count)
	VALUES ('COURTCLERK', 'Court Clerk', to_date('2019-10-22','yyyy-MM-dd'), null, 'test', 'test', now(), now(), 0);

INSERT INTO sheriff_rank_code (
	sheriff_rank_code, description, effective_date, expiry_date, created_by, updated_by, created_dtm, updated_dtm, revision_count)
	VALUES ('COMBOCLERK', 'Combo Clerk', to_date('2019-10-22','yyyy-MM-dd'), null, 'test', 'test', now(), now(), 0);
    
INSERT INTO sheriff_rank_code (
	sheriff_rank_code, description, effective_date, expiry_date, created_by, updated_by, created_dtm, updated_dtm, revision_count)
	VALUES ('DDR', 'DDR', to_date('2019-10-22','yyyy-MM-dd'), null, 'test', 'test', now(), now(), 0);

INSERT INTO sheriff_rank_code (
	sheriff_rank_code, description, effective_date, expiry_date, created_by, updated_by, created_dtm, updated_dtm, revision_count)
	VALUES ('REGISTRYCLERK', 'Registry Clerk', to_date('2019-10-22','yyyy-MM-dd'), null, 'test', 'test', now(), now(), 0);
    
INSERT INTO sheriff_rank_code (
	sheriff_rank_code, description, effective_date, expiry_date, created_by, updated_by, created_dtm, updated_dtm, revision_count)
	VALUES ('JUSTICEOFTHEPEACE', 'Justice of the Peace', to_date('2019-10-22','yyyy-MM-dd'), null, 'test', 'test', now(), now(), 0);
    
INSERT INTO sheriff_rank_code (
	sheriff_rank_code, description, effective_date, expiry_date, created_by, updated_by, created_dtm, updated_dtm, revision_count)
	VALUES ('SUPERVISOR', 'Supervisor', to_date('2019-10-22','yyyy-MM-dd'), null, 'test', 'test', now(), now(), 0);
    
INSERT INTO sheriff_rank_code (
	sheriff_rank_code, description, effective_date, expiry_date, created_by, updated_by, created_dtm, updated_dtm, revision_count)
	VALUES ('MANAGER', 'Manager', to_date('2019-10-22','yyyy-MM-dd'), null, 'test', 'test', now(), now(), 0);
