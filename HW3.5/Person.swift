//
//  Person.swift
//  HW3.5
//
//  Created by Андрей Барсук on 14.06.2022.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let emailAddress: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getRandomPersons() -> [Person] {
        var persons: [Person] = []
        
        let firstNames = DataStorage.shared.firstNames.shuffled()
        let lastNames = DataStorage.shared.lastNames.shuffled()
        let phoneNumbers = DataStorage.shared.phoneNumbers.shuffled()
        let emailAddresses = DataStorage.shared.emailAddresses.shuffled()
        
        let minCount = min(firstNames.count, lastNames.count, phoneNumbers.count, emailAddresses.count)
        
        for index in 0..<minCount {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                emailAddress: emailAddresses[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
