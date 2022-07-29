import core

proc kg* [T: SomeNumber] (value: T): Unit[ud(kg=1), T] =
  result = Unit[ud(kg=1), T](value: value)

template kg* [T: SomeNumber] (v: T, dimension: int): untyped =
  Unit[ud(kg=dimension), T](value: v)

proc s* [T: SomeNumber] (value: T): Unit[ud(s=1), T] =
  result = Unit[ud(s=1), T](value: value)

template s* [T: SomeNumber] (v: T, dimension: int): untyped =
  Unit[ud(s=dimension), T](value: v)

proc A* [T: SomeNumber] (value: T): Unit[ud(A=1), T] =
  result = Unit[ud(A=1), T](value: value)

template A* [T: SomeNumber] (v: T, dimension: int): untyped =
  Unit[ud(A=dimension), T](value: v)

proc K* [T: SomeNumber] (value: T): Unit[ud(K=1), T] =
  result = Unit[ud(K=1), T](value: value)

template K* [T: SomeNumber] (v: T, dimension: int): untyped =
  Unit[ud(K=dimension), T](value: v)

proc mol* [T: SomeNumber] (value: T): Unit[ud(mol=1), T] =
  result = Unit[ud(mol=1), T](value: value)

template mol* [T: SomeNumber] (v: T, dimension: int): untyped =
  Unit[ud(mol=dimension), T](value: v)

proc cd* [T: SomeNumber] (value: T): Unit[ud(cd=1), T] =
  result = Unit[ud(cd=1), T](value: value)

template cd* [T: SomeNumber] (v: T, dimension: int): untyped =
  Unit[ud(cd=dimension), T](value: v)
