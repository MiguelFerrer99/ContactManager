//
//  NewContactView.swift
//  Contact Manager
//
//  Created by Miguel Ferrer Fornali on 4/2/21.
//

import SwiftUI

struct NewContactView: View {
    
    @Binding var showNewContactView:Bool
    @State private var name:String = ""
    @State private var email:String = ""
    @State private var address:String = ""
    @State private var number:String = ""
    @State private var image:String = "person.crop.circle.fill"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Image(systemName: image)
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
            .navigationBarTitle("New contact", displayMode: .inline)
            .navigationBarItems(leading:
                Button(action: {
                    showNewContactView = false
                }, label: {
                    Text("Cancel").foregroundColor(.accentColor).font(.title3)
                })
            , trailing:
                Button(action: {
                    //Calling newContact() function from: "Model"<"Contact.swift"
                    newContact(contact: Contact(name: name, number: number, image: image, address: address, email: email))
                    showNewContactView = false
                }, label: {
                    Text("Done").foregroundColor(.accentColor).font(.title3)
                }).disabled(name.isEmpty)
            )
        }
    }
}

struct NewContactView_Previews: PreviewProvider {
    static var previews: some View {
        NewContactView(showNewContactView: .constant(true))
    }
}
