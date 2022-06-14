//
//  BasicListView.swift
//  HW3.5
//
//  Created by Андрей Барсук on 14.06.2022.
//

import SwiftUI

struct BasicListView: View {
    let persons: [Person]
    let navTitle: String
    
    var body: some View {
        List(persons) { person in
            NavigationLink(person.fullName) {
                DetailedView(person: person)
            }
        }
        .listStyle(.plain)
        .navigationTitle(navTitle)
        
    }
}

struct BasicListView_Previews: PreviewProvider {
    static var previews: some View {
        BasicListView(persons: Person.getRandomPersons(), navTitle: "Contact List")
    }
}
