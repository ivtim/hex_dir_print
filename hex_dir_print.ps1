 $files = Get-ChildItem ".\" –Recurse;
foreach ($f in $files) {
 if (!$f.PSIsContainer) {
  $current_hash = (Get-FileHash  $f.FullName).Hash;
  Write-Output ($current_hash + " | " + $f.FullName)
 }
}
