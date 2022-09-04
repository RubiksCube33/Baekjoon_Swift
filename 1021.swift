import Foundation

let input = readLine()!.split(separator: " ")
var findinglist = readLine()!.split(separator: " ")
var move : Int = 0
var leftcount = 0
var rightcount = 0
var queue : [Int] = []
var findingresult = 0

func moveLeft(){
    queue.append(queue.removeFirst())
    leftcount+=1
}
func moveRight(){
    queue.insert(queue.removeLast(), at: 0)
    rightcount+=1
}

for i in 1...Int(input[0])!{
    queue.append(i)
}
func pop(){
    queue.removeFirst()
}

while(findingresult < Int(input[1])!){
    if((Int(findinglist[findingresult])!) == queue[0]){
        pop()
        findingresult += 1
    }
    else{
        while(queue[0] != Int(findinglist[findingresult])!){
            moveLeft()
        }
        for _ in 1...leftcount{
            moveRight()
            rightcount -= 1
        }
        while(queue[0] != Int(findinglist[findingresult])!){
            moveRight()
        }
        pop()
        if(leftcount < rightcount){
            move += leftcount
            findingresult += 1
        }
        else{move += rightcount
            findingresult += 1
        }
        
        leftcount = 0
        rightcount = 0
    }
}

print(move)