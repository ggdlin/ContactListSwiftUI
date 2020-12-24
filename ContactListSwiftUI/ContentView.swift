//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Ivanov Sergey on 24.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var persons: [Person] = DataManager.shared.getContactList()
    
    var body: some View {
        
        TabView {
            ContactListView(persons: $persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
           NumbersView(persons: $persons)
            .tabItem {
                Image(systemName: "phone")
                Text("Numbers")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
