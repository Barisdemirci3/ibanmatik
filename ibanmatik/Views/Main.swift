//
//  Main.swift
//  ibanmatik
//
//  Created by Barış Demirci on 21.02.2025.
//

import SwiftUI

struct Main: View {
    @State var isTouch: Bool = false
    @State private var currentDetent: PresentationDetent = .medium
    var body: some View {
        ZStack{
        VStack(spacing: 16) { // Header ile içerik arasına boşluk bırak
            // ✅ Header
            Text("Anasayfa")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.primary)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.secondary.opacity(0.5))
            ScrollView{
                LazyVStack{
                    ForEach(0..<100, id: \.self){ _ in
                        IbanItem(iban: "1231232132132123321")
                            .padding(.vertical, 19)
                    }
                }
            }
        }
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    AddButton(buttonAction: {
                        showSheetWithDelay()
                    })
                    .padding(20)
                    .padding(.vertical,30)
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
    Main()
}
