//
//  ContactView.swift
//  Contact Manager
//
//  Created by Miguel Ferrer Fornali on 2/2/21.
//

import SwiftUI

struct ContactView: View {
    
    var contact:Contact
    @State private var showEditContactView = false
    
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Image(systemName: contact.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                Text(contact.name)
                    .font(.title)
                    .bold()
                    .padding()
                HStack {
                    Button {
                        //Message...
                    } label: {
                        VStack {
                            Image(systemName: "message.fill").foregroundColor(.accentColor)
                            Text("Message").foregroundColor(.accentColor).font(.caption2)
                        }.frame(width: 50).padding(.all,13).background(Color.init("backgroundButton").opacity(0.3)).cornerRadius(10)
                    }
                    Button {
                        //Mobile...
                    } label: {
                        VStack {
                            Image(systemName: "phone.fill").foregroundColor(.accentColor)
                            Text("Mobile").foregroundColor(.accentColor).font(.caption2)
                        }.frame(width: 50).padding(.all,13).background(Color.init("backgroundButton").opacity(0.3)).cornerRadius(10)
                    }
                    Button {
                        //Video...
                    } label: {
                        VStack {
                            Image(systemName: "video.fill").foregroundColor(.accentColor)
                            Text("Video").foregroundColor(.accentColor).font(.caption2)
                        }.frame(width:50).padding(.all,13).background(Color.init("backgroundButton").opacity(0.3)).cornerRadius(10)
                    }
                    Button {
                        //Mail...
                    } label: {
                        VStack {
                            Image(systemName: "envelope.fill").foregroundColor(.accentColor)
                            Text("Mail").foregroundColor(.accentColor).font(.caption2)
                        }.frame(width: 50).padding(.all,13).background(Color.init("backgroundButton").opacity(0.3)).cornerRadius(10)
                    }
                }
                Button {
                    //Mobile...
                } label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Mobile").foregroundColor(.primary)
                            Text(contact.number).foregroundColor(.accentColor)
                        }.padding()
                        Spacer()
                    }.frame(width: UIScreen.main.bounds.width - 50).background(Color.init("backgroundButton").opacity(0.3)).cornerRadius(10)
                }
                Button {
                    //Email...
                } label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Email").foregroundColor(.primary)
                            Text(contact.email).foregroundColor(.accentColor)
                        }.padding()
                        Spacer()
                    }.frame(width: UIScreen.main.bounds.width - 50).background(Color.init("backgroundButton").opacity(0.3)).cornerRadius(10)
                }
                Button {
                    //Address...
                } label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Address").foregroundColor(.primary)
                            Text(contact.address).foregroundColor(.accentColor)
                        }.padding()
                        Spacer()
                    }.frame(width: UIScreen.main.bounds.width - 50).background(Color.init("backgroundButton").opacity(0.3)).cornerRadius(10)
                }
            }
            .navigationBarItems(trailing:
                Button(action: {
                    showEditContactView = true
                }, label: {
                    Text("Edit").foregroundColor(.accentColor).font(.title3)
                })
            )
            Spacer()
        }.sheet(isPresented: self.$showEditContactView) {
            EditContactView(contactInit: contact, showEditContactViewInit: self.$showEditContactView)
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(contact: Contact(name: "", number: "", image: "", address: "", email: ""))
    }
}
