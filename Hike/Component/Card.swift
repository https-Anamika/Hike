//
//  Card.swift
//  Hike
//
//  Created by anamika singh on 03/04/25.
//

import SwiftUI

struct Card: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [Color("ColorIndigoMedium"),
                         Color("ColorSalmonLight")],
                        startPoint: .top,
                        endPoint: .bottomTrailing)
                )
                .frame(width:250,height: 250)
            Image("Images/image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    Card()
}
