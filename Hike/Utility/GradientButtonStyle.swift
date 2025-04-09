//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by anamika singh on 07/04/25.
//

import Foundation
import SwiftUI
struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,20)
            .background(
                // conditinal statement with nil coalescing
                // condition? A:B
                configuration.isPressed ?
                // A: when user press the button
                LinearGradient(colors:
                                [.CustomGrayMedium,
                                 .CustomGrayLight],
                        startPoint: .top,
                        endPoint: .bottom)
        :
                // b: when the button is not pressed
        LinearGradient(colors:
                        [.CustomGrayLight,
                         .CustomGrayMedium],
                startPoint: .top,
                endPoint: .bottom)
                )
            .cornerRadius(40)
    }
}
