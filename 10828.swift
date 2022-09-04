import Foundation

struct Stack<T>{
  private var stack: [Int] = []

  public var count: Int{
    return stack.count
  }
  public var isEmpty: Bool{
    return stack.isEmpty
  }

  public mutating func push(_ element: Int){
  stack.append(element)
  }

  public mutating func pop() -> Int{
    return stack.popLast()!
  }

  public mutating func top() -> Int{
    return stack[stack.count-1]
  }
  
}

var numStack = Stack<Int>()

var length = Int(readLine()!)!

var input : [String.SubSequence]

for _ in 1...length{
  input = readLine()!.split(separator:" ")

  switch input[0]{
    case "push":
    numStack.push(Int(input[1])!)
    break
    
    case "pop":
    if(numStack.count >= 1){print(numStack.pop())}
    else{print(-1)}
    break

    case "size":
    print(numStack.count)
    break

    case "empty":
    if(numStack.count < 1){print(1)}
    else{print(0)}
    break

    case "top":
    if(numStack.count >= 1){print(numStack.top())}
    else{print(-1)}
    break

    default:
    break
  }
}