drop table if exists student;
create table student(rollno varchar(20), name varchar(20), clas varchar(20), primary key(rollno, clas));

drop table if exists act;
create table act( aid int, activity varchar(20), activitylevel varchar(20) default 'No Level', points int, primary key(activity,activitylevel,points));

drop table if exists faculty;
create table faculty( facid varchar(20), password varchar(20), clas varchar(20));

drop table if exists studact;
create table studact( rollno varchar(20), aid int, foreign key(rollno) references student(rollno),foreign key(aid) references act(aid));
