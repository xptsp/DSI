#include <Array.au3>
$array = DriveGetDrive("NETWORK");
if isarray($array) then _ArrayDisplay($array)