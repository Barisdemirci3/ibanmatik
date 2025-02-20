//
//  AddButton.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

struct MainButton: View {
    var buttonText: String
    var destination: AnyView? = nil
    var buttonvoidAction: (() -> Void)? = nil
    var body: some View {
        Button(action: {})
        {
            MainButtonView
        }
    }
    private var MainButtonView: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .padding()
                .foregroundStyle(Color(hue: 1.0, saturation: 0.749, brightness: 0.896))
                .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 3)
            Text(buttonText)
                .font(.system(size: 17, weight: .bold, design: .default))
                .foregroundStyle(Color.white)
        }
    }

}


#Preview {
    MainButton(buttonText: "Devam Et")
}
