$inputfile = "input1.txt"

$lines = Import-Csv $inputfile
$position = 0
$depth = 0
$aim = 0


foreach ($line in $lines) {

    switch ($line.Direction) {
        "forward" { 
            $position += $line.Steps
            $depth += $aim * $line.Steps
         }
         "up" { 
            $aim -= $line.Steps
         }
         "down" { 
            $aim += $line.Steps
         }
    }

}

write-host "Depth: " $depth
write-host "Position: " $position

$result = $depth * $position

Write-Host "Result: " $result

