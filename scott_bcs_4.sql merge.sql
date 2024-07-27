merge into students target
using student_n  source
on (target.student_id=source.studentn_id)
when MATCHED then 
UPDATE SET
target.first_name=source.studentn_name
when not MATCHED THEN
INSERT (target.student_id,target.scores)VALUES(source.studentn_id,source.studentn_scores)
;
select * from students;