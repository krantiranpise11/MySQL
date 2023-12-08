drop procedure if exists seperateStr;
drop table if exists singleChar1;
delimiter $
create procedure seperateStr(in passedString varchar(20))
begin
    declare receivedChar char(1);
    declare i int;
    set i:= 1;
    create table singleChar1(ch varchar (1));
    
    s1: loop
        if i>length(passedString) then
            leave s1;
        else
            set receivedChar:= substr(passedString,i,1);
            set i:=i+1;
            insert into singleChar1 values(receivedChar);
        end if;
    end loop s1;
end $
delimiter ; 