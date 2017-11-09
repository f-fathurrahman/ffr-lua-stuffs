x = 5

a = {} -- empty table
-- assignment
a[1] = 20
a["foo"] = "Hello foo"
a[x] = "bar"

print( a["foo"] )

-- initializing
b = { key = x, anotherKey = 10 } -- strings as keys
print( b["key"] )
print( b["anotherKey"] )

ibukota = {
  JawaBarat = "Bandung", JawaTengah = "Semarang",
  Riau = "Pekanbaru"
}
print( ibukota["JawaBarat"] )
print( ibukota.Riau )  -- syntactic sugar for string keys

