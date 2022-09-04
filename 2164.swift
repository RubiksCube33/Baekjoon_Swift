import Foundation

let input = Int(readLine()!)!
var queue : [Int] = []
var head : Int = 0

for i in 1...input{
    queue.append(i)
}

func cardChange(){
    if(queue.count-head==1){
        print(queue[head])
        return
    }
    head += 1
    if(queue.count-head==1){
        print(queue[head])
        return
    }
    queue.append(queue[head])
    head += 1
}

while(queue.count-head > 1){
    cardChange()
}

if(queue.count==1){
    print(1)
}
