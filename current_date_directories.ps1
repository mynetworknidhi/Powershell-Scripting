$date=Get-Date -Format dd/MM/yyyy;
$date;
New-Item -ItemType Directory -Path "C:\Users\Nidhi.Chaudhary\Desktop\$date";
Move-Item -Path "C:\Users\Nidhi.Chaudhary\Desktop\new_directory" -Destination "C:\Users\Nidhi.Chaudhary\Desktop\$date";
Move-Item -Path "C:\Users\Nidhi.Chaudhary\Desktop\python_files" -Destination "C:\Users\Nidhi.Chaudhary\Desktop\03-02-2020";