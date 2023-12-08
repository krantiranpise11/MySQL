/*
Write a function that returns random OTP number of 6 digits.
*/
drop function if exists otp;
delimiter $
create function otp() returns int
deterministic
begin
    declare num int;
    set num := round(rand()*1000000);
    if num>99999 then
        return num;
    end if;
end $
delimiter ;