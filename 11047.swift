import Foundation

let Input = readLine()!.split(separator: " ").map { Int($0)! }
let Coin : Int = Int(Input[0])
var Money : Int = Int(Input[1])

var Answer : Int = 0
var Coinlist : [Int] = []

for _ in 0...(Coin-1){
  Coinlist.append(Int(readLine()!)!)
}

for i in (0...(Coin-1)).reversed(){
  Answer += Int(Money / Coinlist[i])
  Money = Int(Money % Coinlist[i])
}

print(Answer)