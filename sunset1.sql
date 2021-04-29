Create Database sunset;
use sunset;

select * from registeredUser;
select * from images;

select * from likes;
select * from follow;
select * from tags;


Select f1.followingemail from follow f1, follow f2 
where f1.followingemail=f2.followeremail and f2.followingemail=f1.followeremail;



select postuser, count(postuser) as Top  
                 from images
              group by (postuser) order by Top desc;
		


CREATE VIEW NumOfPost(postuser, i)
AS SELECT postuser,COUNT(*) 
FROM images
GROUP BY postuser;
drop view numofpost;
select * from numofpost ;

SELECT  tag, count(tag) as num
FROM imagetag
GROUP BY tag having num >=3
ORDER BY num DESC ;

SELECT  postuser, count(postuser) as numofpost
FROM images
GROUP BY postuser 
ORDER BY numofpost DESC ;





drop table registeredUser;
drop table images;
drop table follow;
drop table comments;
drop table imageTag;
drop table likes;


CREATE TABLE registeredUser (
email char(50),
pass VARCHAR (10) NOT NULL, 
firstName VARCHAR (15),
lastName VARCHAR (15),
birthday VARCHAR (10), 
gender CHAR (6), -- 'MALE', 'FEMALE', 'OTHER'
PRIMARY KEY (email) 
);

Insert into registeredUser(email, pass) values ("root@sunset.com", "pass1234");
Insert into registeredUser(email, pass) values ("root@root.com", "pass1234");

Insert into registeredUser(email, pass) values ("fahmi@sunset.com", "pw1");




Create Table Images(
imageid mediumint not null auto_increment,
url varchar(150),
des VARCHAR(100),
postuser VARCHAR(100) not null, postdate Date,
posttime DATETIME,
PRIMARY KEY(imageid),
FOREIGN KEY(postuser) references registeredUser(email));

create table imageTag(
imageid mediumint not null,
tag varchar(20) not null,
primary key (imageid, tag),
foreign key(imageid) references Images(imageid));

create table comments(
email varchar(100) not null,
imageid mediumint not null,
des VARCHAR(500),
primary key(email, imageid),
foreign key(email) references RegisteredUser(email),
foreign key(imageid) references Images(imageid));

create table likes(
email varchar(100) not null,
imageid mediumint not null, likedate Date,
primary key(email, imageid),
foreign key(email) references RegisteredUser(email),
foreign key(imageid) references Images(imageid));

create table follow(
followingemail varchar(100) not null,
followeremail varchar(100) not null,
primary key(followingemail, followeremail),
foreign key(followingemail) references RegisteredUser(email),
foreign key(followeremail) references RegisteredUser(email));



SELECT P1.email
FROM follow AS F1
JOIN registereduser AS P1 ON P1.email = F1.followeremail
WHERE F1.followingemail = 'fahmi@sunset.com' AND
      F1.followeremail IN (SELECT F2.followeremail
                      FROM follow AS F2
                      WHERE F2.followingemail = 'rafi@sunset.com');
                      
SELECT email FROM registeredUser
 WHERE email NOT IN (SELECT DISTINCT postuser FROM images ) 
 AND email NOT IN (SELECT DISTINCT followingemail FROM follow)
 AND email NOT IN (SELECT DISTINCT email FROM likes);
 
Select * from likes l inner join images i on l.imageid=i.imageid; 

 SELECT email from (select email, count(*) as 
	        		likecount from likes group by email) u 
	        		where likecount =(select count(*) from images);


