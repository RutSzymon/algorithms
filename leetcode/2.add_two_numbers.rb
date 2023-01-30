# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end

def add_two_numbers(l1, l2)
  sum = list_to_s(l1).to_i + list_to_s(l2).to_i
  string_to_list_node(sum.to_s.reverse)
end

def list_to_s(list)
  string_number = list.val.to_s
  string_number.prepend(list_to_s(list.next)) if list.next
  string_number
end

def string_to_list_node(string_number, index = 0)
  node = ListNode.new(string_number[index])
  node.next = string_to_list_node(string_number, index + 1) if string_number[index + 1]
  node
end
