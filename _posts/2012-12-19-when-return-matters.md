---
title: When 'return' matters
tags:
- ruby
categories:
- Ruby, Rails & Co.
---

so `return` actually makes difference in some cases!

```ruby
def mystery_number
  return 23
ensure
  42
end


def mystery_number2
  return 23
ensure
  return 42
end

puts mystery_number  # -> 23
puts mystery_number2 # -> 42
```
