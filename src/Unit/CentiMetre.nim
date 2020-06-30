import types

proc `+`* (value1, value2: cm): cm {.borrow.}

proc `+=`* (value1: var cm, value2: cm) {.borrow.}

proc `-`* (value: cm): cm {.borrow.}

proc `-`* (value1, value2: cm): cm {.borrow.}

proc `-=`* (value1: var cm, value2: cm) {.borrow.}

proc `*`* (value1, value2: cm): cm {.borrow.}

proc `*=`* (value1: var cm, value2: cm) {.borrow.}

proc `/`* (value1, value2: cm): cm {.borrow.}

proc `/=`* (value1: var cm, value2: cm) {.borrow.}

proc `==`* (value1, value2: cm): bool {.borrow.}

proc `$`* (value: cm): string =
  return value.repr & "[cm]"

proc toCentiMetre* (value: int): cm =
  return value.cm

proc toCentiMetre* (value: km): cm =
  return value.cm * 1e5.cm

proc toCentiMetre* (value: m): cm =
  return value.cm * 1e2.cm

proc toCentiMetre* (value: mm): cm =
  return value.cm * 1e-1.cm

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

proc `*=`* [T] (value1: var cm, value2: T) =
  value1 *= toCentiMetre(value2)

proc `/`* [T] (value1: cm, value2: T): cm =
  return value1 / toCentiMetre(value2)

proc `/=`* [T] (value1: var cm, value2: T) =
  value1 /= toCentiMetre(value2)