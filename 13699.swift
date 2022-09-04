import Foundation

var Num : Int = Int(readLine()!)!
var Result : [Int] = [1]
var Temp : Int = 0

if Num == 0{print("1")}
else{
for i in 1...Num{
    for j in 0..<i{
      Temp += (Result[j]*Result[i-j-1])}
    Result.append(Temp)
    Temp = 0
}

print(Result[Num])}