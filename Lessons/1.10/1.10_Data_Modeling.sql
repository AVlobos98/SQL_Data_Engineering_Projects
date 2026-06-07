SELECT
    JOB_ID,
    JOB_TITLE_SHORT,
    SALARY_YEAR_AVG,
    COMPANY_ID
FROM
    JOB_POSTINGS_FACT
LIMIT 10;



SELECT 
    *
FROM
    COMPANY_DIM
LIMIT 10;


SELECT 
    *
FROM
    SKILLS_JOB_DIM
LIMIT 5;

SELECT * FROM SKILLS_DIM LIMIT 5;


SELECT *
FROM SKILLS_DIM
LIMIT 5;


SELECT * FROM 
information_schema.columns
where table_catalog = 'data_jobs';
 


 -- job_postings_fact TableA
 -- company_dim


