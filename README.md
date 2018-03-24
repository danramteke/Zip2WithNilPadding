# Zip2WithNilPadding

An implementation of `Zip2` for different length Sequences, that fills the missing entries with `nil`.

Updated for Swift 4, based on a solution in this StackOverflow thread: https://stackoverflow.com/questions/25153477/in-swift-i-would-like-to-join-two-sequences-in-to-a-sequence-of-tuples

# Example

```
let first: [String] = ["a", "b", "c", "d"]
let second: [Int] = [1, 2]
let actual = Array(Zip2WithNilPadding(first, second))

# [(Optional("a"), Optional(1)), (Optional("b"), Optional(2)), (Optional("c"), Optional(3))]


```

# License

MIT License
