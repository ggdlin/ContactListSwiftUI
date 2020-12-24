//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Ivanov Sergey on 24.12.2020.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var names = [
        "Carl",
        "John",
        "Tim",
        "Nicola",
        "Sharon",
        "Aaron",
        "Steven",
        "Bruce",
        "Allan",
        "Ted"
    ]
    var surnames = [
        "Robertson",
        "Butler",
        "Pennyworth",
        "Murphy",
        "Smith",
        "Black",
        "Isaacson",
        "Dow",
        "Williams",
        "Jankins"
    ]
    var telephones = [
        "946543210",
        "916532111",
        "957832112",
        "986165413",
        "785416314",
        "946352615",
        "933543116",
        "846352317",
        "987654618",
        "954346319"
    ]
    var emails = [
        "aaaa@mail.ru",
        "bbbb@mail.ru",
        "cccc@mail.ru",
        "dddd@mail.ru",
        "eeee@mail.ru",
        "ffff@mail.ru",
        "gggg@mail.ru",
        "hhhh@mail.ru",
        "iiii@mail.ru",
        "kkkk@mail.ru"
    ]
    
    private init() {}
    
    func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names =  self.names.shuffled()
        let surnames =  self.surnames.shuffled()
        let telephones =  self.telephones.shuffled()
        let emails =  self.emails.shuffled()
        
        let count = min(names.count, surnames.count,
                        telephones.count, emails.count)
        
        for index in 0..<count {
            let person = Person(
                id: UUID(),
                name: names[index],
                surname: surnames[index],
                telephone: telephones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
