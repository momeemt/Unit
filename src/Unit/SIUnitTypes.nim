import core

proc kg* [T: SomeNumber] (value: T): Unit[ud(kg=1), T] =
  result = Unit[ud(kg=1), T](value: value)

proc s* [T: SomeNumber] (value: T): Unit[ud(s=1), T] =
  result = Unit[ud(s=1), T](value: value)

proc A* [T: SomeNumber] (value: T): Unit[ud(A=1), T] =
  result = Unit[ud(A=1), T](value: value)

proc K* [T: SomeNumber] (value: T): Unit[ud(K=1), T] =
  result = Unit[ud(K=1), T](value: value)

proc mol* [T: SomeNumber] (value: T): Unit[ud(mol=1), T] =
  result = Unit[ud(mol=1), T](value: value)

proc cd* [T: SomeNumber] (value: T): Unit[ud(cd=1), T] =
  result = Unit[ud(cd=1), T](value: value)
