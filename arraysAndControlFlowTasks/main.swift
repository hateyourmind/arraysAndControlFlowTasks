// Заполнение массива случайными числами

var randomIntArray = [Int]()

while randomIntArray.count < 10 {
    randomIntArray.append(Int.random(in: 1...100))
}

print(randomIntArray)



// Поиск максимального элемента в массиве

guard let maximumInt = randomIntArray.max() else {
    print("Че у тебя за массив, раз максимума нет?")
    exit(0)
}

print(maximumInt)



// Поиск максимального элемента через алгоритм

var maxElement = Int.min

for element in randomIntArray {
    if element > maxElement {
        maxElement = element
    }
}

print(maxElement)



// Возведение значений в массиве в квадрат

var squaringIntArray = randomIntArray

for index in 0..<squaringIntArray.count {
    squaringIntArray[index] *= squaringIntArray[index]
}

print(squaringIntArray)



// Удаление всех чётных значений из массива

var oddIntArray = randomIntArray

for index in stride(from: oddIntArray.count - 1, through: 0, by: -1) {
    if oddIntArray[index] % 2 == 0 {
        oddIntArray.remove(at: index)
    }
}

print(oddIntArray)



// Создание нового массива с нечётными значениями из исходного

var newOddIntArray = [Int]()

for element in randomIntArray {
    if element % 2 != 0 {
        newOddIntArray.append(element)
    }
}

print(newOddIntArray)



// Сортировка массива по возрастанию

let sortAscendingIntArray = randomIntArray.sorted()
print(sortAscendingIntArray)



// Сортировка массива по убыванию

let sortDescendingIntArray = randomIntArray.sorted(by: >)
print(sortDescendingIntArray)



// Сортировка массива по возрастанию через сортировку выбором

var sortByAlgorithm = randomIntArray

for i in 0..<sortByAlgorithm.count - 1 {
    for j in (i+1)..<sortByAlgorithm.count {
        if sortByAlgorithm[j] < sortByAlgorithm[i] {
            let temp = sortByAlgorithm[i]
            sortByAlgorithm[i] = sortByAlgorithm[j]
            sortByAlgorithm[j] = temp
        }
    }
}

print(sortByAlgorithm)



// Сбор всех четных в один массив, а нечетных в другой

var arrA = [Int]()
var arrB = [Int]()

while arrA.count < 10 {
    arrA.append(Int.random(in: 1...100))
}

while arrB.count < 10 {
    arrB.append(Int.random(in: 1...100))
}

for index in stride(from: arrA.count - 1, through: 0, by: -1) {
    if arrA[index] % 2 == 0 {
        arrB.append(arrA[index])
        arrA.remove(at: index)
    }
}

for index in stride(from: arrB.count - 1, through: 0, by: -1) {
    if arrB[index] % 2 != 0 {
        arrA.append(arrB[index])
        arrB.remove(at: index)
    }
}

print(arrA)
print(arrB)

// Спасибо за внимание, чуваки, было интересно))
