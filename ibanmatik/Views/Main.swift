//
//  Main.swift
//  ibanmatik
//
//  Created by Barış Demirci on 21.02.2025.
//

import SwiftUI

struct Main: View {
    var body: some View {
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
    }
}

#Preview {
    Main()
}
