//
//  AddButton.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

struct AddButton: View {
    var buttonAction : (() -> Void)? = nil
    var body: some View {
        if let buttonAction = buttonAction{
            Button(action: buttonAction) {
                ButtonView
            }
        }
    }
}

private var ButtonView: some View {
    ZStack{
        Circle()
            .frame(width: 50)
            .foregroundStyle(Color(hue: 1.0, saturation: 0.749, brightness: 0.896))
        Image(systemName: "plus")
            .font(.system(size: 29))
            .foregroundStyle(Color.white)
    }
}

#Preview {
    AddButton()
}
