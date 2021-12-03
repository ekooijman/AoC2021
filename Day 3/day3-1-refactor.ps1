$inputfile = "input.txt"

$lines = Get-Content $inputfile

$bytelength = 12
$positions = @(0) * $bytelength
$gamma = ""
$epsilon = ""

$count = 0

foreach ($line in $lines) {
  $pos = 0
  while ($pos -lt $bytelength) {
    $positions[$pos] += $line.substring($pos, 1)
    $pos += 1
  }

  $count += 1

}

$halfcount = $count / 2

$pos = 0
while ($pos -lt $bytelength) {
  if ($positions[$pos] -gt $halfcount) { $gamma += "1"; $epsilon += "0" } else { $gamma += "0"; $epsilon += "1" }
  $pos += 1
}

$gammadec = [convert]::ToInt32($gamma, 2)
$epsilondec = [convert]::ToInt32($epsilon, 2)
$result = $gammadec * $epsilondec

$gammadec
$epsilondec
$result




