//
//  CustomCircleView.swift
//  Hike
//
//  Created by anamika singh on 07/04/25.
//

import SwiftUI

struct CustomCircleView: View {
    @State  private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [
                        
                        .CustomIndigoMedium,
                        .CustomSalmonLight],
                                   startPoint: isAnimateGradient ? .topLeading: .bottomLeading,
                                   endPoint:  isAnimateGradient ?.bottomTrailing: .topTrailing)
                )
                .onAppear(){
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                }//zstack
            MotionAnimationView()
                .frame(width:256,height: 256)
        }
    }
}

#Preview {
    CustomCircleView()
}
