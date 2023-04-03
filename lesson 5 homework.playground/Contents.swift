
import UIKit
import Cocoa
import SwiftUI
import Foundation


/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

enum CalculationType: String{
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */

func calculateResult(firstNumber numberOne: Int,secondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int{
    
    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
       case .substraction: result -= numberTwo
       case .multiplication: result *= numberTwo
       case .division: result /= numberTwo
       }
    return result
    
}

let typeAddition = CalculationType.addition
let typeSubstraction = CalculationType.substraction
let typeMultiplication = CalculationType.multiplication
let typeDivision = CalculationType.division

let result = calculateResult(firstNumber: 4, secondNumber: 1, withCalculationType: typeAddition)


print("Result:\(result)")
print("---------")


/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/


let numberOne = 100
let numberTwo = 10

 let result1 = calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: typeAddition)

let result2 = calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: typeSubstraction)

let result3 = calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: typeMultiplication)

let result4 = calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: typeDivision)

print("Result: \(numberOne) \(typeAddition.rawValue) \(numberTwo) = \(result1)")

print("Result: \(numberOne) \(typeSubstraction.rawValue) \(numberTwo) = \(result2)")

print("Result: \(numberOne) \(typeMultiplication.rawValue) \(numberTwo) = \(result3)")

print("Result: \(numberOne) \(typeDivision.rawValue) \(numberTwo) = \(result4)")

print("---------")


/*
Exercise 2

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

 Create func getSpecs() print it with elements provided above
 */

struct Car{
    var name: String
    var productionYear: Int
    var horsPower: Int
    
    func getSpecs(){
        print("\(name), \(productionYear), \(horsPower)")
    }
}



/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */



let audiQ7 = Car(name: "Audi Q7", productionYear: 2021, horsPower: 3500)

var audiTT = audiQ7

audiTT.name = "Audi TT"

audiQ7.getSpecs()
audiTT.getSpecs()



