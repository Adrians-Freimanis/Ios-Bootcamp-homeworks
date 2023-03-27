import Cocoa
import SwiftUI
import Foundation
import UIKit


/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */


//This code here uses user input but I was not able to get it started.
/*
print("Enter the deposit amount:")
guard let depositInput = readLine(), let deposit = Double(depositInput)else{
    print("Invalid deposit amount.")
    exit(1)
}

print("Enter the interest rate:")
guard let rateInput = readLine(), let rate = Double(rateInput)else{
    print("Invalid interes rate.")
    exit(1)
}

print("Enter the investment period in years:")
guard let periodInput = readLine(), let period = Int(periodInput)else{
    print("Invalid investment period.")
    exit(1)
}
 */

let deposit = 500
let rate = 0.3
let period: Int = 7


var profit = Double(deposit)
for _ in 1...period{
    profit += profit * rate
}

var income = profit - Double(deposit)
let formatedIncome = String(format: "%.2f", income)
var totalIncome = profit + Double(deposit)
let formatedtotalIncome = String(format: "%.2f", totalIncome)

print("Amount of income after \(period) years will be \(formatedIncome) Eur. My total deposit will be \(formatedtotalIncome) Eur !")

print("------")


/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let intArray = [1,2,3,4,5,6,6,66,88,23,75,23,54,33]

var evenNumbers: [Int] = []


for number in intArray{
    if number % 2 == 0{
        evenNumbers.append(number)
    }
}

for number in evenNumbers{
    print(number)
}
print("------")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */


var counter = 0

for _ in 1...Int.max{
    counter += 1
    let randomNumber = Int.random(in: 1...10)
    if randomNumber == 5{
        print("It took \(counter) times to get the number 5.")
        break
    }
}
print("------")
/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let postLength = 10
let progressDay = 2
let progressNight = 1
var bugPosition = 0
var numberOfDays = 0

while bugPosition < postLength{
    numberOfDays += 1
    bugPosition += progressDay
    if bugPosition >= postLength{
        break
    }
    bugPosition -= progressNight
}

print("Bug will spend \(numberOfDays) days to reach top of the post")

print("------")


