//
//  CheckIban.swift
//  ibanmatik
//
//  Created by Barış Demirci on 27.02.2025.
//

import SwiftUI

struct CheckIban: View {
    @State var username = ""
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack{
            Text("IBAN Sorgula")
                .bold()
                .font(.title)
                .padding(.vertical, 25)
            Rectangle()
                .frame(height: 1)
                .opacity(0.19)
            TextField("IBAN", text: $username)
                .keyboardType(.default) // Klavye türünü belirleme
                .autocapitalization(.none) // Otomatik büyük harfi kapatma
                .disableAutocorrection(true) // Otomatik düzeltmeyi kapatma
                .padding()
                .background(colorScheme == .dark ? Color(.systemGray4) : Color(.systemGray6))
                .cornerRadius(10)
                .shadow(radius: 3)
                .padding()
            Rectangle()
                .frame(height: 1)
                .opacity(0.19)
            VStack{
                Image("Test")
                    .resizable()
                    .frame(width: 210, height: 180)
                    .aspectRatio(contentMode: .fill)
                Text("Sonuç burada!")
                    .font(.title)
                    .bold()
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    CheckIban()
}
