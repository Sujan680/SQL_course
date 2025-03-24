CREATE TABLE job_applied (
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(255)
);

SELECT *
FROM job_applied;

INSERT INTO job_applied 
    (job_id, 
    application_sent_date, 
    custom_resume, 
    resume_file_name, 
    cover_letter_sent, 
    cover_letter_file_name, 
    status)
VALUES 
    (1, 
    '2021-01-01', 
    TRUE, 
    'resume1.pdf', 
    TRUE, 
    'cover_letter1.pdf', 
    'submitted'),
    (2, 
    '2021-01-02', 
    FALSE, 
    'resume2.pdf', 
    FALSE, 
    'cover_letter2.pdf', 
    'rejected'),
    (3, 
    '2021-01-03', 
    TRUE, 
    'resume3.pdf', 
    TRUE, 
    'cover_letter3.pdf', 
    'accepted'),
    (4,
    '2021-01-04',
    FALSE,
    'resume4.pdf',
    FALSE,
    'cover_letter4.pdf',
    'pending'),
    (5,
    '2021-01-05',
    TRUE,
    'resume5.pdf',
    TRUE,
    'cover_letter5.pdf',
    'submitted');



-- ALTER TABLE Command ---
--ALTER TABLE job_applied
--ADD col_name data_type;

--ALTER TABLE job_applied
--DROP COLUMN col_name;

--ALTER TABLE job_applied
--MODIFY COLUMN col_name data_type;

--ALTER TABLE job_applied
--RENAME COLUMN col_name TO new_col_name;

ALTER TABLE job_applied
ADD contact VARCHAR(50);


SELECT *
FROM job_applied;

-- UPDATE Command ---

UPDATE job_applied
SET contact = 'John Doe'
WHERE job_id = 1;

UPDATE job_applied
SET contact = 'John Cena'
WHERE job_id = 2;

UPDATE job_applied
SET contact = 'Maddison Wick'
WHERE job_id = 3;

UPDATE job_applied
SET contact = 'Dinesh kartik'
WHERE job_id = 4;

UPDATE job_applied
SET contact = 'Rohit Sharma'
WHERE job_id = 5;
