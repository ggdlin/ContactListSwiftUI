//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Ivanov Sergey on 24.12.2020.
//

import SwiftUI

struct ContactRowView: View {
    let person: Person
    
    var body: some View {
        NavigationLink(
            "\(person.fullName)",
            destination: DetailedInfoView(person: person)
        )
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(person: DataManager.shared.getContactList()[0])
    }
}
