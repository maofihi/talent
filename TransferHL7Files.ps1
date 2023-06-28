$sourceFolder = "\\ServerX\Share\HL7Files"
$destinationFolder = "\\ServerY\Share\HL7Files"

$hl7Files = Get-ChildItem -Path $sourceFolder -Filter "*.hl7" -File

foreach ($file in $hl7Files) {
    $destinationPath = Join-Path -Path $destinationFolder -ChildPath $file.Name
    Copy-Item -Path $file.FullName -Destination $destinationPath -Force
}

To schedule the script using Task Scheduler in Windows, you can follow these steps:

    Open Task Scheduler by pressing Win + R on your keyboard, typing taskschd.msc, and hitting Enter.
    In the Task Scheduler window, click on "Create Basic Task" in the Actions pane on the right.
    Give your task a name and optional description, then click "Next."
    Choose the trigger that defines when the task should run (e.g., daily, weekly, at a specific time), and click "Next."
    Select "Start a program" as the action, and click "Next."
    In the "Program/script" field, enter the path to PowerShell: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe.
    In the "Add arguments" field, enter the path to your PowerShell script: -File "C:\Path\To\YourScript.ps1". Make sure to replace the path with the actual location of your script.
    Click "Next" and review your task settings. Click "Finish" to create the task.
    The task is now scheduled, and it will run according to the trigger you set.
