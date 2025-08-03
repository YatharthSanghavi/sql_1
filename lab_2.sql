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

--4. UPDATE the BORROW table to SET the AMOUNT to 7000 and the branch name to 'CENTRAL' WHERE the customer
--name is �MEHUL� and the loan number is even.
UPDATE borrow SET AMOUNT=7000 , BNAME='central' WHERE CNAME='mehul' and (loanno%2 = 0)

--5. UPDATE the DEPOSIT table to SET the date to '2022-05-15' and the AMOUNT to 2500 for all accounts in �VRCE�
--and with an account number less than 105.
UPDATE deposit SET adate='2022-05-15' , AMOUNT=2500.00 WHERE ACTNO < 105 and BNAME='vrce'
