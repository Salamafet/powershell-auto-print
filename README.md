# PowerShell Auto Print

Watch a folder and automatically print file in it.

When file are printed, the file is deleted.

Edit this two firsts line to use this script:
```ps
$printer_name = ""
$monitored_path = "" # Example: "C:\auto-print"
```

`$printer_name` is the printer on which the file will be printed.  
`$monitored_path` is the path to the folder to watch

You can get the actual printers list with the `list` argument.
```shell
./auto-print.ps1 list
```

Maybe in a future I will add a wizard with a config file.
____
Made this script with ❤️ because there is no free solution to do this on internet.  
This script took me literally 40 minutes to create. And today you'll find many solutions, but they're not free.

Please be indulgent, this is the first time I use PowerShell and I haven't used Windows for years.