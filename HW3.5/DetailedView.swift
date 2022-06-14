//
//  DetailedView.swift
//  HW3.5
//
//  Created by Андрей Барсук on 14.06.2022.
//

import SwiftUI

struct DetailedView: View {
    let person: Person
    
    var body: some View {
        VStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .opacity(0.25)
                    .padding()
                    Spacer()
                }
                PersonContactView(imageName: "phone.circle", contactText: person.phoneNumber)
                PersonContactView(imageName: "envelope.circle", contactText: person.emailAddress)
                
            }
            Spacer()
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(person: Person.getRandomPersons()[0])
    }
}
