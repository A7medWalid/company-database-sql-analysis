select * from Employee
select * from Works_for
select * from Departments
select * from Project
select * from Dependent

-------------------------------------------------------------------------------------------------------------------

select d.Dnum, e.SSN, e.Fname, e.Lname, CONCAT(Fname,' ',lname) as ManegerName 
from Departments d
Right join Employee e on d.MGRSSN = e.SSN

-------------------------------------------------------------------------------------------------------------------

select Dname, p.Pname 
from Departments d
join Project p on d.Dnum = d.Dnum

-------------------------------------------------------------------------------------------------------------------

select  e.fname,d.*
from Dependent d
left join Employee e on e.SSN = d.ESSN

-------------------------------------------------------------------------------------------------------------------

select Pname,Pnumber,Plocation from Project
where City = 'Cairo' or City = 'Alex'

-------------------------------------------------------------------------------------------------------------------

select * from Project
where Pname like 'a%'

-------------------------------------------------------------------------------------------------------------------

select CONCAT(Fname,' ',lname) as EmployeeName
from Employee e
join Departments d on d.MGRSSN = e.SSN
where Salary between 1000 and 2000
and d.Dnum = 30

-------------------------------------------------------------------------------------------------------------------

select DISTINCT CONCAT(Fname,' ',lname) AS EmployeeName
from Employee e
join Departments d on d.Dnum = e.Dno
join Project p on p.Dnum = d.Dnum
join Works_for w on w.ESSn = e.SSN
where d.Dnum = 10
and w.Hours >= 10
and p.Pname = 'Al Rabwah'

-------------------------------------------------------------------------------------------------------------------

select CONCAT(Fname,' ',lname) AS EmployeeName
from Employee
where Superssn = (select SSN from Employee
where CONCAT(Fname,' ',lname) = 'Kamel Mohamed')

-------------------------------------------------------------------------------------------------------------------

select CONCAT(Fname,' ',lname) AS EmployeeName,p.Pname
from Employee e 
join Departments d on d.Dnum = e.Dno
join Project p on p.Dnum = d.Dnum
order by p.Pname

-------------------------------------------------------------------------------------------------------------------

select p.Pnumber , p.Dnum,d.Dname, e.Lname, e.Address, e.Bdate
from Project p
join Departments d on d.Dnum = p.Dnum
join Employee e on e.SSN = d.MGRSSN
where p.City = 'Cairo'

-------------------------------------------------------------------------------------------------------------------

select e.*,d.Dname,d.[MGRStart Date],p.Pname,p.Plocation
from Employee e
join Departments d on d.MGRSSN = e.SSN
join Project p on p.Dnum = d.Dnum
order by d.Dname

-------------------------------------------------------------------------------------------------------------------

select e.*,D.Dependent_name,D.Sex,D.Bdate
from Employee e
left join Dependent D on D.ESSN = e.SSN


