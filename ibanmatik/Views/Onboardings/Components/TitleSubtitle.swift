//
//  TitleSubtitle.swift
//  ReMe
//
//  Created by Barış Demirci on 29.01.2025.
//

import SwiftUI

struct TitleSubtitle: View {
    @State var title: String
    @State var subtitle: String
    var body: some View {
        VStack(spacing: 10) {
            Text("\(title)")
                .font(.system(size: 24, weight: .bold))
                .multilineTextAlignment(.center)
            Text("\(subtitle)")
            .font(.system(size: 16))
            .multilineTextAlignment(.center)
            .foregroundColor(.secondary)
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    TitleSubtitle(title: "ReMe'ye Hoş Geldin!", subtitle: "ReMe sayesinde ilaçlarını yönetmek düzenli bir hale gelecek ve yorulmayacaksın!")
}
