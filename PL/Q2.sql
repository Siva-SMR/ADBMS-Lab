REATE DEFINER=`root`@`localhost` PROCEDURE `inserts`(emp_id int,exp int,salary float)
BEGIN
DECLARE
salaryy float;
DECLARE
    levels varchar(45);
 
if (exp > 0 && exp<5)
    then set levels = 'beg';
    set salaryy=salary+1000;
    insert into employe(emp_id,exp,salary,levels) values(emp_id,exp,salaryy,levels);
    end if;
    if( exp>=6 && exp <10)
    then set levels = 'int';
      set salaryy=salary+2000;
     insert into employe(emp_id,exp,salary,levels) values(emp_id,exp,salaryy,levels);
    end if;
    if (exp >= 10)
    then set levels = 'advan';
      set salaryy=salary+3000;
    insert into employe(emp_id,exp,salary,levels) values(emp_id,exp,salaryy,levels);
    end if;
END

#####

use company;
show tables;
drop table dept;
select * from employe;

call inserts(101,6,3500);

create table employe
(
emp_id int,
exp int,
salary float,
level);

#########

CREATE DEFINER=`root`@`localhost` FUNCTION `new_salary`(experience_level varchar(20),sal varchar(10)) RETURNS int(11)
BEGIN
if(experience_level = 'Experienced')
then
return(sal+1000);
else
return(sal);
end if;

RETURN 1;
END
