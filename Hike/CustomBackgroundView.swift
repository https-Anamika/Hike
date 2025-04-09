//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by anamika singh on 03/04/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack{
            Color.colorGreenDark
                .cornerRadius(30)
                .offset(y:12)
            Color("ColorGreenLight")
                .cornerRadius(40)
                .offset(y:12)
                .opacity(0.85)
            LinearGradient(colors: [Color("ColorGreenMedium"),
                                    Color("ColorGreenLight")],
                           startPoint: .top,
                           endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
}
