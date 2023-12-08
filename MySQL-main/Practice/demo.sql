
drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int, in y int)
Begin
    select x+y as 'sum', x-y as 'Sub', x*y as 'mul', x/y as 'div', x%y as 'mod';
end $
delimiter ;


drop procedure if exists pro2;
delimiter $
create procedure pro2(in x int, in y int, out z int)
Begin
    set z:= x+y;
end $
delimiter ;


drop procedure if exists pro3;
delimiter $
create procedure pro3(in x int)
Begin
    if x>10 then
        select "x exceed limit of 10";
    else
        select "x under limit 10";
    end if;
end $
delimiter ;


drop procedure if exists pro4;
delimiter $
create procedure pro4(in x int)
Begin
    if x=0 then
        select "0";
    else
        select "1";
    end if;
end $
delimiter ;


drop procedure if exists pro5;
delimiter $
create procedure pro5()
Begin
    declare x int;
    set @z := "Start:";
    set x:=0;
    l1 : loop
        set x:= x+1;
            if x>10 then
                select "x exceed limit of 10";
                leave l1;
            end if;
        set @z:= concat(@z," ",x);
    end loop l1;
end $
delimiter ;


drop procedure if exists pro6;
delimiter $
create procedure pro6(in y int)
Begin
    declare x int;
    set @z := "Table :";
    set x:=0;
    l1 : loop
        set x:= x+1;
            if x>10 then
                leave l1;
            end if;
        set @z:= concat(@z," ",x*y);
        select x*y;
    end loop l1;
end $
delimiter ;


drop procedure if exists pro7;
delimiter $
create procedure pro7(in y int)
Begin
    declare x int;
    set @z := "Table :";
    set x:=0;
    l1 : loop
        set x:= x+1;
            if x>10 then
                leave l1;
            end if;
        set @z:= concat(@z," ",x*y);
        select x*y;
    end loop l1;
end $
delimiter ;