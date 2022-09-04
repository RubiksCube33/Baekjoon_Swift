import Foundation

let NumOfPeople = Int(readLine()!)!
var Input = readLine()!.split(separator: " ").map { Int($0)! }
var Answer : Int = 0

Input.sort()

for i in 0...NumOfPeople-1{
  for j in 0...i{
    Answer += Input[j] 
  }
}

print(Answer)