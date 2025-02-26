//
//  TabView.swift
//  ibanmatik
//
//  Created by Barış Demirci on 21.02.2025.
//

import SwiftUI

struct TabViewItem: View {
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
                    AddButton()
                        .padding(30)
                        .padding(.vertical,50)
                }
            }
         
        }
    }
}

#Preview {
    TabViewItem()
}
