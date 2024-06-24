--Find the number of days a project will take to complete
SELECT ProjectName, DATEDIFF(day, StartDate, EndDate) AS DurationDays
FROM Project
ORDER BY DurationDays DESC;

---Task uncompleted
SELECT a.ResourceID,t.TaskName,t.EstimatedHours-a.Hours_Worked AS Hours_Diff,COUNT(a.TASKID) AS Uncompleted_Tasks
FROM Assignments a
INNER JOIN Task t ON a.TaskID = t.TASKID
WHERE a.Hours_Worked < t.EstimatedHours
GROUP BY a.ResourceID,t.TaskName,t.EstimatedHours-a.Hours_Worked ;
