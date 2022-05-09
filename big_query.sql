---------- Big Query Snippets --------------

--------------------------------------------
-- Drop a partition from a partitioned table
DELETE FROM `project.dataset.table`
WHERE part_date_col = "part_date_val";
