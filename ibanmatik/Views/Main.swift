//
//  Main.swift
//  ibanmatik
//
//  Created by Barış Demirci on 21.02.2025.
//

import SwiftUI

struct Main: View {
    @StateObject var viewmodel = IbanMV()
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
                    ForEach(viewmodel.ibans){ ibanitem in
                        IbanItem(iban: ibanitem.ibanNumber, nickname: ibanitem.ibanName)
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
