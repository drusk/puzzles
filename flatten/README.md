From http://problemotd.com/problem/go-deeper/

Given an n-dimensional, integer array, combine all arrays in to one single array.

```
[
  [
    [7,5,3],[52,2]
  ],
  [
    [45,467]
  ]
]

[7,5,3,52,2,45,467]
```

The solution is implemented in Ruby in flatten.rb.  Note that Ruby arrays have a
built-in method called flatten which solves this problem already.  I am purposely
not using that because this is just an exercise.