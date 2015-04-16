#!/usr/bin/env ruby

require_relative 'lib/linked_list'

payloads = ARGV # ARGV holds the command line arguments that were passed in

# Now, build a LinkedList
ll = LinkedList.new

# And, populate it
#
# Attempt 1
# if payloads.size > 0
#   ll.push payloads[0]
# end
# if payloads.size > 1
#   ll.push payloads[1]
# end
# if payloads.size > 2
#   ll.push payloads[2]
# end
# Refactor 1:
# payloads.size.times do |i| # i from 0 to (payloads.size - 1)
#   ll.push payloads[i]
# end
#
# Refactor 2:
payloads.each do |payload|
  ll.push payload
end

# Then, print it out

# print ll ?
# loop through each linkedlist value and format a string ?
# if we have an empty list, return the * -> nil ?

# Attempt 1:
# if payloads.size > 2
#   print "* -> #{ll.get(0).inspect} -> #{ll.get(1).inspect} -> #{ll.get(2).inspect} -> nil"
# elsif payloads.size > 1
#   print "* -> #{ll.get(0).inspect} -> #{ll.get(1).inspect} -> nil"
# elsif payloads.size > 0
#   print "* -> #{ll.get(0).inspect} -> nil"
# else
#   print "* -> nil"
# end

# Refactor 1:
# print "* -> "
# if payloads.size > 2
#   print "#{ll.get(0).inspect} -> #{ll.get(1).inspect} -> #{ll.get(2).inspect} -> "
# elsif payloads.size > 1
#   print "#{ll.get(0).inspect} -> #{ll.get(1).inspect} -> "
# elsif payloads.size > 0
#   print "#{ll.get(0).inspect} -> "
# end
# print "nil"

# Refactor 2
# print "* -> "

# if payloads.size > 0
#   print "#{ll.get(0).inspect} -> "
# end

# if payloads.size > 1
#   print "#{ll.get(1).inspect} -> "
# end

# if payloads.size > 2
#   print "#{ll.get(2).inspect} -> "
# end

# print "nil"

# Refactor 3
#
print "* -> "

payloads.size.times do |i|
  print "#{ll.get(i).inspect} -> "
end

print "nil"

# Final Version:
#
# print "* -> "

# ll.size.times do |i|
#   print "#{ll.get(i).inspect} -> "
# end

# print "nil"
