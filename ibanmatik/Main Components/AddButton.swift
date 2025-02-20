//
//  AddButton.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        Button(action: { }) {
            ButtonView
        }
    }
}

private var ButtonView: some View {
    ZStack{
        Circle()
            .frame(width: 40)
            .foregroundStyle(Color(hue: 1.0, saturation: 0.749, brightness: 0.896))
        Image(systemName: "plus")
            .font(.system(size: 20))
            .foregroundStyle(Color.white)
    }
}

#Preview {
    AddButton()
}
