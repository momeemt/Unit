import unittest
import Unit

suite "演算子 += のテスト":
  setup:
    var
      left1 = 10.g
      left2 = 500.g
    const
      right1 = 20.g
      right2 = 1.kg
    const
      result1 = 30.g
      result2 = 1500.g

    left1 += right1
    left2 += right2
  
  test "test case 1":
    check left1 == result1
  
  test "test case 2":
    check left2 == result2

suite "g, kgの相互計算":
  setup:
    const left = 100.g
    const right = 1.kg
    const resultSum = 1100.g
    const resultDiff = -900.g
    const resultPrd = 100000.g
    const resultQuo = 0.1.g

  test "test case 1":
    check left + right == resultSum
  
  test "test case 2":
    check left - right == resultDiff
  
  test "test case 3":
    check left * right == resultPrd
  
  test "test case 4":
    check left / right == resultQuo

suite "g, mgの相互計算":
  setup:
    const left = 100.g
    const right = 2000.mg
    const resultSum = 102.g
    const resultDiff = 98.g
    const resultPrd = 200.g
    const resultQuo = 50.g

  test "test case 1":
    check left + right == resultSum
  
  test "test case 2":
    check left - right == resultDiff
  
  test "test case 3":
    check left * right == resultPrd
  
  test "test case 4":
    check left / right == resultQuo

suite "mg, gの相互計算":
  setup:
    const left = 100.mg
    const right = 2.g
    const resultSum = 2100.mg
    const resultDiff = -1900.mg
    const resultPrd = 200000.mg
    const resultQuo = 0.05.mg

  test "test case 1":
    check left + right == resultSum
  
  test "test case 2":
    check left - right == resultDiff
  
  test "test case 3":
    check left * right == resultPrd
  
  test "test case 4":
    check left / right == resultQuo

suite "mg, kgの相互計算":
  setup:
    const left = 1000.mg
    const right = 2.kg
    const resultSum = 2e6.mg + 1000.mg
    const resultDiff = 1000.mg - 2e6.mg
    const resultPrd = 2e9.mg
    const resultQuo = 1000.mg / 2e6.mg

  test "test case 1":
    check left + right == resultSum
  
  test "test case 2":
    check left - right == resultDiff
  
  test "test case 3":
    check left * right == resultPrd
  
  test "test case 4":
    check left / right == resultQuo