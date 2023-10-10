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
