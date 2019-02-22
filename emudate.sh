H=$(date "+%H")
M=$(date "+%M")
S=$(date "+%S")

futureDate=$(gdate -d "$1" "+%m%d$H$M%Y.$S")
result=$(adb shell "su 0 toybox date $futureDate")
echo $result
