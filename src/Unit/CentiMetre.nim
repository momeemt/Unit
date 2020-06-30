import types

proc `+`* (value1, value2: cm): cm {.borrow.}

proc `+=`* (value1: var cm, value2: cm) {.borrow.}

proc `-`* (value: cm): cm {.borrow.}

proc `-`* (value1, value2: cm): cm {.borrow.}

proc `-=`* (value1: var cm, value2: cm) {.borrow.}

proc `*`* (value1, value2: cm): cm2 {.borrow.}

proc `*`* (value1: cm, value2: float): cm =
  return cm(value1 * value2.cm)

proc `/`* (value1, value2: cm): float {.borrow.}

proc `/`* (value1: cm, value2: float): cm =
  return cm(value1 / value2.cm)

proc `==`* (value1, value2: cm): bool {.borrow.}

proc `$`* (value: cm): string =
  return value.repr & "[cm]"

proc toCentiMetre* (value: int): float =
  return value.float

proc toCentiMetre* (value: km): cm =
  return value.cm * 1e5

proc toCentiMetre* (value: m): cm =
  return value.cm * 1e2

proc toCentiMetre* (value: mm): cm =
  return value.cm * 1e-1

proc `+`* [T] (value1: cm, value2: T): cm =
  return value1 + toCentiMetre(value2)

proc `+=`* [T] (value1: var cm, value2: T) =
  value1 += toCentiMetre(value2)

proc `-`* [T] (value1: cm, value2: T): cm =
  return value1 - toCentiMetre(value2)

proc `-=`* [T] (value1: var cm, value2: T) =
  value1 -= toCentiMetre(value2)

proc `*`* [T] (value1: cm, value2: T): cm =
  return value1 * toCentiMetre(value2)

proc `/`* [T] (value1: cm, value2: T): cm =
  return value1 / toCentiMetre(value2)