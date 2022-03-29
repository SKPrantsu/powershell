$pohiKaust = ".\PS_Demo\"

if (Test-Path -Path $pohiKaust) {
    Write-Host "Kaust on olemas, kustutan"
    Remove-Item $pohiKaust -Force -Recurse
}

New-Item -Path . -Name "PS_Demo" -ItemType "directory"


for ($i = 1; $i -le 3; $i++) {
    $kaustaNimi = "Kaust" + $i
    $praeguneKaust = $pohiKaust + $kaustaNimi
    if (Test-Path -Path $praeguneKaust) {
        Write-Host "Alamkaust $kaustaNimi on olemas"
    }
    else {
        New-Item -Path $praeguneKaust -ItemType "directory"
    }
}

$kaust1FailiNimi = "TypeATest"
$kaust2FailiNimi = "TypeBTest"
$kaust3FailiNimi = "TypeCTest"

for ($i = 1; $i -le 150; $i++) {
    if ($i -ge 10) {
        $index = "0" + $i
    }
    else {
        $index = "00" + $i
    }
    if ($i -ge 100) {
        $index = $i
    }

    
    $loodavKaust1 = $kaust1FailiNimi + $index + ".txt"
    $loodavKaust2 = $kaust2FailiNimi + $index + ".txt"
    $loodavKaust3 = $kaust3FailiNimi + $index + ".txt"

    if ($i -le 50) {
        $sihtkoht = $pohiKaust + "Kaust1\" + $loodavKaust1
        if (Test-Path -Path $sihtkoht) {
            Remove-Item -Path $sihtkoht
        }
        else {
            New-Item -Path $sihtkoht -ItemType "file"
        }
    }
    if (($i -gt 50) -and ($i -le 100)) {
        $sihtkoht = $pohiKaust + "Kaust2\" + $loodavKaust2
        if (Test-Path -Path $sihtkoht) {
            Remove-Item -Path $sihtkoht
        }
        else {
            New-Item -Path $sihtkoht -ItemType "file"
        }   
    }
    if (($i -gt 100) -and ($i -le 150)) {
        $sihtkoht = $pohiKaust + "Kaust3\" + $loodavKaust3
        if (Test-Path -Path $sihtkoht) {
            Remove-Item -Path $sihtkoht
        }
        else {
            New-Item -Path $sihtkoht -ItemType "file"
        }   
    }
}