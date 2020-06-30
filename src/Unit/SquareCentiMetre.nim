include types

# Private
proc `*` (value1, value2: cm2): cm4 {.borrow.}
proc `*` (value1: cm2, value2: cm): cm3 {.borrow.}


# Public
proc `+`* (value1, value2: cm2): cm2 {.borrow.}

proc `+=`* (value1: var cm2, value2: cm2) {.borrow.}

proc `-`* (value: cm2): cm2 {.borrow.}

proc `-`* (value1, value2: cm2): cm2 {.borrow.}

proc `-=`* (value1: var cm2, value2: cm2) {.borrow.}

proc `*`* (value1: cm2, value2: float): cm2 =
  return cm2(value1 * value2.cm2)

proc `/`* (value1, value2: cm2): float {.borrow.}

proc `/`* (value1: cm2, value2: cm): cm {.borrow.}

proc `==`* (value1, value2: cm2): bool {.borrow.}

proc toSquareCentiMetre* (value: int): float =
  return value.float

proc `$`* (value: cm2): string =
  return value.repr & "[cm2]"

proc `+`* [T] (value1: cm2, value2: T): cm2 =
  return value1 + toSquareCentiMetre(value2)

proc `+=`* [T] (value1: var cm2, value2: T) =
  value1 += toSquareCentiMetre(value2)

proc `-`* [T] (value1: cm2, value2: T): cm2 =
  return value1 - toSquareCentiMetre(value2)

proc `-=`* [T] (value1: var cm2, value2: T) =
  value1 -= toSquareCentiMetre(value2)

proc `*`* [T] (value1: cm2, value2: T): cm2 =
  return value1 * toSquareCentiMetre(value2)

proc `/`* [T] (value1: cm2, value2: T): cm2 =
  return value1 / toSquareCentiMetre(value2)

