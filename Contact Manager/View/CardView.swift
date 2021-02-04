//
//  CardView.swift
//  Contact Manager
//
//  Created by Miguel Ferrer Fornali on 2/2/21.
//

import SwiftUI

struct CardView: View {
    
    var contact:Contact
    
    var body: some View {
        HStack {
            Image(systemName: contact.image)
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
            Text(contact.name)
                .foregroundColor(.primary)
                .font(.title3)
                .bold()
                .padding(.leading,10)
            Spacer()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(contact: Contact(name: "", number: "", image: "", address: "", email: ""))
    }
}
