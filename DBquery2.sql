Select*
from Task
select * from Project
select* from Resources
select * from Assignments;
---Number of Task per project
select T.ProjectID,COUNT(TASKID) as Total_Task
From Project p Inner join Task T on p.ProjectID=T.ProjectID
Group By T.ProjectID;

-- Find resource available Full time 
select ResourceName, Skill, Availability
From Resources
where Availability= 'Full Time';
-- Update table Project ID. Where project id is 203 to 10000
update Project set Budget=10000 where ProjectID= 203
Select * from Project