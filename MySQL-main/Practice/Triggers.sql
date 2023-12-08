
drop trigger if exists tr1;
delimiter $
create trigger tr1 before insert on d2 for each row
begin
    if dayname(now())='Tuesday' then
        signal sqlstate '42000' set message_text = "Invalid , data entry on tuesday is restricted !!";
    end if;
end $
delimiter ;


drop trigger if exists tr2;
delimiter $
create trigger tr2 before insert on d1 for each row
begin
    insert into d3 values(new.id, new.name, new.loc, current_time(), current_date(), user());
end $
delimiter ;