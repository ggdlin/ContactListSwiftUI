//
//  DetailedInfoView.swift
//  ContactListSwiftUI
//
//  Created by Ivanov Sergey on 24.12.2020.
//

import SwiftUI

struct DetailedInfoView: View {
    let person: Person
    
    var body: some View {
        ZStack {
            Color(
                .gray
            )
            .opacity(0.2)
            .ignoresSafeArea()
            
            VStack {
                List {
                    HStack {
                        Spacer()
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Image(systemName: "phone.fill")
                        Text(" \(person.telephone)")
                    }
                    HStack {
                        Image(systemName: "tray.fill")
                        Text(" \(person.email)")
                    }
                }
                
                .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity, minHeight: 100, idealHeight: 200, maxHeight: 250, alignment: .center)
                .cornerRadius(20)
                .padding()
                Spacer()
            }
            
            
        }
        .navigationBarTitle(Text("\(person.fullName)"))
        
    }
}


//            VStack(alignment: .leading) {
//
//                    .padding()
//
//                    .padding()
//                Spacer()
//            }
//            Spacer()
//
//



struct DetailedInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedInfoView(person: DataManager.shared.getContactList()[0])
    }
}
