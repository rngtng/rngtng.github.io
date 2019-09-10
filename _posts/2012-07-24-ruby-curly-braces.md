---
title: Ruby Curly braces
tags:
- ruby
categories:
- Ruby, Rails & Co.
---

In ruby curly braces have different meanings:
# 1. A hash:

```
my_hash = {:a => 1, :b => 2}
```

or the same but more JSON like syntax ( ruby >= 1.9 only)

```
my_hash = {a:1, b:2}
```

 same as:

```
my_hash = Hash.new
my_hash[:a] = 1
my_hash[:b] = 2
```


# 2. A block:
 in rough and short: a block is a piece of code which will/can be executed either 'later in time' or 'in a different context'

```
3.times do
 puts "HI"
end
```

or

```
3.times {
 puts "HI"
}
```

# especially in one line it reads nice:

```
3.times { puts "HI" }
```

usually blocks have parameters which allows them easily to be identified:

```
  3.times { |index| puts "Loop: #{index}" }
```


oh and here's a third case:
# 3. curly braces us variable within a string_

```
name = "Heinz"
puts "#{name} Ketchup is toll"
```

same as

```
name = "Heinz"
puts name + " Ketchup is toll"
```

I hope this helps to understand. I have to admit, curley braces have lots of different meanings in ruby and are indeed confusing - quite often they are 'shortcuts' to make your code read nice.
