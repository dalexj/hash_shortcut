## hash_shortcut

This gem adds in a `to_proc` method to arrays for the purpose of accessing hash values through a block shortcut, very similar to the `&:symbol` implementation

## Download

```shell
gem install hash_shortcut
```

## Examples

```ruby
data = [{ a: 3 }, { a: 2 }, { a: 4 }]

# plain ruby
data.map { |obj| obj[:a] }

# with hash_shortcut
data.map &[:a]

# => [3, 2, 4]
```
