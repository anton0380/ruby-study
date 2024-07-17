# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
  
  def to_s
    res = @val.to_s
    res += ", #{@next.to_s}" unless @next.nil?
    res
  end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  result = ListNode.new(0)
  current = result
  loop do
    val1 = list1&.val
    val2 = list2&.val
    break if val1.nil? && val2.nil?

    first = val2.nil? || !val1.nil? && val1 < val2
    if first
      current.next = ListNode.new(val1)
      current = current.next
      list1 = list1.next
      next
    end
    current.next = ListNode.new(val2)
    current = current.next
    list2 = list2.next
  end
  result.next
end

# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]
list1 = ListNode.new(1, ListNode.new(2, ListNode.new(4)))
list2 = ListNode.new(1, ListNode.new(3, ListNode.new(4)))
puts merge_two_lists(list1, list2)
# Input: list1 = [], list2 = []
# Output: []
# Input: list1 = [], list2 = [0]
# Output: [0]
