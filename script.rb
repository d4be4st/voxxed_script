require 'digest'

class Node
  attr_reader :val
  attr_accessor :left, :right

  def initialize(val)
    @val = val
  end

  def ==(other)
    other.val == val
  end

  def inspect
    "val: #{val}, left: #{left && left.val || '-'}, right: #{right && right.val || '-'}"
  end
end

def rebuild(preorder, inorder, leaves)
  root = preorder.first
  root_inorder = inorder.index root
  leaves << root.val if root_inorder == 0
  return root unless root_inorder
  root.left = rebuild(preorder[1, root_inorder], inorder[0...root_inorder], leaves)
  root.right = rebuild(preorder[root_inorder + 1..-1], inorder[root_inorder + 1..-1], leaves)
  root
end

inorder = File.read('inorder.txt').split.map { |v| Node.new v }
preorder = File.read('preorder.txt').split.map { |v| Node.new v }

leaves = []
rebuild(preorder, inorder, leaves)
puts Digest::MD5.hexdigest(leaves.join)
