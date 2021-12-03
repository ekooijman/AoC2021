$inputfile = "input.txt"

$lines = Get-Content $inputfile
$position1 = 0
$position2 = 0
$position3 = 0
$position4 = 0
$position5 = 0
$position6 = 0
$position7 = 0
$position8 = 0
$position9 = 0
$position10 = 0
$position11 = 0
$position12 = 0

$count = 0



foreach ($line in $lines) {
 
  $position1 += $line.substring(0,1)
  $position2 += $line.substring(1,1)
  $position3 += $line.substring(2,1)
  $position4 += $line.substring(3,1)
  $position5 += $line.substring(4,1)
  $position6 += $line.substring(5,1)
  $position7 += $line.substring(6,1)
  $position8 += $line.substring(7,1)
  $position9 += $line.substring(8,1)
  $position10 += $line.substring(9,1)
  $position11 += $line.substring(10,1)
  $position12 += $line.substring(11,1)
  $count += 1
  
}

$halfcount = $count / 2

if ($position1 -gt $halfcount) { $pos1 = "1"; $pose1 = "0"} else { $pos1 = "0"; $pose1 = "1"}
if ($position2 -gt $halfcount) { $pos2 = "1"; $pose2 = "0"} else { $pos2 = "0"; $pose2 = "1"}
if ($position3 -gt $halfcount) { $pos3 = "1"; $pose3 = "0"} else { $pos3 = "0"; $pose3 = "1"}
if ($position4 -gt $halfcount) { $pos4 = "1"; $pose4 = "0"} else { $pos4 = "0"; $pose4 = "1"}
if ($position5 -gt $halfcount) { $pos5 = "1"; $pose5 = "0"} else { $pos5 = "0"; $pose5 = "1"}
if ($position6 -gt $halfcount) { $pos6 = "1"; $pose6 = "0"} else { $pos6 = "0"; $pose6 = "1"}
if ($position7 -gt $halfcount) { $pos7 = "1"; $pose7 = "0"} else { $pos7 = "0"; $pose7 = "1"}
if ($position8 -gt $halfcount) { $pos8 = "1"; $pose8 = "0"} else { $pos8 = "0"; $pose8 = "1"}
if ($position9 -gt $halfcount) { $pos9 = "1"; $pose9 = "0"} else { $pos9 = "0"; $pose9 = "1"}
if ($position10 -gt $halfcount) { $pos10 = "1"; $pose10 = "0"} else { $pos10 = "0"; $pose10 = "1"}
if ($position11 -gt $halfcount) { $pos11 = "1"; $pose11 = "0"} else { $pos11 = "0"; $pose11 = "1"}
if ($position12 -gt $halfcount) { $pos12 = "1"; $pose12 = "0"} else { $pos12 = "0"; $pose12 = "1"}




$gamma = $pos1 + $pos2 + $pos3 + $pos4 + $pos5 + $pos6 + $pos7 + $pos8 + $pos9 + $pos10 + $pos11 + $pos12
$epsilon = $pose1 + $pose2 + $pose3 + $pose4 + $pose5 + $pose6 + $pose7 + $pose8 + $pose9 + $pose10 + $pose11 + $pose12
$gammadec = [convert]::ToInt32($gamma,2)
$epsilondec = [convert]::ToInt32($epsilon,2)
$gammadec
$epsilondec

$result = $gammadec*$epsilondec

$result




