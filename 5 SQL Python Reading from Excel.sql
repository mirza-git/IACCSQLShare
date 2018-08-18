

execute sp_execute_external_script 
@language = N'Python',
@script = N'
import xlrd
book = xlrd.open_workbook("C:\pytest2.xls")
sheet = book.sheet_by_name("Sheet1")

# Create a For loop to iterate through each row in the XLS file, starting at row 2 to skip the headers
for r in range(1, sheet.nrows):
 product		= sheet.cell(r,0).value
 customer	= sheet.cell(r,1).value
 rep			= sheet.cell(r,2).value
 date		= sheet.cell(r,3).value
 actual		= sheet.cell(r,4).value
 expected	= sheet.cell(r,5).value
 open		= sheet.cell(r,6).value
 closed		= sheet.cell(r,7).value
 city		= sheet.cell(r,8).value
 state		= sheet.cell(r,9).value
 zip			= sheet.cell(r,10).value
 pop			= sheet.cell(r,11).value
 region	= sheet.cell(r,12).value
 # Assign values from each row
 values = (product, customer, rep, date, actual, expected, open, closed, city, state, zip, pop, region)
 print(values)


# Print results


print ("")
print ("All Done!")
print ("")
columns = str(sheet.ncols)
rows = str(sheet.nrows)
#print ("I just imported " %2B columns %2B " columns and " %2B rows %2B " rows to MySQL!")
'

