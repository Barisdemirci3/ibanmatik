//
//  SwiftUIView.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

struct OnboardingThree: View {
    @AppStorage("onBoardingPass") var onBoardingPass = false
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                // Ortadaki Görsel Alanı
                Circles(UIimageViewName: "Test")
                // Başlık ve Açıklama
                TitleSubtitle(title: "İbanmatik'e Hoş Geldin!3", subtitle: "İbanmatik sayesinde, tüm bankalara ait ibanını tek bir yerde tutabileceksin!")
                Spacer()
                // Sayfa Göstergesi (Pager Dots)
                CircleForOnboarding(stateForCircles: 3)
                MainButton(buttonText: "Devam Et") {
                    onBoardingPass.toggle()
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OnboardingThree()
}
