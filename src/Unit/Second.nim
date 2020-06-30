import types

proc `+`* (value1, value2: s): s {.borrow.}

proc `+=`* (value1: var s, value2: s) {.borrow.}

proc `-`* (value: s): s {.borrow.}

proc `-`* (value1, value2: s): s {.borrow.}

proc `-=`* (value1: var s, value2: s) {.borrow.}

proc `*`* (value1, value2: s): s {.borrow.}

proc `*=`* (value1: var s, value2: s) {.borrow.}

proc `/`* (value1, value2: s): s {.borrow.}

proc `/=`* (value1: var s, value2: s) {.borrow.}

proc `==`* (value1, value2: s): bool {.borrow.}

proc toSecond* (value: int): s =
  return value.s

proc toSecond* (value: ms): s =
  return value.s * 1e-3.s

proc `$`* (value: s): string =
  return value.repr & "[s]"

proc `+`* [T] (value1: s, value2: T): s =
  return value1 + toSecond(value2)

proc `+=`* [T] (value1: var s, value2: T) =
  value1 += toSecond(value2)

proc `-`* [T] (value1: s, value2: T): s =
  return value1 - toSecond(value2)

proc `-=`* [T] (value1: var s, value2: T) =
  value1 -= toSecond(value2)

proc `*`* [T] (value1: s, value2: T): s =
  return value1 * toSecond(value2)

proc `*=`* [T] (value1: var s, value2: T) =
  value1 *= toSecond(value2)

proc `/`* [T] (value1: s, value2: T): s =
  return value1 / toSecond(value2)

proc `/=`* [T] (value1: var s, value2: T) =
  value1 /= toSecond(value2)

