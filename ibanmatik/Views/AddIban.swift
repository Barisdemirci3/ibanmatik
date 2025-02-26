//
//  AddIban.swift
//  ibanmatik
//
//  Created by Barış Demirci on 27.02.2025.
//

import SwiftUI

struct AddIban: View {
    var body: some View {
        Text("Iban Ekle")
            .bold()
            .font(.title)
        Rectangle()
            .frame(height: 1)
            .opacity(0.4)
        MainButton(buttonText: "Iban Ekle"){
            
        }
        Spacer()
        
    }
}

#Preview {
    AddIban()
}
