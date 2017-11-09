## Using the interpreter

Interpreter session:

```text
$ lua    # command name for the interpreter
Lua 5.2.4  Copyright (C) 1994-2015 Lua.org, PUC-Rio
> i = 0
> while i < 10 do
>> i = i + 3
>> print(i)
>> end
3
6
9
12
```

Executing a script / file:

```text
dofile("my_script.lua")
```


## General syntax

```lua
[[
An example of Lua script
]]

if x == 5 then
  print("This line #1 is executed")
elseif foo then
  a = true  -- an example of a line comment
else
  b = false
end
```


## Loops

The `while` loop:

```lua
i = 1
while i <= 10 do
  i = i + 3
  print(i)
end
```

`repeat` loop: (guaranteed to run the body at least once)

```lua
i = 5
repeat
  i = i - 1
  print(i)
until i == 1
```

`for` loop

```lua
x = 2.1
for i = 1, 10, 2 do
  x = x*i
  print(x)
end
```

General syntax for `for` loop:

```lua
for var = start, limit, step do
  -- code here
end
```

The `break` keyword can be used to exit from loop before the loop finishes.

```lua
while true do  -- loop forever
  if condition then
    -- do something
  else
    break
  end
end
```

Lua does not have `continue` keyword.
FIXME: How to skip certain loop index ?

## Functions

```lua
function foo()
  local x, y = my_func(3,4) -- Call to a function named my_func
  return x + y
end

function my_func(arg1, arg2)
  local ret1 = (arg1 * arg2) ^ 2
  local ret2 = (arg1 - arg2) ^ 2
  return ret1 + ret2, ret1 * ret2
end
```
