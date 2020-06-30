import types

proc `+`* (value1, value2: mm): mm {.borrow.}

proc `+=`* (value1: var mm, value2: mm) {.borrow.}

proc `-`* (value: mm): mm {.borrow.}

proc `-`* (value1, value2: mm): mm {.borrow.}

proc `-=`* (value1: var mm, value2: mm) {.borrow.}

proc `*`* (value1, value2: mm): mm {.borrow.}

proc `*=`* (value1: var mm, value2: mm) {.borrow.}

proc `/`* (value1, value2: mm): mm {.borrow.}

proc `/=`* (value1: var mm, value2: mm) {.borrow.}

proc `==`* (value1, value2: mm): bool {.borrow.}

proc `$`* (value: mm): string =
  return value.repr & "[mm]"

proc toMilliMetre* (value: int): mm =
  return value.mm

proc toMilliMetre* (value: km): mm =
  return value.mm * 1e6.mm

proc toMilliMetre* (value: m): mm =
  return value.mm * 1e3.mm

proc toMilliMetre* (value: cm): mm =
  return value.mm * 1e1.mm

proc `+`* [T] (value1: mm, value2: T): mm =
  return value1 + toMilliMetre(value2)

proc `+=`* [T] (value1: var mm, value2: T) =
  value1 += toMilliMetre(value2)

proc `-`* [T] (value1: mm, value2: T): mm =
  return value1 - toMilliMetre(value2)

proc `-=`* [T] (value1: var mm, value2: T) =
  value1 -= toMilliMetre(value2)

proc `*`* [T] (value1: mm, value2: T): mm =
  return value1 * toMilliMetre(value2)

proc `*=`* [T] (value1: var mm, value2: T) =
  value1 *= toMilliMetre(value2)

proc `/`* [T] (value1: mm, value2: T): mm =
  return value1 / toMilliMetre(value2)

proc `/=`* [T] (value1: var mm, value2: T) =
  value1 /= toMilliMetre(value2)