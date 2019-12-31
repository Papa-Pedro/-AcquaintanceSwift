import Foundation

func palindrom(palindrom: String) -> String { //задание 3, функция по опеределению полиндрома
    for mame in 0...(palindrom.count/2 - 1) {
        if palindrom[palindrom.index(palindrom.startIndex, offsetBy: mame)] != palindrom[palindrom.index(palindrom.endIndex, offsetBy: (-mame-1))] {
            return "не является"
        }
     }
    return "является"
}

print("Задание №1:")
print("Найти в массиве строки с наибольшей длиной и вывести их.")
let mostWords: [String] = ["Time","Person","Day","Year","Way"]
var counter = 0;
for words in mostWords {
    if counter < words.count {
        counter = words.count
    }
} //хоть в задание и было написано слово, но длины наибольших строк могут совпадать, поэтому сделал так
for words in mostWords {
    if counter == words.count {
        print("Строки с наибольшей длиной: \(words).")
    }
}
//ниже вариант где выводитс€ лишь 1 слово
/*
 var search = ""
 for words in mostWords {
 if search.count < words.count {
 search = words
 }
 }
 print(search)
 */

print("\nЗадание №2:")
print("Дан массив строк, посчитать сколько элементов содержать префикс [M]:")
print("Исходна строка - [M] Alex, [M] John, [F] Anna, [M] David, [F] Victoria, [M] Smith.")
let masNameM: [String] = ["[M] Alex", "[M] John", "[F] Anna", "[M] David", "[F] Victoria", "[M] Smith"]
counter = 0;
for numbers in 0...5 {
    if masNameM[numbers].contains("[M]"){
        counter += 1
    }
}
print("Колличество префиксов [M] - \(counter).")

print("\nЗадание №3:")
print("Написать алгорит определения палиндрома:")
print("Число 0132310 \(palindrom(palindrom: "0132310")) палиндромом")


