//
//  Contact.swift
//  Contact Manager
//
//  Created by Miguel Ferrer Fornali on 2/2/21.
//

import Foundation

struct Contact:Identifiable,Hashable {
    var id = UUID()
    var name:String
    var number:String
    var image:String
    var address:String
    var email:String
}

func updateContact(edittedContact:Contact) {
    //Don't do nothing for the moment
}

func newContact(contact:Contact) {
    //Don't do nothing for the moment
}

func deleteContact(index:IndexSet) {
    //Don't do nothing for the moment
}

var contacts:[Contact] = [
    Contact(name: "Miguel Ferrer", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Joan Ferrer", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Amparo Fornali", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Miguel Ibañez", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Ivan Gregori", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Jorge Coello", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Enrique Juan", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Sergio Gurillo", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Alex Tormo", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Alejandro Pascual", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Anamari Gonzalez", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Carla Albert", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Vicent Sapena", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "David Garcia", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Pedro Girones", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com"),
    Contact(name: "Iris Girones", number: "600645782", image: "person.crop.circle.fill", address: "Avenida Blasco Ibáñez, 160", email: "abc@gmail.com")
]
