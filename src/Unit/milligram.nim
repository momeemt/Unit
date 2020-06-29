import types

proc `+`* (value1, value2: mg): mg {.borrow.}

proc `+=`* (value1: var mg, value2: mg) {.borrow.}

proc `-`* (value: mg): mg {.borrow.}

proc `-`* (value1, value2: mg): mg {.borrow.}

proc `-=`* (value1: var mg, value2: mg) {.borrow.}

proc `*`* (value1, value2: mg): mg {.borrow.}

proc `*=`* (value1: var mg, value2: mg) {.borrow.}

proc `/`* (value1, value2: mg): mg {.borrow.}

proc `/=`* (value1: var mg, value2: mg) {.borrow.}

proc `==`* (value1, value2: mg): bool {.borrow.}

proc `$`* (value: mg): string {.borrow.}

proc toMilliGram* (value: g): mg =
  return value.mg * 1e3.mg

proc toMilliGram* (value: kg): mg =
  return value.mg * 1e6.mg

proc `+`* [T] (value1: mg, value2: T): mg =
  return value1 + toMilliGram(value2)

proc `+=`* [T] (value1: var mg, value2: T) =
  value1 += toMilliGram(value2)

proc `-`* [T] (value1: mg, value2: T): mg =
  return value1 - toMilliGram(value2)

proc `-=`* [T] (value1: var mg, value2: T) =
  value1 -= toMilliGram(value2)

proc `*`* [T] (value1: mg, value2: T): mg =
  return value1 * toMilliGram(value2)

proc `*=`* [T] (value1: var mg, value2: T) =
  value1 *= toMilliGram(value2)

proc `/`* [T] (value1: mg, value2: T): mg =
  return value1 / toMilliGram(value2)

proc `/=`* [T] (value1: var mg, value2: T) =
  value1 /= toMilliGram(value2)