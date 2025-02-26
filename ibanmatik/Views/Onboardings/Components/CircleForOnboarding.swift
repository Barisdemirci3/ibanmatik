//
//  CircleForOnboarding.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

struct CircleForOnboarding: View {
    var stateForCircles : Int
    var body: some View {
        switch stateForCircles {
        case 1:
            HStack(spacing: 8) {
                Circle()
                    .fill(Color.secondary.opacity(0.8))
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(Color.secondary.opacity(0.3))
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(Color.secondary.opacity(0.3))
                    .frame(width: 8, height: 8)
            }
            .padding(.bottom, 20)
        case 2:
            HStack(spacing: 8) {
                Circle()
                    .fill(Color.secondary.opacity(0.3))
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(Color.secondary.opacity(0.8))
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(Color.secondary.opacity(0.3))
                    .frame(width: 8, height: 8)
            }
            .padding(.bottom, 20)
            
        case 3:
            HStack(spacing: 8) {
                Circle()
                    .fill(Color.secondary.opacity(0.3))
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(Color.secondary.opacity(0.3))
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(Color.secondary.opacity(0.8))
                    .frame(width: 8, height: 8)
            }
            .padding(.bottom, 20)
        default:
            HStack(spacing: 8) {
                Circle()
                    .fill(Color.secondary.opacity(0.8))
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(Color.secondary.opacity(0.8))
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(Color.secondary.opacity(0.8))
                    .frame(width: 8, height: 8)
            }
            .padding(.bottom, 20)
        }
    }
}

#Preview {
    CircleForOnboarding(stateForCircles: 1)
}
