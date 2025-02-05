SELECT '2023-02-19'::DATE;



CREATE TABLE january_jobs AS 
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE february_jobs AS 
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE march_jobs AS 
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 3;


SELECT
    job_title_short,
    job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York' THEN 'Local'
        ELSE 'Onsite'
    END AS local_category
FROM job_postings_fact; 




