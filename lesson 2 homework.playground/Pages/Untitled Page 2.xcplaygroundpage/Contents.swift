import Foundation
import UIKIt
import SwiftUI
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var float1: Float = 45.89
var float2: Float = 23.45

let Double1: Double = Double(float1 + float2)

print(String(format: "%.2f", Double1))
print("------")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne: Int  = 56
var numberTwo: Int = 16

let dividedNumber: Double = Double(numberOne / numberTwo)
let reminderNumber = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(dividedNumber), the remainder is \(reminderNumber)")
print("------")


/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var macbookCount = 12
var macbookPrice = 1000

if macbookCount < 5{
    macbookPrice = 1000
}else if macbookCount >= 10 {
    macbookPrice = 850
}else if macbookCount >= 5 || macbookCount <= 9{
    macbookPrice = 900
}


var totalSum = macbookCount * macbookPrice

print("new: \(macbookCount) Macbook Pro with the price of: \(macbookPrice) EUR, will cost you: \(totalSum) EUR")
print("------")


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */


var userInputAge: String?
userInputAge = "33a"
var convertStringToInt = Int(userInputAge ?? "0")

if convertStringToInt == nil{
    print("convertStringToInt can not be converted!")
}else{
    print("convertStringToInt has \(convertStringToInt ?? 0)")
}

print("------")


/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */



//In this code I use built in swift features like "DateFormatter", "Date" and Calendar.
// Set your birthdate as a string in "dd-MM-yyyy" format
let birthdateString = "10-11-2003"

// Create a DateFormatter object to convert the birthdate string to a Date object
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd-MM-yyyy"
let birthdate = dateFormatter.date(from: birthdateString)!

// Get the current date
let currentDate = Date()

// Create a Calendar object
let currentCalendar = Calendar.current

// Calculate the difference between the birthdate and the current date in years, months, and days
let dateComponents = currentCalendar.dateComponents([.day, .month, .year], from: birthdate, to: currentDate)

// Extract the values from the date components
let totalYearsFromBirth = dateComponents.year!
let totalMonthFromBirth = dateComponents.month!
let totalDaysFromBirth = dateComponents.day!

// Print the results
print("Total years: \(totalYearsFromBirth), total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")


print("------")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

let monthOfBirth  = Calendar.current.component(.month, from: birthdate)

let quarterOfYear: String
switch monthOfBirth{
case 1...3:
    quarterOfYear = "first"
case 4...6:
    quarterOfYear = "second"
case 7...9:
    quarterOfYear = "third"
case 10...12:
    quarterOfYear = "fourth"
default:
    quarterOfYear = "unknown"
}

print("I was born in the \(quarterOfYear) quarter")
print("------")

//=================
