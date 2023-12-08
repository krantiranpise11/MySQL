
drop procedure if exists insertion;
delimiter $
create procedure insertion(p1 int, p2 char(10), p3 char(10))
begin
    declare exit handler for 1062 select "Entry already exists !!" as "Error window";
    if p3='pune'then
        insert into d1 values(p1, p2, p3);
    else
        select "Invalid Location." as R1;
    end if;
end $
delimiter ;


drop procedure if exists displayid;
delimiter $
create procedure displayid(_id int)
begin
    declare flag bool;
    select true into flag from d1 where _id=id;
    if flag then
        select * from d1 where _id=id;
    else
        select "No record found." as 'Error window';
    end if;
end $
delimiter ;


drop procedure if exists creation;
delimiter $
create procedure creation()
begin
declare exit handler for 1050 select "Table already exists !!" as "Error window";
    create table d1(id int primary key auto_increment, name char(10), loc char(10));
end $
delimiter ;


drop procedure if exists pro4;
delimiter $
create procedure pro4()
begin
    signal sqlstate '42S02' set message_text= "Unknown Table!!";
    drop table c ;
end $
delimiter ;


drop procedure if exists limit1;
delimiter $
create procedure limit1( startd int, endd int)
begin
    select id, name, loc from d1 limit startd, endd ;
end $
delimiter ;


drop procedure if exists displaycat;
delimiter $
create procedure displaycat(passname varchar(10))
begin
    set @x := concat( "select * from ",passname);
    prepare z from @x;
    execute z;
end $
delimiter ;


drop procedure if exists creationcat;
delimiter $
create procedure creationcat(passname varchar(10))
begin
    set @x := concat( "create table ",passname,"(c1 int, c2 int)");
    prepare z from @x;
    execute z;
end $
delimiter ;


