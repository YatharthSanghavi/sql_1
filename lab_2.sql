--LAB => 2
--Perform SQL queries for UPDATE, Alter, Rename, Delete, Truncate, Drop


--Part - A

--1. UPDATE deposit amount of all customers from 3000 to 5000. (Use Deposit Table)

UPDATE deposit SET amount=5000.00 WHERE amount = 3000.00

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table) 
UPDATE borrow SET bname='c.g.road' WHERE cname='anil'

--3. UPDATE Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE deposit SET actno=111 , amount=5000.00 WHERE cname='sandip'

--4. UPDATE amount of KRANTI to 7000. (Use Deposit Table)
UPDATE deposit SET amount=7000 WHERE cname='kranti'

--5. UPDATE branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE branch SET bname='andheri west' WHERE bname='andheri'

--6. UPDATE branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE deposit SET bname='nehru palace' WHERE cname='mehul'

--7. UPDATE deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
UPDATE deposit SET amount = 5000.00 WHERE actno between 103 and 107

--8. UPDATE ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE deposit SET adate='1995-04-01' WHERE cname='anil';

--9. UPDATE the amount of MINU to 10000. (Use Deposit Table)
UPDATE deposit SET amount=10000.00 WHERE cname='minu';

--10. UPDATE deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE deposit SET amount=5000.00 , adate='1996-04-01' WHERE cname='pramod'

--Part => B

--1. Give 10% Increment in Loan Amount. (Use Borrow Table)
UPDATE borrow SET amount=(amount+(amount*10/100))

--2. Customer deposits additional 20% amount to their account, UPDATE the same. (Use Deposit Table)
UPDATE deposit SET amount=(amount+(amount*20/100))

--3. Increase Amount by 1000 in all the account. (Use Deposit Table)
UPDATE deposit SET amount=(amount+1000) 

--4. UPDATE the BORROW table to SET the amount to 7000 and the branch name to 'CENTRAL' WHERE the customer
--name is �MEHUL� and the loan number is even.
UPDATE borrow SET amount=7000 , bname='central' WHERE cname='mehul' and (loanno%2 = 0)

--5. UPDATE the DEPOSIT table to SET the date to '2022-05-15' and the amount to 2500 for all accounts in �VRCE�
--and with an account number less than 105.
UPDATE deposit SET adate='2022-05-15' , amount=2500.00 WHERE actno < 105 and bname='vrce'
