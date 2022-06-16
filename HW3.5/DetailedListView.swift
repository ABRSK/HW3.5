//
//  DetailedListView.swift
//  HW3.5
//
//  Created by Андрей Барсук on 14.06.2022.
//

import SwiftUI

struct DetailedListView: View {
    let persons: [Person]
    let navTitle: String
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                    Section(person.fullName) {
                        ContactRow(imageName: "phone.circle", contactText: person.phoneNumber)
                        ContactRow(imageName: "envelope.circle", contactText: person.emailAddress)
                    }
            }
            .listStyle(.insetGrouped)
        .navigationTitle(navTitle)
        }
    }
}

struct DetailedListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedListView(persons: Person.getRandomPersons(), navTitle: "Contact List")
    }
}
