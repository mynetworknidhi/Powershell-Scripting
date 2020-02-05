$SourceFolder = "C:\Users\Nidhi.Chaudhary\Documents"
$targetFolder = "C:\Users\Nidhi.Chaudhary\Desktop"

# Find all files matching *.sql in the folder specified
Get-ChildItem -Path $SourceFolder -Filter *.docx | ForEach-Object{

    # Combine the source filename and target directory
    # The source filename has all instances of _ replaced with \
    # Cast the resulting string to a FileInfo object to take advantage of extra methods
    [System.IO.FileInfo] $destination = (Join-Path -Path $targetFolder -ChildPath $_.Name.replace("_","\"))
    if (! (Test-Path)$destination.Directory.FullName)
    { 
        New-item -Path $destination.Directory.FullName -ItemType Directory 
    }

    # Copy the source to the target directory
    copy-item -Path $_.FullName -Destination $Destination.FullName 
}