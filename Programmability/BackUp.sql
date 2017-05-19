/*Creating a backup file for the database*/
BACKUP DATABASE [s17guest35] 
TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSDB440\MSSQL\Backup\s17guest35Backup.Bak' 
WITH NOFORMAT, NOINIT,  NAME = N's17guest35-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
