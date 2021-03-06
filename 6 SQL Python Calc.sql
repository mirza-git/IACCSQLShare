
USE WideWorldImporters
GO
	

--Executing Python code with Calculations on dataset from a SQL table
execute sp_execute_external_script 
@language = N'Python',
@script = N'
import pandas as pd
from pandas import DataFrame
 
OutputDataSet = pd.DataFrame(InputDataSet.describe())
 
',
@input_data_1 = N'select cast(UnitPrice as float) as UnitPrice, 
Quantity, cast(UnitPrice*Quantity as float) as SalesAmount from  [WideWorldImporters].[Sales].[OrderLines]'
with result sets ((UnitPrice float, Quantity float, 
SalesAmount float))


/*
count
mean
std
min
25%
50%
75%
max
*/



