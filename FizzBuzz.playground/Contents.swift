import UIKit

func fizzBuzz() {
    for number in 1...100 {
        if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
            print("FIZZBUZZ!")
        } else if number.isMultiple(of: 5) {
            print("BUZZ")
        } else if number.isMultiple(of: 3) {
            print("FIZZ")
        } else {
            print(number)
        }
    }
}

fizzBuzz()



