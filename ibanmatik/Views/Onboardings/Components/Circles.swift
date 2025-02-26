//
//  Circles.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

struct Circles: View {
    @State var UIimageViewName : String
    var body: some View {
        VStack{
                  // Üstteki Görseller (Yer tutucu)
                  ZStack {
                      Circle()
                          .fill(Color(hue: 1.0, saturation: 0.877, brightness: 0.814).opacity(0.9))
                          .frame(width: 300, height: 300)
                          .offset(x: -100, y: -120)
                          .padding(.vertical,-190)
                      Circle()
                          .fill(Color(hue: 1.0, saturation: 0.877, brightness: 0.814).opacity(0.88))
                          .frame(width: 200, height: 200)
                          .offset(x: 70, y: -190)
                          .padding(.vertical,-190)
                  }
                  
                  Image("\(UIimageViewName)") // Yer tutucu
                      .resizable()
                      .scaledToFit()
                      .frame(width: 400, height: 200)
                      .padding(.bottom, 20)
                  
              }
    }
}

#Preview {
    Circles(UIimageViewName: "Test")
}
