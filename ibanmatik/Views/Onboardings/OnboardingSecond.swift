//
//  SwiftUIView.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

struct OnboardingSecond: View {
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                // Ortadaki Görsel Alanı
                Circles(UIimageViewName: "Test")
                // Başlık ve Açıklama
                TitleSubtitle(title: "İbanmatik'e Hoş Geldin!2", subtitle: "İbanmatik sayesinde, tüm bankalara ait ibanını tek bir yerde tutabileceksin!")
                Spacer()
                // Sayfa Göstergesi (Pager Dots)
                CircleForOnboarding(stateForCircles: 2)
                MainButton(buttonText: "Devam Et", destination: AnyView(OnboardingThree()))
                    .navigationBarBackButtonHidden(true)
            }
            .background(Color.white)
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OnboardingSecond()
}
