# frozen_string_literal: true

# Problem: https://leetcode.com/problems/number-of-recent-calls/

class RecentCounter
  def initialize
    @requests = []
  end

  def ping(t)
    @requests << t
    @requests.shift while @requests.first < t - 3000
    @requests.size
  end
end
