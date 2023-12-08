/*2.Create two table
 patient registration table (pid int, pname varchar(20), age int) and 
 patient prescription table (pid int, pdate date, medicine varchar(40))
Write a trigger to insert patient prescription details 
if the entered patient id is present in patient registration table 
else print “Person is not a registered  patient”.*/

drop trigger if exists Patient;
drop table if exists patientRegistration ;
drop table if exists patientPrescription ;
delimiter $
create table patientRegistration(pid int, pname varchar(20), age int);
create table patientPrescription(pid int, pdate date, medicine varchar(40));
create trigger Patient before insert on patientPrescription for each row
begin
    declare check1 boolean;
    select false into check1 from patientRegistration where pid= new.pid;
    if check1 then
        signal sqlstate '42000' set message_text = "Person is not a registered  patient" ;
    end if;
end $
delimiter ;