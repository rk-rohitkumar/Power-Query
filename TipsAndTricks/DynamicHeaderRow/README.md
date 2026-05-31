# Automatically detect header row



### How it works?

Checks the position of HeaderRow using List.PositionOf function then removes top rows from the table based on that position.



### Limitations:

Headers should always start in a specific column.

First header should be the same.



### How to use it?

1. Create below parameters.
2. Update parameters with values based on your data.
3. Copy custom function in a blank query.
4. Right click on the above query and select 'Create Custom Function'
5. Invoke the custom function on Excel Binary Files.



## Parameters:



"header1" meta \[IsParameterQuery=true, Type="Text", IsParameterQueryRequired=true]

"Data\_" meta \[IsParameterQuery=true, Type="Text", IsParameterQueryRequired=true]

"\~Power Query\\TipsAndTricks\\DynamicHeaderRow" meta \[IsParameterQuery=true, Type="Text", IsParameterQueryRequired=true]



### Custom Function:



let

&#x20;   Source = Excel.Workbook(pExcelBinarySampleFile),

&#x20;   FilteredSheets = Table.SelectRows(Source, each \[Hidden] = false and \[Kind] = "Sheet"),

&#x20;   AddedGetHeaderRow = Table.AddColumn(FilteredSheets, "GetHeaderRow", each List.PositionOf( \[Data]\[Column1], pHeaderName )),

&#x20;   AddedRemovedJunkHeaders = Table.AddColumn( AddedGetHeaderRow, "RemovedJunkHeaders", each Table.Skip( \[Data], \[GetHeaderRow]) ),

&#x20;   AddedPromoteHeaders = Table.AddColumn(AddedRemovedJunkHeaders, "PromoteHeaders", each Table.PromoteHeaders(\[RemovedJunkHeaders], \[PromoteAllScalars=true])),

&#x20;   RemovedOtherColumns = Table.SelectColumns(AddedPromoteHeaders,{"Name", "PromoteHeaders"}),

&#x20;   ColumnNames = Table.ColumnNames( Table.Combine( RemovedOtherColumns\[PromoteHeaders] ) ),

&#x20;   ExpandedPromoteHeaders = Table.ExpandTableColumn(RemovedOtherColumns, "PromoteHeaders", ColumnNames)

in

&#x20;   ExpandedPromoteHeaders

