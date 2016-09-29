Given a binary tree:
        2
       / \
      /   \
     /     \
    1       3
   / \     / \
  0   7   9   1
 /   / \     / \
11  13  10  8   4
       /
      12

There are couple of algorithms for traversal. We will consider only depth-first.
By using depth-first traversal, we might opt in for pre-order or in-order. Also,
we can choose to left-to-right or right-to-left traversal.

If we choose pre-order left-to-right depth-first traversal order of visited nodes is:
2 1 0 11 7 13 10 12 3 9 1 8 4

If we choose in-order left-to-right depth-first traversal order of visited nodes is:
11 0 1 13 7 12 10 2 9 3 8 1 4

It is possible to reconstruct same tree based on these two sequences.


In assignment, there are two input files, named `preorder.txt` and `inorder.txt`.
Your job is to reconstruct tree used to generate those values. Once tree is
reconstructed, take all leaf nodes (nodes that have no children) ordered
from left to right, concatenate them all in one string (without blank spaces)
and calculate md5 sum of that string. That is the solution.

In given example, leaf nodes would be:
11 13 12 9 8 4

Concatenated string would be "111312984" and md5 sum "004c0b214b7b88203f33cdf32141a969".

Submit your solution to: www.sevenbridges.com/vdb16/ch2?entry.1154285018=bqypSBGtlic
