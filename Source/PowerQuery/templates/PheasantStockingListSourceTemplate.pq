let
  Source = Excel.Workbook(
    File.Contents(
      PheasantStockingListSource
    ), 
    null, 
    true
  ), 
  Data = Source{[Name = "Pheasant_Stocking_List"]}[Data], 
  SetTypes = Table.TransformColumnTypes(
    Data, 
    {
      {"Column1", type text}, 
      {"Column2", type text}, 
      {"Column3", type text}, 
      {"Column4", type text}, 
      {"Column5", type text}, 
      {"Column6", type text}, 
      {"Column7", type text}, 
      {"Column8", type text}, 
      {"Column9", type text}
    }
  ), 
  RemoveTopRow = Table.Skip(SetTypes, 1), 
  PromoteHeaders = Table.PromoteHeaders(RemoveTopRow, [PromoteAllScalars = true]), 
  ChangeTypes = Table.TransformColumnTypes(
    PromoteHeaders, 
    {
      {"Year", Int64.Type}, 
      {"County", type text}, 
      {"Property Name", type text}, 
      {"Stocked by DNR", type text}, 
      {"Stocked by DOC", type text}, 
      {"12PM Closure Area", type text}, 
      {"Hen / Rooster Area", type text}, 
      {"Acres for Hunting", Int64.Type}, 
      {"Stocking Levels", Int64.Type}
    }
  ), 
  RemoveEmptyRow = Table.Skip(ChangeTypes, 1)
in
  RemoveEmptyRow