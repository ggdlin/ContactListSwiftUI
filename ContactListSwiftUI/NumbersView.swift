//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Ivanov Sergey on 25.12.2020.
//

import SwiftUI

struct NumbersView: View {
    @Binding var persons: [Person]
    
    var body: some View {
        
        List {
            ForEach(persons) { person in
                
                Section(header: Text("\(person.fullName)")) {
                    
                    HStack {
                        Image(systemName: "phone")
                        Text("\(person.telephone)")
                    }
                    HStack {
                        Image(systemName: "tray")
                        Text("\(person.email)")
                    }
                }
                
            }
        }
        .navigationBarTitle("Contact List")
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: .constant(DataManager.shared.getContactList()))
    }
}
