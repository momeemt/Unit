import types

proc `+`* (value1, value2: g): g {.borrow.}

proc `+=`* (value1: var g, value2: g) {.borrow.}

proc `-`* (value: g): g {.borrow.}

proc `-`* (value1, value2: g): g {.borrow.}

proc `-=`* (value1: var g, value2: g) {.borrow.}

proc `*`* (value1, value2: g): g {.borrow.}

proc `*=`* (value1: var g, value2: g) {.borrow.}

proc `/`* (value1, value2: g): g {.borrow.}

proc `/=`* (value1: var g, value2: g) {.borrow.}

proc `==`* (value1, value2: g): bool {.borrow.}

proc `$`* (value: g): string {.borrow.}

proc toGram* (value: kg): g =
  return value.g * 1000.g

proc toGram* (value: mg): g =
  return value.g * 1e-3.g

proc `+`* [T] (value1: g, value2: T): g =
  return value1 + toGram(value2)

proc `+=`* [T] (value1: var g, value2: T) =
  value1 += toGram(value2)

proc `-`* [T] (value1: g, value2: T): g =
  return value1 - toGram(value2)

proc `-=`* [T] (value1: var g, value2: T) =
  value1 -= toGram(value2)

proc `*`* [T] (value1: g, value2: T): g =
  return value1 * toGram(value2)

proc `*=`* [T] (value1: var g, value2: T) =
  value1 *= toGram(value2)

proc `/`* [T] (value1: g, value2: T): g =
  return value1 / toGram(value2)

proc `/=`* [T] (value1: var g, value2: T) =
  value1 /= toGram(value2)