select count(*) from SafeSearchAnnotation where userid_id=10;
select count(*) from SafeSearchAnnotation where (adult = "VERY_UNLIKELY" or adult = "UNLIKELY" or adult="UNKNOWN") and userid_id=10;
select * from SafeSearchAnnotation;