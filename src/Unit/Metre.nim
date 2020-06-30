import types

proc `+`* (value1, value2: m): m {.borrow.}

proc `+=`* (value1: var m, value2: m) {.borrow.}

proc `-`* (value: m): m {.borrow.}

proc `-`* (value1, value2: m): m {.borrow.}

proc `-=`* (value1: var m, value2: m) {.borrow.}

proc `*`* (value1, value2: m): m {.borrow.}

proc `*=`* (value1: var m, value2: m) {.borrow.}

proc `/`* (value1, value2: m): m {.borrow.}

proc `/=`* (value1: var m, value2: m) {.borrow.}

proc `==`* (value1, value2: m): bool {.borrow.}

proc `$`* (value: m): string =
  return value.repr & "[m]"

proc toMetre* (value: int): m =
  return value.m

proc toMetre* (value: km): m =
  return value.m * 1000.m

proc toMetre* (value: cm): m =
  return value.m * 1e-2.m

proc toMetre* (value: mm): m =
  return value.m * 1e-3.m

proc `+`* [T] (value1: m, value2: T): m =
  return value1 + toMetre(value2)

proc `+=`* [T] (value1: var m, value2: T) =
  value1 += toMetre(value2)

proc `-`* [T] (value1: m, value2: T): m =
  return value1 - toMetre(value2)

proc `-=`* [T] (value1: var m, value2: T) =
  value1 -= toMetre(value2)

proc `*`* [T] (value1: m, value2: T): m =
  return value1 * toMetre(value2)

proc `*=`* [T] (value1: var m, value2: T) =
  value1 *= toMetre(value2)

proc `/`* [T] (value1: m, value2: T): m =
  return value1 / toMetre(value2)

proc `/=`* [T] (value1: var m, value2: T) =
  value1 /= toMetre(value2)