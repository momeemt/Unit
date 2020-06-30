import types

proc `+`* (value1, value2: cdl): cdl {.borrow.}

proc `+=`* (value1: var cdl, value2: cdl) {.borrow.}

proc `-`* (value: cdl): cdl {.borrow.}

proc `-`* (value1, value2: cdl): cdl {.borrow.}

proc `-=`* (value1: var cdl, value2: cdl) {.borrow.}

proc `*`* (value1, value2: cdl): cdl {.borrow.}

proc `*=`* (value1: var cdl, value2: cdl) {.borrow.}

proc `/`* (value1, value2: cdl): cdl {.borrow.}

proc `/=`* (value1: var cdl, value2: cdl) {.borrow.}

proc `==`* (value1, value2: cdl): bool {.borrow.}

proc toCandela* (value: int): cdl =
  return value.cdl

proc `$`* (value: cdl): string =
  return value.repr & "[cdl]"

proc `+`* [T] (value1: cdl, value2: T): cdl =
  return value1 + toCandela(value2)

proc `+=`* [T] (value1: var cdl, value2: T) =
  value1 += toCandela(value2)

proc `-`* [T] (value1: cdl, value2: T): cdl =
  return value1 - toCandela(value2)

proc `-=`* [T] (value1: var cdl, value2: T) =
  value1 -= toCandela(value2)

proc `*`* [T] (value1: cdl, value2: T): cdl =
  return value1 * toCandela(value2)

proc `*=`* [T] (value1: var cdl, value2: T) =
  value1 *= toCandela(value2)

proc `/`* [T] (value1: cdl, value2: T): cdl =
  return value1 / toCandela(value2)

proc `/=`* [T] (value1: var cdl, value2: T) =
  value1 /= toCandela(value2)

