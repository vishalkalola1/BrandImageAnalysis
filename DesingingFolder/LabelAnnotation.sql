select * from LabelAnnotations where description like '%rose%' and userid_id=13;
select count(*) from TextAnnotations where locale != '' and userid_id=10;
select * from LabelAnnotations where userid_id=10;
select count(*) from LabelAnnotations where userid_id=10;
SELECT DISTINCT description FROM LabelAnnotations where userid_id=10;