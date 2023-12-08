drop procedure if exists Vowels1;
drop table if exists stringVowels;
delimiter $
create procedure Vowels1(in string1 varchar(20))
begin
    declare ch char(1);
    declare i int;
    set i:= 1;
    create table stringVowels(ch char(1));

    lp1: loop 
        if i>length(string1) then
            leave lp1;
        else
            set ch:= substr(string1,i,1);
            set i:= i+1;
            if (ch not in ('a','i','e','o','u')) then 
                insert into stringVowels values(ch);
            end if;
        end if;
    end loop lp1;
    select "Type--- 'select ch from stringvowels;'";
end $
delimiter ;


drop procedure if exists Vowels2;
delimiter $
create procedure Vowels2(in string1 varchar(20))
begin
    declare ch char(1);
    declare i, Vowels int;
    set Vowels:=0;
    set i:= 1;
    lp1: loop 
        if i>length(string1) then
            leave lp1;
        else
            set ch:= substr(string1,i,1);
            set i:= i+1;
            if (ch in ('a','i','e','o','u')) then 
                set Vowels:= Vowels + 1;
            end if;
        end if;
    end loop lp1;
    select Vowels ;
end $
delimiter ;


drop procedure if exists Vowels3;
drop table if exists stringVowels;
delimiter $
create procedure Vowels3(in string1 varchar(20))
begin
    declare ch char(1);
    declare i, Vowels int;
    set Vowels:=0;
    set i:= 1;
    create table stringVowels(ch char(1));
    lp1: loop 
        if i>length(string1) then
            leave lp1;
        else
            set ch:= substr(string1,i,1);
            set i:= i+1;
            if (ch in ('a','i','e','o','u')) then 
                insert into stringVowels values(ch);
            end if;
        end if;
    end loop lp1;
    select "Type--- 'select ch from stringvowels;'";
end $
delimiter ;