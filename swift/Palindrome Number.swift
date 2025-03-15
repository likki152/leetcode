class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let str = String(x) // conver the int to string so that we can reverse it
        return str == String(str.reversed()) // convert back to the string as str.reversed is not a string it is a collection of the string. 
    }
}