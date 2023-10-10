# DNR Property Data

> **Source:** <https://apps.dnr.wi.gov/pheasantstocking/Index.aspx>

## Contents

<!-- TOC -->

- [Contents](#contents)
- [Data Extraction](#data-extraction)
- [Dataset](#dataset)

<!-- /TOC -->

## Data Extraction

For convenience and reproducibility, I have created a PowerShell Script to automate the download process.

- [Get-PheasantStockingData.ps1]("./../../data/scripts/Get-PheasantStockingData.ps1):

<details><summary>View Code</summary><p>

```powershell
<#
    .SYNOPSIS
        This script automates the workflow involved with extracting and downloading the DNR Pheasant Stocking Dataset.
    .NOTES
        Note that this script depends on the Internet Explorer Type COM Object Library `InternetExplorer.Application`
        to automate both the clicking of the "Search" button and in turn calling the `ASP.NET` JavaScript callback
        function involved with downloading the Excel workbook for the table.
#>

$URL = 'https://apps.dnr.wi.gov/pheasantstocking/Index.aspx'

$ie = New-Object -ComObject 'InternetExplorer.Application'
$ie.visible = $true
$ie.navigate($URL)

$doc = $ie.Document

$search = $doc.getElementsByTagName('input') | Where-Object { $_.name -eq "btnSearch" }
$search.click()

$download = $doc.getElementsByTagName('a') | Where-Object { $_.href -eq "javascript:__doPostBack('lnkExport','')" }
$download.click()

# Quit and Cleanup
$ie.Quit()
$ie.Stop()
$ie = $null

# Garbage collection
[gc]::collect()
[gc]::WaitForPendingFinalizers()
```

</p></details>


## Dataset

| Year | County      | Property  Name                                        | Stocked  by DNR | Stocked  by DOC | 12PM  Closure Area | Hen  / Rooster Area | Acres  for Hunting | Stocking Levels |
| ---- | ----------- | ----------------------------------------------------- | --------------- | --------------- | ------------------ | ------------------- | ------------------ | --------------- |
| 2023 | Monroe      | Tri-Creek Watershed                                   | Yes             | No              | No                 | No                  | 750                | 300             |
| 2023 | Rock        | Footville Wildlife Area                               | Yes             | No              | No                 | No                  | 4741               | 2000            |
| 2023 | Sauk        | Sauk Prairie Recreation Area                          | Yes             | No              | No                 | No                  | 1000               | 640             |
| 2023 | Waukesha    | Kettle Moraine State Forest-Southern Unit             | Yes             | No              | No                 | Yes                 | 5000               | 3340            |
| 2023 | Monroe      | Sand Creek Fishery Area-Monroe Co.                    | Yes             | No              | No                 | Yes                 | 450                | 220             |
| 2023 | Fond Du Lac | Mullet Creek Wildlife Area                            | Yes             | No              | No                 | No                  | 650                | 500             |
| 2023 | Jefferson   | Princes Point Wildlife Area                           | Yes             | No              | No                 | No                  | 1550               | 500             |
| 2023 | Dodge       | Shaw Marsh Wildlife Area                              | Yes             | No              | No                 | No                  | 350                | 240             |
| 2023 | Jefferson   | Rome Pond Wildlife Area                               | Yes             | No              | No                 | No                  | 1000               | 440             |
| 2023 | Trempealeau | Lakes Coulee Wildlife Area                            | Yes             | No              | No                 | No                  |                    | 200             |
| 2023 | Green       | Cadiz Springs State Recreation Area                   | Yes             | No              | No                 | No                  | 0                  | 0               |
| 2023 | Chippewa    | Tom Lawin Wildlife Area                               | Yes             | No              | No                 | No                  | 1500               | 1180            |
| 2023 | Walworth    | Troy Wildlife Area - Lauderdale Hwy A                 | Yes             | No              | No                 | No                  | 200                | 120             |
| 2023 | Dane        | Brooklyn Wildlife Area                                | No              | No              | No                 | No                  | 3500               | 2380            |
| 2023 | Columbia    | French Creek Wildlife Area                            | Yes             | No              | No                 | No                  | 1600               | 740             |
| 2023 | Kewaunee    | Brusky Wildlife Area                                  | No              | Yes             | No                 | No                  | 70                 | 60              |
| 2023 | Oconto      | Wisconsin Waterfowl Association                       | No              | Yes             | No                 | Yes                 | 152                |                 |
| 2023 | Door        | Gardner Swamp Wildlife Area                           | No              | Yes             | No                 | No                  | 200                | 40              |
| 2023 | Calumet     | Brillion Wildlife Area                                | Yes             | No              | No                 | No                  | 1300               | 400             |
| 2023 | Green       | Liberty Creek Wildlife Area                           | No              | No              | No                 | No                  | 0                  | 0               |
| 2023 | Dane        | Lodi Marsh Wildlife Area                              | Yes             | No              | No                 | No                  | 1140               | 600             |
| 2023 | Jackson     | South Beaver Creek Wildlife Area                      | Yes             | No              | No                 | No                  | 500                | 200             |
| 2023 | Grant       | Boscobel Unit                                         | Yes             | No              | No                 | Yes                 | 1600               | 880             |
| 2023 | Shawano     | Beilfuss Unit                                         | No              | Yes             | No                 | No                  | 120                | 20              |
| 2023 | Rock        | Avon Bottoms Wildlife Area                            | Yes             | No              | No                 | No                  | 2000               | 1100            |
| 2023 | Crawford    | Kickapoo Wildlife Area                                | Yes             | No              | No                 | No                  | 1300               | 500             |
| 2023 | Sheboygan   | Nichols Creek Wildlife Area                           | Yes             | No              | No                 | No                  | 210                | 300             |
| 2023 | Sheboygan   | Adell Wildlife Area                                   | Yes             | No              | No                 | No                  | 40                 | 200             |
| 2023 | Waukesha    | Paradise Valley Wildlife Area                         | Yes             | No              | No                 | No                  | 275                | 340             |
| 2023 | Rock        | Lima Marsh - Storrs Lake Wildlife Area                | Yes             | No              | No                 | No                  | 895                | 1000            |
| 2023 | Jackson     | Northfield Fishery Area                               | Yes             | No              | No                 | No                  | 475                | 220             |
| 2023 | Calumet     | Killsnake Wildlife Area                               | Yes             | No              | No                 | No                  | 2000               | 1120            |
| 2023 | Columbia    | Paradise Marsh Wildlife Area                          | Yes             | No              | No                 | No                  | 1000               | 300             |
| 2023 | Shawano     | Navarino Wildlife Area                                | Yes             | No              | No                 | No                  | 500                | 140             |
| 2023 | Sheboygan   | Kettle Moraine State Forest-Northern Unit-Iansr       | Yes             | No              | No                 | No                  | 5200               | 2740            |
| 2023 | Oconto      | Green Bay West Shores Wildlife Area                   | No              | Yes             | No                 | Yes                 | 140                |                 |
| 2023 | Dane        | Deansville Wildlife Area                              | Yes             | No              | No                 | No                  | 1668               | 860             |
| 2023 | Dunn        | Gilbert Creek Fishery Area                            | No              | Yes             | No                 | No                  | 120                | 40              |
| 2023 | Walworth    | Bloomfield Wildlife Area - Brever And Litchfield Road | Yes             | No              | No                 | No                  | 400                | 240             |
| 2023 | Racine      | Hoosier Creek Habitat Area                            | Yes             | No              | No                 | No                  | 115                | 100             |
| 2023 | Vernon      | Kickapoo Valley Reserve State Natural Area            | Yes             | No              | No                 | Yes                 | 7000               | 2380            |
| 2023 | Sheboygan   | Sheboygan Marsh Wildlife Area                         | Yes             | No              | No                 | No                  | 700                | 720             |
| 2023 | Lafayette   | Yellowstone Wildlife Area                             | Yes             | Yes             | No                 | No                  | 2000               | 1600            |
| 2023 | Trempealeau | Tamarack Creek Wildlife Area                          | No              | No              | No                 | No                  |                    | 100             |
| 2023 | Jefferson   | Jefferson Marsh State Wildlife And Natural Area       | Yes             | No              | No                 | No                  | 3700               | 1600            |
| 2023 | Green       | Albany Wildlife Area                                  | Yes             | No              | No                 | No                  | 1000               | 1100            |
| 2023 | Winnebago   | Glacial Habitat Restoration Area                      | Yes             | No              | No                 | No                  | 1500               | 770             |
| 2023 | Rock        | Evansville Wildlife Area                              | Yes             | No              | No                 | No                  | 900                | 2000            |
| 2023 | Jefferson   | Lake Mills Wildlife Area                              | Yes             | No              | No                 | No                  | 2950               | 1300            |
| 2023 | Iowa        | Blackhawk Lake Wildlife Area                          | Yes             | No              | No                 | No                  | 1450               | 420             |
| 2023 | Walworth    | Kmsu                                                  | Yes             | No              | No                 | No                  | 640                | 400             |
| 2023 | Chippewa    | Hallie Marsh Wildlife Area                            | Yes             | No              | No                 | No                  |                    | 280             |
| 2023 | Dane        | Dorn Creek Fishery Area                               | Yes             | No              | No                 | No                  | 300                | 140             |
| 2023 | Richland    | Willow Creek Fishery Area                             | Yes             | No              | No                 | No                  | 300                | 160             |
| 2023 | Columbia    | Grassy Lake Wildlife Area                             | Yes             | No              | No                 | No                  | 300                | 140             |
| 2023 | Dodge       | Glacial Habitat Restoration Area                      | Yes             | No              | No                 | No                  | 398                | 180             |
| 2023 | Waukesha    | Oconomowoc Fish And Wildlife Habitat Area             | No              | Yes             | No                 | No                  | 120                | 80              |
| 2023 | Dunn        | Big Beaver Creek Meadow State Natural Area            | No              | Yes             | No                 | No                  | 450                | 40              |
| 2023 | Richland    | Richwood Unit                                         | Yes             | No              | No                 | No                  | 320                | 220             |
| 2023 | Dane        | Badfish Creek Wildlife Area                           | Yes             | No              | No                 | No                  | 1980               | 1200            |
| 2023 | Walworth    | Honey Creek Stream Bank Protection Area               | Yes             | No              | No                 | No                  | 490                | 300             |
| 2023 | Columbia    | Peter Helland Wildlife Area                           | Yes             | No              | No                 | No                  | 1600               | 500             |
| 2023 | Marathon    | Mc Millan Wildlife Area                               | Yes             | No              | No                 | No                  | 475                | 180             |
| 2023 | Trempealeau | Borst Valley Wildlife Area                            | Yes             | No              | No                 | No                  |                    | 160             |
| 2023 | Iowa        | Avoca Unit                                            | Yes             | Yes             | No                 | Yes                 | 2000               | 1550            |
| 2023 | Racine      | Honey Creek Wildlife Area                             | Yes             | No              | No                 | No                  | 1000               | 640             |
| 2023 | Jefferson   | Waterloo Wildlife Area                                | Yes             | No              | No                 | No                  | 6760               | 2780            |
| 2023 | Dane        | Hook Lake/Grass Lake Wildlife And Natural Area        | Yes             | No              | No                 | No                  | 600                | 380             |
| 2023 | Dodge       | Theresa Wildlife Area                                 | Yes             | No              | Yes                | No                  | 2500               | 1600            |
| 2023 | Columbia    | Pine Island Wildlife Area                             | Yes             | No              | Yes                | No                  | 2000               | 1600            |
| 2023 | Waukesha    | Vernon Wildlife Area                                  | Yes             | No              | Yes                | Yes                 | 1500               | 920             |
| 2023 | Dunn        | Dunnville Wildlife Area                               | Yes             | Yes             | Yes                | No                  | 1500               | 800             |
| 2023 | Dane        | Mazomanie Wildlife Area                               | Yes             | No              | Yes                | No                  | 3600               | 1860            |
| 2023 | Dodge       | Statewide Wildlife Habitat - Dodge                    | Yes             | Yes             | Yes                | No                  | 230                | 100             |
| 2023 | Kewaunee    | C.D. (Buzz) Besadny Fish And Wildlife Area            | Yes             | Yes             | Yes                | Yes                 | 750                | 420             |
| 2023 | Washington  | Allenton Marsh Wildlife Area                          | Yes             | No              | Yes                | No                  | 900                | 800             |
| 2023 | Fond Du Lac | Eldorado Wildlife Area                                | Yes             | No              | Yes                | No                  | 2800               | 1640            |
| 2023 | Green Lake  | White River Marsh Wildlife Area                       | Yes             | No              | Yes                | No                  | 3100               | 1560            |
| 2023 | Green Lake  | Grand River Marsh Wildlife Area                       | Yes             | No              | Yes                | No                  | 1400               | 1100            |
| 2023 | Dane        | Goose Lake Wildlife Area                              | Yes             | No              | Yes                | No                  | 1450               | 960             |
| 2023 | Washington  | Jackson Marsh Wildlife Area                           | Yes             | No              | Yes                | No                  | 1100               | 1000            |
| 2023 | Kenosha     | Richard Bong State Recreation Area                    | Yes             | No              | 2PM Closure        | Yes                 | 3600               | 11000           |
| 2023 | Dodge       | Horicon Wildlife Area                                 | Yes             | No              | Yes                | No                  | 1000               | 1300            |
| 2023 | Dane        | Brooklyn Wildlife Area                                | Yes             | No              | Yes                | No                  | 3500               | 2380            |
| 2023 | Dodge       | Mud Lake Wildlife Area-Dodge                          | Yes             | No              | Yes                | No                  | 750                | 700             |
| 2023 | Columbia    | Mud Lake Wildlife Area-Columbia                       | Yes             | No              | Yes                | No                  | 1300               | 780             |
| 2023 | Racine      | Tichigan Wildlife Area                                | Yes             | No              | Yes                | No                  | 1000               | 680             |
| 2023 | Brown       | Holland Wildlife Area                                 | Yes             | No              | Yes                | No                  | 215                | 220             |
| 2023 | Kenosha     | New Munster Wildlife Area                             | Yes             | No              | Yes                | No                  | 1250               | 780             |
