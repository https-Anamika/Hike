//
//  MotionAnimationView.swift
//  Hike
//
//  Created by anamika singh on 08/04/25.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK PROPERTIES
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimation: Bool = false
    // MARK:- FUNCTIONS
    //2. RANDOM COORDINATE
    func randomCoordinate() -> CGFloat{
        return CGFloat.random(in: 0...256)
    }
    //3. RANDOM SIZE
    func randomSize() -> CGFloat{
        return CGFloat.random(in: 4...60)
    }
    //4. random scale
    func randomScale() -> CGFloat{
        return CGFloat(Double.random(in: 0.1...0.6))
    }
    //5. random speed
    func randomSpeed() -> Double{
        return Double.random(in: 0.05...1.0)
    }
    //6. randomdelay
    func randomDelay() -> Double{
        return Double.random(in: 0...4)
    }
    var body: some View {
        ZStack{
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimation ? 1.5 : 1.0)

                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAnimation = true
                        }
                       
                    })
                    
            }
        }//. ZSTACK
        .frame(width: 315,height:315)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    
        MotionAnimationView()
    
    }
    
