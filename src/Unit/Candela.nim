import types

proc `+`* (value1, value2: cdr): cdr {.borrow.}

proc `+=`* (value1: var cdr, value2: cdr) {.borrow.}

proc `-`* (value: cdr): cdr {.borrow.}

proc `-`* (value1, value2: cdr): cdr {.borrow.}

proc `-=`* (value1: var cdr, value2: cdr) {.borrow.}

proc `*`* (value1, value2: cdr): cdr {.borrow.}

proc `*=`* (value1: var cdr, value2: cdr) {.borrow.}

proc `/`* (value1, value2: cdr): cdr {.borrow.}

proc `/=`* (value1: var cdr, value2: cdr) {.borrow.}

proc `==`* (value1, value2: cdr): bool {.borrow.}

proc toCandela* (value: int): cdr =
  return value.cdr

proc `$`* (value: cdr): string =
  return value.repr & "[cdr]"

proc `+`* [T] (value1: cdr, value2: T): cdr =
  return value1 + toCandela(value2)

proc `+=`* [T] (value1: var cdr, value2: T) =
  value1 += toCandela(value2)

proc `-`* [T] (value1: cdr, value2: T): cdr =
  return value1 - toCandela(value2)

proc `-=`* [T] (value1: var cdr, value2: T) =
  value1 -= toCandela(value2)

proc `*`* [T] (value1: cdr, value2: T): cdr =
  return value1 * toCandela(value2)

proc `*=`* [T] (value1: var cdr, value2: T) =
  value1 *= toCandela(value2)

proc `/`* [T] (value1: cdr, value2: T): cdr =
  return value1 / toCandela(value2)

proc `/=`* [T] (value1: var cdr, value2: T) =
  value1 /= toCandela(value2)

