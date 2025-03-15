class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       for (i,num) in nums.enumerated(){
        for j in (i+1)..<nums.count {
            if num + nums[j] == target {
            return [i,j]
        }
       }  
    } 
    return []
}
}
// removed the .build folder