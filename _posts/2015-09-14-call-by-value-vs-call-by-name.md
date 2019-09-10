---
title: Call by value vs. Call by name
tags:
- ruby
categories:
- Ruby, Rails & Co.
---

## Call by Value

```ruby
def log(out)
 puts out
 out = 1
 true
end


start = 100
puts start + 10
log(start)
log(start)
log(start.dup)


start = 100
log(start)
puts start + 10
```

## Call by Name

```ruby
def log_a(out)
 puts out.size
 return out << 1
end


start = [100]
puts start.size
start = log_a(start)

start = log_a(start.dup)
start = log_a(start.dup)
if (start.size > 1)
end
```
