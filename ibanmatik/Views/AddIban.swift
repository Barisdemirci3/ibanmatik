//
//  AddIban.swift
//  ibanmatik
//
//  Created by Barış Demirci on 27.02.2025.
//

import SwiftUI

struct AddIban: View {
    @State var username = ""
    var body: some View {
        VStack{
            Spacer()
            TextField("IBAN", text: $username)
                            .keyboardType(.default) // Klavye türünü belirleme
                            .autocapitalization(.none) // Otomatik büyük harfi kapatma
                            .disableAutocorrection(true) // Otomatik düzeltmeyi kapatma
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .shadow(radius: 3)
            MainButton(buttonText: "IBAN Ekle"){
                print("Eklendi")
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    AddIban()
}
