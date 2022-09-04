import Foundation

let Kilogram = Int(readLine()!)!
var quotient_3 : Int
var quotient_5 : Int
var remainder : Int
var sum : Int = -1

quotient_5 = Int(Kilogram / 5)

for i in (0...quotient_5).reversed(){
  remainder = Kilogram - (i * 5)
  if((remainder % 3) == 0){
    sum = Int(remainder / 3) + i
    break;
  }
}

print(sum)