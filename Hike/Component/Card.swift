//
//  Card.swift
//  Hike
//
//  Created by anamika singh on 03/04/25.
//

import SwiftUI

struct Card: View {
    // MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    @State private var messageIndex: Int = 0
    let messages = [
        "Explore the mountains!",
        "Nature is calling!",
        "Adventure awaits!",
        "Time for a hike!",
        "Breathe in the fresh air!"
    ]

    // MARK: FUNCTIONS
    func randomImage(){
        repeat{
            randomNumber = Int.random(in: 1...5)
        } while imageNumber ==  randomNumber
        imageNumber = randomNumber
    }
    func randomMessage() {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while newIndex == messageIndex
        messageIndex = newIndex
    }

    var body: some View {
        //MARK: - CARD
        ZStack{
            CustomBackgroundView()
            VStack{
                // MARK: - HEADER
                VStack (alignment: .leading){
                    HStack {
                        
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .CustomGrayLight,
                                    .CustomGrayMedium],
                                               startPoint: .top,
                                               endPoint: .bottom)
                            )
                        Spacer()
                        Button{
                            isShowingSheet.toggle()
                            
                        }label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.large,.medium])
                        }
                    }
                    Text(messages[messageIndex])
                        .multilineTextAlignment(.center)
                     .italic()
                    .foregroundStyle(.colorGrayMedium)
                    .padding(.bottom)
                   
        
            }
                
                .padding(.horizontal,30)
                ZStack{
                    CustomCircleView()
                    
                    Image("Images/image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                Button("Explore Now"){
                    randomImage()
                    randomMessage()
                    
                }
                
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(LinearGradient(colors: [.CustomGreenMedium,
                    .CustomGreenLight],
                    startPoint: .top,
                    endPoint: .bottom))
                .buttonStyle(GradientButton())
                
            }
        }
        .frame(width: 320,height: 570)
        
       
    }
}


#Preview {
    Card()
}
