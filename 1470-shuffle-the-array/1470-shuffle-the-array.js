/**
 * @param {number[]} nums
 * @param {number} n
 * @return {number[]}
 */
var shuffle = function(nums, n) {
  const result = [];
  
  let left = 0;
  
  for (let right = n; right < nums.length; right++) {
    result.push(nums[left]);
    left++;
    result.push(nums[right]);
  }
  
  return result;
};