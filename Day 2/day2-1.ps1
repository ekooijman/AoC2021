$inputfile = "input1.txt"

$lines = Import-Csv $inputfile
$position = 0
$depth = 0


foreach ($line in $lines) {

    switch ($line.Direction) {
        "forward" { 
            $position += $line.Steps
         }
         "up" { 
            $depth -= $line.Steps
         }
         "down" { 
            $depth += $line.Steps
         }
    }

}

write-host "Depth: " $depth
write-host "Position: " $position

$result = $depth * $position

Write-Host "Result: " $result

