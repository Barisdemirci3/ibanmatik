//
//  TabView.swift
//  ibanmatik
//
//  Created by Barış Demirci on 21.02.2025.
//

import SwiftUI

struct TabViewItem: View {
    @State private var currentDetent : PresentationDetent = .medium
    @State var isTouch = false
    var body: some View {
        ZStack{
            TabView{
                Main()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Ana Sayfa")
                    }
                OnboardingThree()
                    .tabItem{
                        Image(systemName: "turkishlirasign.bank.building")
                        Text("IBAN Sorgulama")
                    }
            }
            .tint(Color.red)
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    AddButton(buttonAction: {
                        showSheetWithDelay()
                    })
                        .padding(30)
                        .padding(.vertical,50)
                }
            }
         
        }
        .sheet(isPresented: $isTouch) {
            AddIban()
                .presentationDetents([.medium, .large], selection: $currentDetent)
                .presentationDragIndicator(.visible)
                .animation(.easeInOut, value: isTouch)
        }
    }
    func showSheetWithDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            isTouch = true
        }
    }

}

#Preview {
    TabViewItem()
}
