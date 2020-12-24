//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Ivanov Sergey on 24.12.2020.
//

import SwiftUI

struct ContactListView: View {
    @Binding var persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                ContactRowView(person: person)
            }
            .navigationBarTitle(Text("Contact List"))
        }
        
        
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: .constant(DataManager.shared.getContactList()))
    }
}
