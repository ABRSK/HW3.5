//
//  ContentView.swift
//  HW3.5
//
//  Created by Андрей Барсук on 14.06.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getRandomPersons()
    
    var body: some View {
        NavigationView {
            TabView {
                BasicListView(persons: persons, navTitle: "Contact List")
                    .tabItem {
                        Image(systemName: "person.crop.rectangle")
                        Text("Basic List")
                    }
                DetailedListView(persons: persons, navTitle: "Contact List")
                    .tabItem {
                        Image(systemName: "person.text.rectangle")
                        Text("Detailed List")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
