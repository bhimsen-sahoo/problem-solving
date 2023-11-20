# frozen_string_literal: true

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?

  Integer(String(x).reverse, 10) == x
end
