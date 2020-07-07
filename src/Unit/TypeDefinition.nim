import strformat

type
  Si* = enum
    siS = "s",
    siM = "m",
    siKg = "kg",
    siA = "A",
    siK = "K",
    siMol = "mol",
    siCd = "cd"
  
  Unit* = array[Si, int8]

  Quantity*[T: SomeNumber] = object
    quantity: T
    unit: Unit

proc `$`* (unit: Unit): string =
  var denominator, numerator: string
  for unitKind, dimension in unit:
    if dimension == 1:
      denominator.add $unitKind
    elif dimension > 1:
      denominator.add fmt"{unitKind}^{dimension}"
    elif dimension == -1:
      numerator.add $unitKind
    elif dimension < -1:
      numerator.add fmt"{unitKind}^{dimension}"
  result.add denominator
  if numerator.len > 0:
    result.add "/"
    result.add numerator

proc `$`*[T] (quantity: Quantity[T]): string =
  result.add $quantity.quantity
  result.add $quantity.unit

proc `==`* (a,b: Unit): bool =
  for index in Si:
    if a[index] != b[index]:
      return false
  return true

proc `+`*[T] (a,b: Quantity[T]): Quantity[T] =
  if a.unit != b.unit:
    raise newException(ValueError, "Cannot + with different units")
  Quantity[T](
    quantity: a.quantity + b.quantity, 
    unit: a.unit
  )

proc `*`*[T] (a: T, u: Unit): Quantity[T] =
  Quantity[T](quantity: a, unit: u)

proc `+`* (a, b: Unit): Unit = 
  for i in Si:
    result[i] = a[i] + b[i]

proc `-`* (a, b: Unit): Unit = 
  for i in Si:
    result[i] = a[i] - b[i]

proc `*`*[T] (a: T, b: Quantity[T]): Quantity[T] =
  Quantity[T](
    quantity: a * b.quantity, 
    unit: b.unit
  )

proc `*`*[T] (a: Quantity[T], b: T): Quantity[T] =
  Quantity[T](
    quantity: a.quantity * b, 
    unit: a.unit
  )

proc `*`*[T] (a, b: Quantity[T]): Quantity[T] =
  Quantity[T](
    quantity: a.quantity * b.quantity, 
    unit: a.unit + b.unit
  )

proc `/`*[T] (a, b: Quantity[T]): Quantity[T] =
  Quantity[T](
    quantity: a.quantity / b.quantity, 
    unit: a.unit - b.unit
  )