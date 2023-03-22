import Cocoa

/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/
let FirstString = "I'm learning"
let secondString = "swift"

print("\(FirstString) \(secondString)!!!")

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge: Int = 19

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
var myAgeInTenYears: Int = myAge + 10

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/
let daysInYears: Double = 365.25

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/
var daysPassed = Float(Double(myAgeInTenYears) * daysInYears)
/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/
print("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximately \(daysPassed).")
/*
Exercise 3.
 
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/

let AC: Double = 8.0
let CB: Double = 6.0

let AB = sqrt(AC * AC + CB * CB)

let area = 0.5 * AC * CB

let perimeter = AC + CB + AB

print("Area of triangle: \(area)")
print("Hypentenuse of triangle: \(AB)")
print("Perimeter of triangle: \(perimeter)")

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
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
