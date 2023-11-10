# frozen_string_literal: true

# @param {String} word
# @param {Character} ch
# @return {String}
def reverse_prefix(word, ch)
  index = word.index(ch)
  return word unless index

  prefix = word[0..index]
  word.sub(prefix, prefix.reverse)
end
