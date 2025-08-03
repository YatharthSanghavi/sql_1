--LAB => 2
--Perform SQL queries for Update, Alter, Rename, Delete, Truncate, Drop


--Part - A

--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)

update deposit set amount=5000.00 where amount = 3000.00

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table) 
update borrow set bname='c.g.road' where cname='anil'

--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
update deposit set actno=111 , amount=5000.00 where cname='sandip'

--4. Update amount of KRANTI to 7000. (Use Deposit Table)
update deposit set amount=7000 where cname='kranti'

--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
update branch set bname='andheri west' where bname='andheri'

--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
update deposit set bname='nehru palace' where cname='mehul'

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
update deposit set amount = 5000.00 where actno between 103 and 107

--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
update deposit set adate='1995-04-01' where cname='anil';

--9. Update the amount of MINU to 10000. (Use Deposit Table)
update deposit set amount=10000.00 where cname='minu';

--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
update deposit set amount=5000.00 , adate='1996-04-01' where cname='pramod'

--Part => B

--1. Give 10% Increment in Loan Amount. (Use Borrow Table)
update borrow set amount=(amount+(amount*10/100))

--2. Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)
update deposit set amount=(amount+(amount*20/100))

--3. Increase Amount by 1000 in all the account. (Use Deposit Table)
update deposit set amount=(amount+1000) 

--4. Update the BORROW table to set the amount to 7000 and the branch name to 'CENTRAL' where the customer
--name is �MEHUL� and the loan number is even.
update borrow set amount=7000 , bname='central' where cname='mehul' and (loanno%2 = 0)

--5. Update the DEPOSIT table to set the date to '2022-05-15' and the amount to 2500 for all accounts in �VRCE�
--and with an account number less than 105.
update deposit set adate='2022-05-15' , amount=2500.00 where actno < 105 and bname='vrce'
