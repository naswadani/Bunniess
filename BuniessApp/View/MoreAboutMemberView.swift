//
//  MoreAboutMemberView.swift
//  BuniessApp
//
//  Created by naswakhansa on 11/12/23.
//

import SwiftUI

struct MoreAboutMemberView: View {
    // MARK: - PROPERTIES
    
    var member : newJeansMemberDetail
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("More About \(member.nameDebut.lowercased())") {
                DisclosureMemberDetail(image: "birthday.cake",text1: "Birth Name", text2: member.birthName)
                DisclosureMemberDetail(image: "calendar", text1: "Birth Day", text2: member.birthDay)
                Divider().padding(.vertical, 3)
                HStack{
                    Group{
                        Image(systemName: "flag")
                        Text("Nationality")
                    }.font(Font.system(.body).bold())
                    
                    Spacer()
                    
                    ForEach(member.nationality, id: \.self){ item in
                        Text(item)
                    }
                }
                
                
            }
        }
    }
}

struct DisclosureMemberDetail : View{
    var image : String = ""
    var text1 : String
    var text2 : String
    var body: some View{
        Divider().padding(.vertical, 3)
        HStack{
            Group{
                Image(systemName: image)
                Text(text1)
                
            }.font(Font.system(.body).bold())
            
            Spacer()
            
            Text(text2)
        }
    }
}

#Preview {
    MoreAboutMemberView(member: memberData[0])
}
