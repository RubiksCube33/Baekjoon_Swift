import Foundation

var result : Int
var quantity = Int(readLine()!)!
var nums = readLine()!.components(separatedBy: " ").map {Int($0)!}

nums.sort()
nums.sort(by: <)
nums = nums.sorted(by: <)

result = nums[0] * nums[quantity-1]

print(result)