select count(*) from LogoAnnotations where userid_id=10;
select count(*) from LogoAnnotations where (adult = "VERY_UNLIKELY" or adult = "UNLIKELY" or adult="UNKNOWN") and userid_id=10;
select * from LogoAnnotations;
SELECT DISTINCT description FROM LogoAnnotations;