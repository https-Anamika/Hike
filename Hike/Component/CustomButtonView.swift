//
//  CustomButtonView.swift
//  Hike
//
//  Created by anamika singh on 03/04/25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(colors: [
                        .CustomGreenLight,
                        .CustomGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
            Circle()
                .stroke(LinearGradient(colors: [
                    .colorGrayLight,
                    .colorGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom),
                        lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [
                    .CustomGrayLight,
                    .CustomGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom))
        }
        .frame(width: 58,height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
