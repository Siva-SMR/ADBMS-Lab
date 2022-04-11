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
