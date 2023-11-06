// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

describe("stringToCode", () => {
    it("returns a string with a coded message.", () => {
      expect(stringToCode(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
      expect(stringToCode(secretCodeWord2)).toEqual("G0bbl3dyg00k")
      expect(stringToCode(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
  })

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.
const stringToCode = (String) => {
    const lettersToNum = {'a': '4','e': '3','i': '1', 'o': '0'}
  
 return String.split('').map(arr => lettersToNum[arr.toLowerCase()] || arr).join('')
  }

  console.log(stringToCode(secretCodeWord1))
  console.log(stringToCode(secretCodeWord2))
  console.log(stringToCode(secretCodeWord3))

// Pseudo code:
// input created a function called stringToCode with a parameter called String
// created a variable called numToLetters it is an object to store the letters to their specific value
//used .split to split then array
//used .map to iterate over the array arr => lettersToNum[arr.toLowerCase() this basically checks if the array has any of the letters and if it does it changes it to its number which is defined in the variable and used .toLowercase to get the uppercased letters as well
//then used . join to join back the array into a string
//output a string with the coded message 

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.
describe("isFullHouse", () => {
    it("determines whether or not the array is a full house", () => {
      expect(isFullHouse(hand1)).toEqual(true)
      expect(isFullHouse(hand2)).toEqual(false)
      expect(isFullHouse(hand3)).toEqual(false)
      expect(isFullHouse(hand4)).toEqual(true)
    })
  })

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.
const isFullHouse = (hand) => {
    const counts = {}
    hand.forEach(num => counts[num] = (counts[num] || 0) + 1)
    return Object.values(counts).includes(2) && Object.values(counts).includes(3)
  }
  console.log(isFullHouse(hand1))
  

// Pseudo code:
// created a function called isfullHouse
// used hand as my parameter
// created a variable counts its an empty object to keep track of each number in the array it stores the counts of each number
//used .foreach to iterate over the array
// forecah iterates over every number in the array
// For each number it checks if num is a key in the counts object. If it is it increments the count by 1. If not using "|| 0", it initializes the count to 1.
// the return line checks if the value in the counts object include both 2 and 3 
// Object.values(counts) this gets an array of how many times each number appears in the array
// .includes(2) this checks if the array has the value 2 meaning that their is a pair
// .includes(3) checks if the array has a value 3 meaning their is a 3 of a kind
// if both conditions are true you have a full house and itll return true if not itll return false 
// output: a true or false if you have a full house or not 
