insert into activitytype (activitytypeid, name, sysname) values
(1, 'Meeting', 'MeetingSys'),
(2, 'Training', 'TrainingSys'),
(3, 'Workshop', 'WorkshopSys');

insert into area (areaid, name) values
(1, 'Marketing'),
(2, 'Finance'),
(3, 'Human Resources');

insert into activity (activityid, activitytypeid, code, name, parentid) values
(1, 1, 'M101', 'Team Meeting', NULL),
(2, 2, 'T201', 'Financial Training', 1),
(3, 1, 'M102', 'Marketing Workshop', 1);

insert into contract (contractid, areaid) values
(1, 1),
(2, 2),
(3, 3);

insert into program (programid, indexnum, yearstart, yearfinish) values
(1, 10, 2023, 2025),
(2, 20, 2024, 2026),
(3, 30, 2025, 2027);

insert into point (pointid, plandate, factdate) values
(1, '2023-10-01', '2023-10-05'),
(2, '2023-11-15', '2023-11-20'),
(3, '2023-12-20', '2023-12-25');

insert into subprogram (subprogramid, indexnum) values
(1, 5),
(2, 10);

insert into project (projectid, targetdescr) values
(1, 'Marketing Campaign Project'),
(2, 'Financial Analysis Project');
