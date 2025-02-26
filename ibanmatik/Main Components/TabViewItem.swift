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
                CheckIban()
                    .tabItem{
                        Image(systemName: "turkishlirasign.bank.building")
                        Text("IBAN Sorgulama")
                    }
            }
            .tint(Color.red)
        }
    }
}

#Preview {
    TabViewItem()
}
