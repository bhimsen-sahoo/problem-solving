# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def valid_parens?(expression)
  parens_set = { '(' => ')', '{' => '}', '[' => ']' }
  stack = []
  expression.chars.each do |c|
    if parens_set[stack.last] == c
      stack.pop
    else
      stack.push(c)
    end
  end

  stack.empty?
end
