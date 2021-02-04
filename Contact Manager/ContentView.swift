//
//  ContentView.swift
//  Contact Manager
//
//  Created by Miguel Ferrer Fornali on 2/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var searchBar:SearchBar = SearchBar()
    @State private var showNewContactView = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts.filter {
                    searchBar.text.isEmpty ? true : $0.name.lowercased().prefix(searchBar.text.count).localizedStandardContains(searchBar.text)
                }, id: \.self) { contact in
                    NavigationLink(destination: ContactView(contact: contact)) {
                        CardView(contact: contact)
                    }
                }.onDelete { (index) in
                    //Calling deleteContact() function from: "Model"<"Contact.swift"
                    deleteContact(index: index)
                }
            }
            .navigationBarTitle("Contacts")
            .add(self.searchBar)
            .navigationBarItems(trailing:
                Button(action: {
                    showNewContactView = true
                }, label: {
                    Image(systemName: "plus")
                })
            )
        }.navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: self.$showNewContactView) {
            NewContactView(showNewContactView: self.$showNewContactView)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
