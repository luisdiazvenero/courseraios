//: Juego de Memoria

import UIKit

var numeros = 1...100

for numero in numeros {
    
    if numero % 5 == 0 {
        print("\(numero) Bingo!!!")
    } else if numero % 2 == 0 {
        print("\(numero) es par")
    } else if numero < 40 && numero > 30 {
        print("\(numero) Viva Swift")
    } else {
        print("\(numero) es impar")
    }
}