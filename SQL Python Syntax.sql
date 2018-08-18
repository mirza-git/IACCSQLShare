sp_execute_external_script   
    @language = N'language' ,   
    @script = N'script',  
    @input_data_1 = ] 'input_data_1'   
    [ , @input_data_1_name = ] N'input_data_1_name' ]   
    [ , @output_data_1_name = 'output_data_1_name' ]  
    [ , @parallel = 0 | 1 ]  
    [ , @params = ] N'@parameter_name data_type [ OUT | OUTPUT ] [ ,...n ]'  
    [ , @parameter1 = ] 'value1' [ OUT | OUTPUT ] [ ,...n ]  
    [ WITH <execute_option> ]  
[;]  
 
<execute_option>::=  
{  
      { RESULT SETS UNDEFINED }   
    | { RESULT SETS NONE }   
    | { RESULT SETS ( <result_sets_definition> ) }  
}