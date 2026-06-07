SELECT
 jpf.job_id,
 jpf.job_title_short,
 cd.company_id,
 cd.name AS company_name,
 jpf.job_location

FROM
    job_postings_fact AS jpf
LEFT JOIN company_dim AS cd
    ON jpf.COMPANY_ID = cd.COMPANY_ID;


SELECT count(*)
FROM job_postings_fact;



----Right join Uses the right table to join the left information 
-- on the left table to preserve the right table



SELECT
 jpf.job_id,
 jpf.job_title_short,
 cd.company_id,
 cd.name AS company_name,
 jpf.job_location
FROM
    job_postings_fact AS jpf
Right JOIN company_dim AS cd
    ON jpf.COMPANY_ID = cd.COMPANY_ID;

/* Inner JOIN when both tables have a match */ 
--Full outerJoin, combines both tables and if there is nulls the row will replace the values with null

SELECT *
FROM SKILLS_DIM
LIMIT 10;


SELECT
    jpf.job_id,
    jpf.job_title_short,
    sjd.skill_id,
    sd.skills
FROM job_postings_fact as jpf
LEFT JOIN SKILLS_JOB_DIM as sjd
    ON jpf.job_id = sjd.job_id
LEFT JOIN SKILLS_DIM as sd
    on  sjd.skill_id = sd.skill_id;
