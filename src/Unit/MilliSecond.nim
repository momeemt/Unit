import types

proc `+`* (value1, value2: ms): ms {.borrow.}

proc `+=`* (value1: var ms, value2: ms) {.borrow.}

proc `-`* (value: ms): ms {.borrow.}

proc `-`* (value1, value2: ms): ms {.borrow.}

proc `-=`* (value1: var ms, value2: ms) {.borrow.}

proc `*`* (value1, value2: ms): ms {.borrow.}

proc `*=`* (value1: var ms, value2: ms) {.borrow.}

proc `/`* (value1, value2: ms): ms {.borrow.}

proc `/=`* (value1: var ms, value2: ms) {.borrow.}

proc `==`* (value1, value2: ms): bool {.borrow.}

proc toMilliSecond* (value: int): ms =
  return value.ms

proc toMilliSecond* (value: s): ms =
  return value.ms * 1000.ms

proc `$`* (value: ms): string =
  return value.repr & "[ms]"

proc `+`* [T] (value1: ms, value2: T): ms =
  return value1 + toMilliSecond(value2)

proc `+=`* [T] (value1: var ms, value2: T) =
  value1 += toMilliSecond(value2)

proc `-`* [T] (value1: ms, value2: T): ms =
  return value1 - toMilliSecond(value2)

proc `-=`* [T] (value1: var ms, value2: T) =
  value1 -= toMilliSecond(value2)

proc `*`* [T] (value1: ms, value2: T): ms =
  return value1 * toMilliSecond(value2)

proc `*=`* [T] (value1: var ms, value2: T) =
  value1 *= toMilliSecond(value2)

proc `/`* [T] (value1: ms, value2: T): ms =
  return value1 / toMilliSecond(value2)

proc `/=`* [T] (value1: var ms, value2: T) =
  value1 /= toMilliSecond(value2)

