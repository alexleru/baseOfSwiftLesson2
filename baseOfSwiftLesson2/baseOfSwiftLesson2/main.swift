import Foundation
//1. Написать функцию, которая определяет, четное число или нет.
func isEven(number : Int){
    if(number % 2 == 0){
        print("Number \(number) is even")
    }else{
        print("Number \(number) is odd")
    }
}
isEven(number: 7)//проверяем число 7
isEven(number: 8)//проверяем число 8
//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func isDivisionBy3(_ number : Int){
    
    let msg = (number % 3 == 0) ? "divided" : "not divided"
    print("Number \(number) is \(msg) 3")
}

isDivisionBy3(8)//проверяем число 8
isDivisionBy3(9)//проверяем число 9

//3. Создать возрастающий массив из 100 чисел.
var array : [Int] = []
for element in 1...100 {
    array.append(element)
}
print("Массив для задания 3 \(array)")

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
let sizeArray = array.count
for (i, element) in array.reversed().enumerated() {//переворачиваю массив и получаю номер элементов
    if (element % 2 == 0 || element % 3 != 0) {
        array.remove(at: (sizeArray - i-1))
    }
}

print("Массив для задания 4 \(array)")

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.


func fibonachi(countOfType : Int) -> [Int] {
    var fnMinus1 = 0
    var fnMinus2 = 1
    var fn : Int
    var arrayFibonachi : [Int] = [0, 1]
    for _ in 1...countOfType {
        fn = fnMinus1 + fnMinus2
        fnMinus1 = fnMinus2
        fnMinus2 = fn
        arrayFibonachi.append(fn)
    }
    return arrayFibonachi
}
print("Список чисел фибоначи \(fibonachi(countOfType : 91))") //у меня отказалась система выводить больше 91 числа фибоначи

//6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа, кратные p: 2p, 3p, 4p, ...).
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.

var arrayPrimeNumbers : [Int] = []
for i in 2...600 {
    arrayPrimeNumbers.append(i)
}

var p = 0;
for c in 0...99 {
    p = arrayPrimeNumbers[c]
    let counts = arrayPrimeNumbers.count
    for (i, element) in arrayPrimeNumbers.reversed().enumerated() {
        
        if (element % p == 0 && element > p) {
            arrayPrimeNumbers.remove(at: (counts - i - 1)) //удаляю составные числа с конца массива, дабы не нарушать порядок
        }
    }
}

arrayPrimeNumbers.removeSubrange(100..<(arrayPrimeNumbers.count))
print("Массив простых чисел из \(arrayPrimeNumbers.count) элементов \(arrayPrimeNumbers)" )

