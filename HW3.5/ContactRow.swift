//
//  ContactRow.swift
//  HW3.5
//
//  Created by Андрей Барсук on 14.06.2022.
//

import SwiftUI

struct ContactRow: View {
    let imageName: String
    let contactText: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.blue)
            Text(contactText)
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(imageName: "phone.circle", contactText: "99999")
    }
}
