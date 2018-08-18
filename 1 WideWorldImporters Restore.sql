USE [master]
RESTORE DATABASE [WideWorldImporters] FROM 
DISK = N'M:\SQLData\WideWorldImporters-Full.bak' WITH
MOVE N'WWI_Primary' TO N'M:\SQLData\WideWorldImporters.mdf',  
MOVE N'WWI_UserData' TO N'M:\SQLData\WideWorldImporters_UserData.ndf',  
MOVE N'WWI_Log' TO N'M:\SQLData\WideWorldImporters.ldf',  
MOVE N'WWI_InMemory_Data_1' TO N'M:\SQLData\WideWorldImporters_InMemory_Data_1'
GO