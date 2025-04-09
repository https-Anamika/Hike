//
//  SettingsView.swift
//  Hike
//
//  Created by anamika singh on 08/04/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            Section{
            HStack {
                // MARK SECTION HEADER
               
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    
                    
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66,weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    
                    
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.CustomGreenMedium,.CustomGreenDark], startPoint: .top, endPoint: .bottom))
                VStack (spacing: 8){
                Text("Where can u find \nperfect tracks ?")
                    .font(.title2)
                    .fontWeight(.heavy)
                
                    Text("The hike which look gorgeousin photos but is even better once you are actually there. The hike that hope you to do again someday. \nFinds the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for walk")
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.CustomGreenMedium,.CustomGreenDark], startPoint: .top, endPoint: .bottom))
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
            }// header
            .listRowSeparator(.hidden)
            // MARK SECTION ICON
            // MARK SECTION ABOUT
            Section(
                header: Text("About the app"),
               
                footer: HStack{
                    Spacer()
                    Text("Copyright © Al right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            )
            {
               // BASIC LABELED CONTENT
               // LabeledContent("Application", value: "Hike")
                // ADVANCED LABEL CONTENT
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compatibilty", rowIcon: "info.circle", rowContent: "iOS,iPadOS", rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Anamika", rowTintColor: .pink)
                CustomListRowView(rowLabel: "linkedin", rowIcon: "globe", rowTintColor: .blue,rowLinkLabel: "linkedin:Anamika",rowLinkDestinatiopn: "https://www.linkedin.com/in/anamika-singh2018/")
                CustomListRowView(rowLabel: "github",
                                  rowIcon: "person.text.rectangle",
                                  rowContent: nil,
                                  rowTintColor: .green,
                                  rowLinkLabel: "github:Anamika",
                                  rowLinkDestinatiopn: "https://github.com/https-Anamika")
                
            }// SECTION
        }// LIST
        
        
    }
    
}

#Preview {
    SettingsView()
}
