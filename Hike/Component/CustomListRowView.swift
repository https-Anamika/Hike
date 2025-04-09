//
//  CustomListRowView.swift
//  Hike
//
//  Created by anamika singh on 09/04/25.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK PROPERTIES
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestinatiopn: String? = nil
    
    var body: some View {
        LabeledContent{
           // Text
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if (rowLinkLabel != nil &&
                      rowLinkDestinatiopn != nil){
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestinatiopn!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
                
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            
        } label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30,height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
                    .lineLimit(1)
            }
        }
    }
}

#Preview {
    List{
        CustomListRowView(rowLabel: "linkedin",
                          rowIcon: "globe",
                          rowContent: nil,
                          rowTintColor: .blue,
                          rowLinkLabel: "linkedin:Anamika",
                          rowLinkDestinatiopn: "https://www.linkedin.com/in/anamika-singh2018/")
        CustomListRowView(rowLabel: "github",
                          rowIcon: "person.text.rectangle",
                          rowContent: nil,
                          rowTintColor: .green,
                          rowLinkLabel: "github:Anamika",
                          rowLinkDestinatiopn: "https://github.com/https-Anamika")
    }
}
