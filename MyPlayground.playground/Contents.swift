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
func countOf(_ arrays: Array<Any>...) -> Int {
    var soma = 0
    for array in arrays {
        soma += array.count
    }
    return soma
}
