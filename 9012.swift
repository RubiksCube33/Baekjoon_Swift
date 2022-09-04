import Foundation

let num = Int(readLine()!)!
var ps : String
var leftps : Int = 0
var rightps : Int = 0
var isVPS = true

for _ in 1...num{
  ps = readLine()!
  for i in 0...ps.count-1{
    if(ps[ps.index(ps.startIndex, offsetBy : i)] == "("){
      leftps += 1
    }else{rightps += 1}
    if(rightps > leftps){
      isVPS = false
    }
  }
  
  if((leftps == rightps)&&(isVPS == true)){
    print("YES")
  }else{print("NO")}

  leftps = 0
  rightps = 0
  isVPS = true
}