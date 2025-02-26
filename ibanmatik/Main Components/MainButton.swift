//
//  AddButton.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

struct MainButton: View {
    @Environment(\.colorScheme) var colorScheme
    var buttonText: String
    var destination: AnyView? = nil
    var buttonvoidAction: (() -> Void)? = nil
    var body: some View {
        if let destination = destination {
            NavigationLink(destination: destination){
                MainButtonView
            }
        }
        if let buttonvoidAction = buttonvoidAction {
            Button(action: buttonvoidAction){
                MainButtonView
            }
        }
        
    }
    private var MainButtonView: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .padding()
                .foregroundStyle(Color("ButtonColor"))
                .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 3)
            Text(buttonText)
                .font(.system(size: 17, weight: .bold, design: .default))
                .foregroundStyle(Color.white)
        }
    }

}
#Preview {
    MainButton(buttonText: "Devam Et") {
        let bankName = getBank(bankNumber: 4)
        print(bankName)
    }
}
