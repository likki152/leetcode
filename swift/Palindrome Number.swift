//class Solution {
//    func isPalindrome(_ x: Int) -> Bool {
//        let str = String(x) // conver the int to string so that we can reverse it
//        return str == String(str.reversed()) // convert back to the string as str.reversed is not a string it is a collection of the string. 
//    }
//}


// 2nd solution  
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
  var num = x
  var reversed = 0 
if x < 0 || (x%10  == 0 && x != 0){ return false }
  while num > reversed {
    reversed = reversed * 10 + num % 10 
    num  = num/10
  } 

  return num == reversed || num == reversed/10
    }
}


// The first solution converts the number to string and reverses it which takes O(n) time and O(n) space complexity
// where n is the number of digits in the input number. It also requires additional memory for string conversion.
// 
// The second solution is more efficient as it only reverses half of the number and compares it with the other half.
// It has O(log n) time complexity where n is the input number since we're dividing by 10 in each iteration.
// Space complexity is O(1) as we only use a few variables regardless of input size.
// This approach avoids string conversion and handles edge cases like negative numbers and numbers ending with 0.