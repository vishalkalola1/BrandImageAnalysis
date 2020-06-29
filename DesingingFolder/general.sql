update user set utype = 'user' where uemail = 'channel@gmail.com';
update user set utype = 'admin' where uemail = 'vishalkalola196@gmail.com';
update user set uactivated = '1' where id = 13;
update user set uemail = 'channel@gmail.com' where id = 2;

select * from user;
select * from UploadFileAnnotations;
select * from uploadFile;
select * from TextAnnotations;
select * from SafeSearchAnnotation;
select * from LogoAnnotations;
select * from LocationAnnotations;
select * from LocalizedObjectAnnotations;
select * from LanguageAnnotations;
select * from LandmarkAnnotations;
select * from LabelAnnotations;
select * from ImagePropertiesAnnotation;
select * from FullTextAnnotation;
select * from FaceAnnotations;

select * from HelpTable;
select * from ContactUSTable;

delete from uploadFile;
delete from TextAnnotations;
delete from SafeSearchAnnotation;
delete from LogoAnnotations;
delete from LocationAnnotations;
delete from LocalizedObjectAnnotations;
delete from LanguageAnnotations;
delete from LandmarkAnnotations;
delete from LabelAnnotations;
delete from ImagePropertiesAnnotation;
delete from FullTextAnnotation;
delete from FaceAnnotations;
delete from UploadFileAnnotations;
delete from user;

