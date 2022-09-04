import Foundation

let Session = Int(readLine()!)!
var Time = [[Int]]()
var End : Int
var Answer : Int = 0

for _ in 1...Session{
  Time.append(readLine()!.split(separator: " ").map { Int($0)! })
}

Time = Time.sorted(by: {$0[0] < $1[0]})
Time = Time.sorted(by: {($0[0] == $1[0])&&($0[1] < $1[1])})

End = Time[0][1]
Answer += 1

for i in 1...Session-1{
    if(Time[i][0] >= End){
        End = Time[i][1]
        Answer += 1
    }
    else if(Time[i][1] < End){
      End = Time[i][1]
    }
}
print(Answer)