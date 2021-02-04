//
//  EditContactView.swift
//  Contact Manager
//
//  Created by Miguel Ferrer Fornali on 4/2/21.
//

import SwiftUI

struct EditContactView: View {
    
    var contact:Contact
    @Binding var showEditContactView:Bool
    @State private var name:String
    @State private var email:String
    @State private var address:String
    @State private var number:String
    @State private var image:String
    @State var focused:[Bool] = [true,false,false,false,false]
    
    init(contactInit:Contact, showEditContactViewInit:Binding<Bool>) {
        self.contact = contactInit
        self._name = State(wrappedValue: contactInit.name)
        self._email = State(wrappedValue: contactInit.email)
        self._address = State(wrappedValue: contactInit.address)
        self._number = State(wrappedValue: contactInit.number)
        self._image = State(wrappedValue: contactInit.image)
        self._showEditContactView = showEditContactViewInit
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Image(systemName: contact.image)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.white)
                Form {
                    TextField("Name", text: self.$name)
                        .disableAutocorrection(true)
                    TextField("Email", text: self.$email)
                        .disableAutocorrection(true)
                    TextField("Address", text: self.$address)
                        .disableAutocorrection(true)
                    TextField("Phone", text: self.$number)
                        .textContentType(.oneTimeCode)
                        .keyboardType(.numberPad)
                }
            }.padding(.top, 60)
            .navigationBarTitle("Edit contact", displayMode: .inline)
            .navigationBarItems(leading:
                Button(action: {
                    showEditContactView = false
                }, label: {
                    Text("Cancel").foregroundColor(.accentColor).font(.title3)
                })
            , trailing:
                Button(action: {
                    //Calling updateContact() function from: "Model"<"Contact.swift"
                    updateContact(edittedContact: Contact(name: name, number: number, image: image, address: address, email: email))
                    showEditContactView = false
                }, label: {
                    Text("Done").foregroundColor(.accentColor).font(.title3)
                }).disabled(name.isEmpty)
            )
        }
    }
}

struct EditContactView_Previews: PreviewProvider {
    static var previews: some View {
        EditContactView(contactInit: Contact(name: "", number: "", image: "", address: "", email: ""), showEditContactViewInit: .constant(true))
    }
}
