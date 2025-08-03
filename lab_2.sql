--LAB => 2
--Perform SQL queries for UPDATE, Alter, Rename, Delete, Truncate, Drop


--Part - A

--1. UPDATE deposit AMOUNT of all customers from 3000 to 5000. (Use Deposit Table)

UPDATE deposit SET AMOUNT=5000.00 WHERE AMOUNT = 3000.00

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table) 
UPDATE borrow SET BNAME='c.g.road' WHERE CNAME='anil'

--3. UPDATE Account No of SANDIP to 111 & AMOUNT to 5000. (Use Deposit Table)
UPDATE deposit SET ACTNO=111 , AMOUNT=5000.00 WHERE CNAME='sandip'

--4. UPDATE AMOUNT of KRANTI to 7000. (Use Deposit Table)
UPDATE deposit SET AMOUNT=7000 WHERE CNAME='kranti'

--5. UPDATE branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE branch SET BNAME='andheri west' WHERE BNAME='andheri'

--6. UPDATE branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE deposit SET BNAME='nehru palace' WHERE CNAME='mehul'

--7. UPDATE deposit AMOUNT of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
UPDATE deposit SET AMOUNT = 5000.00 WHERE ACTNO between 103 and 107

--8. UPDATE ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE deposit SET adate='1995-04-01' WHERE CNAME='anil';

--9. UPDATE the AMOUNT of MINU to 10000. (Use Deposit Table)
UPDATE deposit SET AMOUNT=10000.00 WHERE CNAME='minu';

--10. UPDATE deposit AMOUNT of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE deposit SET AMOUNT=5000.00 , adate='1996-04-01' WHERE CNAME='pramod'

--Part => B

--1. Give 10% Increment in Loan AMOUNT. (Use Borrow Table)
UPDATE borrow SET AMOUNT=(AMOUNT+(AMOUNT*10/100))

--2. Customer deposits additional 20% AMOUNT to their account, UPDATE the same. (Use Deposit Table)
UPDATE deposit SET AMOUNT=(AMOUNT+(AMOUNT*20/100))

--3. Increase AMOUNT by 1000 in all the account. (Use Deposit Table)
UPDATE deposit SET AMOUNT=(AMOUNT+1000) 

--4. UPDATE the BORROW table to SET the AMOUNT to 7000 and the branch name to 'CENTRAL' WHERE the customer name is MEHUL and the loan number is even.
UPDATE borrow SET AMOUNT=7000 , BNAME='central' WHERE CNAME='mehul' and (loanno%2 = 0)

--5. UPDATE the DEPOSIT table to SET the date to '2022-05-15' and the AMOUNT to 2500 for all accounts in VRCE and with an account number less than 105.
UPDATE deposit SET adate='2022-05-15' , AMOUNT=2500.00 WHERE ACTNO < 105 and BNAME='vrce'

--Part => C

--1. Update amount of loan no 321 to NULL. (Use Borrow Table)
update borrow set amount=null where loanno=321;

--2. Update branch name of KRANTI to NULL (Use Borrow Table)
update borrow set bname=null where cname='kranti' 

--3. Display the name of borrowers whose Loan number is NULL. (Use Borrow Table)
select * from borrow where loanno is null

--4. Display the Borrowers whose having branch. (Use Borrow Table)
select * from borrow where bname is not null

--5. Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481. (Use Borrow Table)
update borrow set amount=5000.00 , bname='vrce' , cname='darshan' where loanno=481

--6. Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less than 2000.
update deposit set adate='2021-01-01' where amount < 2000

--7. Update the Deposit table and set the date to NULL & Branch name to ANDHERI whose Account No is 110.
update deposit set adate=null , bname='andheri'where actno=110 


--Alter, Rename Operation

--Part => A
--1. Add two more columns City VARCHAR (20) and Pincode INT
alter table deposit add city varchar(20) , pincode int;

--2. Add column state VARCHAR(20).
alter table deposit add state varchar(20);

--3. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
alter table deposit alter column cname varchar(35);

--4. Change the data type DECIMAL to INT in amount Column.
alter table deposit alter column amount int;

--5. Delete Column City from the DEPOSIT table.
alter table deposit drop column city;

--6. Rename Column ActNo to ANO.
ALTER TABLE deposit RENAME COLUMN ACTNO TO ANO;

--7. Change name of table DEPOSIT to DEPOSIT_DETAIL
RENAME TABLE DEPOSIT TO DEPOSIT_DETAIL;

