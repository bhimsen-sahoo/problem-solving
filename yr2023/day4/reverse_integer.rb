# frozen_string_literal: true

# Problem: https://leetcode.com/problems/reverse-integer/

# @param {Integer} x
# @return {Integer}
def reverse(x)
  reversed_digits = Integer(String(x.abs).reverse, 10)
  reversed = x.negative? ? reversed_digits * -1 : reversed_digits

  return 0 unless -2**31 <= reversed && reversed <= 2**31 - 1

  reversed
end
