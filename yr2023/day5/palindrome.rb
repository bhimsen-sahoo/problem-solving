# frozen_string_literal: true

# Problem: https://leetcode.com/problems/palindrome-number/

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?

  Integer(String(x).reverse, 10) == x
end
