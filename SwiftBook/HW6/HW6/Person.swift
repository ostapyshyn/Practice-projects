//
//  Person.swift
//  HW6
//
//  Created by Volodymyr Ostapyshyn on 02.09.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import Foundation

struct Person {
    
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    
    
}

// add singelton static
var names = ["John", "Tim", "Andrew", "Oleh"].shuffled()
var surnames = ["Ruiz", "Djokovic", "Hristov", "Devine"].shuffled()
var emails = ["one@gmail.com", "two@gmail.com",
              "three@gmail.com", "four@gmail.com"].shuffled()
var phones = ["0991332801", "0991332802", "0991332803",
              "0991332804"].shuffled()

var persons = [
    Person(name: names[0], surname: surnames[0], email: emails[0], phone: phones[0]),
    Person(name: names[1], surname: surnames[1], email: emails[1], phone: phones[1]),
    Person(name: names[2], surname: surnames[2], email: emails[2], phone: phones[2]),
    Person(name: names[3], surname: surnames[3], email: emails[3], phone: phones[3])
]

let person = persons[0]





