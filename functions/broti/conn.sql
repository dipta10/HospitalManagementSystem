
-- for connecting to dipta
-- drop database link dipta;
-- 
-- create database link dipta
--  connect to system identified by "helpme10"
--  using '(DESCRIPTION =
--        (ADDRESS_LIST =
--          (ADDRESS = (PROTOCOL = TCP)
-- 		 (HOST = 192.168.31.5)
-- 		 (PORT = 1521))
--        )
--        (CONNECT_DATA =
--          (SID = XE)
--        )
--      )'
-- ;  


-- for connecting to broti
drop database link broti;

create database link broti
 connect to system identified by "123456"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)
		 (HOST = 192.168.31.49)
		 (PORT = 1521))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
;  


-- for connecting to tonmoy
-- drop database link dipta;
-- 
-- create database link dipta
--  connect to system identified by "helpme10"
--  using '(DESCRIPTION =
--        (ADDRESS_LIST =
--          (ADDRESS = (PROTOCOL = TCP)
-- 		 (HOST = 192.168.31.5)
-- 		 (PORT = 1521))
--        )
--        (CONNECT_DATA =
--          (SID = XE)
--        )
--      )'
-- ;  
