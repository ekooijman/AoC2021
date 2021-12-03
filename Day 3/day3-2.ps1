$inputfile = "input.txt"
$bytelength = 12

$lines = Get-Content $inputfile

$oxy = $lines
$co = $lines


$position = 0

while ($oxy.Count -gt 1) {

  while ($position -lt $bytelength) {
  
    $zerocount = 0
    $onecount = 0
    $zeroarray = @()
    $onearray = @()


    write-host Bit: $position
    Write-Host $oxy

    foreach ($line in $oxy) {
      if ($line.substring($position, 1) -eq 1)  { $onecount += 1; $onearray += $line } else { $zerocount += 1; $zeroarray += $line }
    }
 
    if ($onecount -ge $zerocount) { 
      $oxy = $onearray
    } else { 
        $oxy = $zeroarray
      }
     
    
      if ($oxy.Count -eq 1) { $oxyresult = $oxy[0]}
    
   
    $position += 1
  }

}



$position = 0

while ($co.Count -gt 1) {

  while ($position -lt $bytelength) {
  
    $zerocount = 0
    $onecount = 0
    $zeroarray = @()
    $onearray = @()


    write-host Bit: $position
    write-host $co
    Write-Host $co.Count

    foreach ($line in $co) {
      if ($line.substring($position, 1) -eq 1)  { $onecount += 1; $onearray += $line } else { $zerocount += 1; $zeroarray += $line }
    }
 
    if ($zerocount -gt $onecount) { 
      $co = $onearray
    } else { 
    
        $co = $zeroarray
      }
    
if ($co.Count -eq 1) { $coresult = $co[0]}

    $position += 1
  }

}


write-host Results:
$oxyresult
$coresult

$oxydec = [convert]::ToInt32($oxyresult,2)
$codec = [convert]::ToInt32($coresult,2)

$oxydec * $codec
