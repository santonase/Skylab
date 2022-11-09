import UIKit



//MARK: TASK 1 | Создайте массив с десятью случайными числами, из которых пять меньше нуля и пять больше нуля. Замените все отрицательные числа на 0 и выведите массив в консоль

print("TASK 1")

var array = [-5, -4, -3, -2, -1, 1, 2, 3, 4, 5]

for (index, negativeNumber) in array.enumerated() {
    if negativeNumber < 0 {
        array[index] = 0
    }
}

print(array)


//MARK: TASK 2 | Найдите минимальный и максимальный элемент в массиве и выведите его в консоль

print("")
print("TASK 2")

var min = 0
var max = 0

for number in array {
    if number < min {
        min = number
    } else if number > max {
        max = number
    }
}

print("Max number = \(max), Min number = \(min)")


//MARK: TASK 3 | Найдите сумму элементов массива чисел и выведите ее в консоль

print("")
print("TASK 3")

var sum = 0

for number in array {
    sum += number
}

print(sum)


//MARK: TASK 4 | Создайте массив с названиями всех месяцев, типа String. Затем создайте словарь и с помощью цикла задайте ему значения на основании массива: где в качестве ключей будут выступать цифры (индексы), а в качестве значений - элементы массива

print("")
print("TASK 4")

var monthOfYear = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

var dictionary = [Int:String]()

for (key, value) in monthOfYear.enumerated() {
    dictionary.updateValue(value, forKey: key + 1)
}

print(dictionary)


//MARK: TASK 5 | Создайте словарь: var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]. Поменяйте местами значения по ключам “first” и “fourth”. Выведите в консоль итоговый словарь

print("")
print("TASK 5")

var dictionaryTwo = ["first": 1, "second": 2, "third": 3, "fourth": 4]
let value = dictionaryTwo["fourth"]
dictionaryTwo["fourth"] = dictionaryTwo["first"]
dictionaryTwo["first"] = value
print(dictionaryTwo)


//MARK: TASK 6 | Создайте пустой словарь calendar, так же вам понадобиться массив с месяцами из четвертого задания.С помощью цикла от 1970 до 2022 задайте значения для словаря. В качестве ключа пусть будет год, а значение это массив с месяцами.

print("")
print("TASK 6")

var calendar = [Int:[String]]()

for key in 1970...2022 {
    calendar.updateValue(monthOfYear, forKey: key)
}

print(calendar)


//MARK: TASK 7 | С помощью другого цикла добавьте в calendar на каждый год по одному месяцу с вашим названием, чтобы в каждом году вышло 13 месяцев.

print("")
print("TASK 7")

for key in calendar.keys {
    calendar[key]?.append("Thirteenth month")
}

print(calendar)


/* MARK: TASK 7.1 | На основании словаря, который у вас получился в седьмом задании, давайте создадим новый словарь, который будет включать в себя также и даты, a именно массив с числами от 1 до 31:
● Создайте массив с числами от 1 до 31 с помощью цикла.
● Создайте новый словарь calendarPro, где в качестве ключей будут года, в
качестве значений вложенные словари. В которых в качестве ключей названия
месяцев, а в качестве значений массив с днями созданный выше.
● Выведите в консоль 1 сентября 2019 года.
PS: Для заполнения calendarPro используйте только созданный массив с числами, и словарь с месяцами, и никаких других данных
*/

print("")
print("TASK 7.1")

var days: [Int] = []

for i in 1...31 {
    days.append(i)
}

var calendarPro = [Int:[String:[Int]]]()
var monthes = [String:[Int]]()

for value in monthOfYear {
    monthes.updateValue(days, forKey: value)
}

for year in calendar.keys {
    calendarPro.updateValue(monthes, forKey: year)
}

print(calendarPro[2019]!["September"]![0])

//MARK: TASK 8 | Создайте 2 переменные с числами. Если значения равны, выведите в консоль их сумму умноженную на 3, если нет, выведите в консоль их сумму в случае если она четное число.

print("")
print("TASK 8")

var numberOne = 2
var numberTwo = 2
var sumOfNumbers = numberOne + numberTwo

if numberOne == numberTwo {
    print((sumOfNumbers) * 3)
} else if sumOfNumbers % 2 == 0 {
    print(sumOfNumbers)
}



//MARK: TASK 9 | Создайте строку, в которой будет храниться любая фраза из трех или более слов c восклицательным знаком в конце. Выведите в консоль первое и последнее слово из этой строки (без восклицательного знака).В этом задании необходимо найти способ доставать слова из вашей строки, погуглите методы с помощью которых это возможно реализовать. Задание сложнее чем кажется :)

print("")
print("TASK 9")

var str = "one two three!"

func testing(string: String) {
    var firstWord = string.components(separatedBy: " ").first
    var lastWord = string.components(separatedBy: " ").last?.replacingOccurrences(of: "!", with: "")
    print("\(firstWord ?? "") \(lastWord ?? "")")
}

testing(string: str)
