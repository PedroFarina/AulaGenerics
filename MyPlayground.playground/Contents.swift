import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array
func contains<T: Equatable>(_ arr: [T], _ elementToFind: T) -> Bool {
    for element in arr {
        if element == elementToFind {
            return true
        }
    }
    return false
}
//TODO: Função de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico
extension Array where Element: Numeric {
    func sum() -> Element {
        var soma = Element.zero
        for element in self {
            soma += element
        }
        return soma
    }
}
//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
    //BONUS TODO: Fazer o método acima receber N arrays
func isIn<T: Equatable>(_ arrays: Array<T>...) -> Int {
    var arraysCopy = arrays
    var result = arraysCopy.removeFirst()
    let firstCopy = result
    for element in firstCopy {
        for array in arraysCopy {
            if !array.contains(element) {
                result.removeFirst()
                break
            }
        }
    }
    return result.count
}


var arr1 = [0, 1, 2, 3, 4, 5]
var arr2 = [0, 2, 2, 2, 5, 2]
var arr3 = [0, 3, 5, 5, 5, 5]

print(isIn(arr1, arr2, arr3))
