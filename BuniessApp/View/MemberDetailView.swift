//
//  MemberDetailView.swift
//  BuniessApp
//
//  Created by naswakhansa on 09/12/23.
//

import SwiftUI

struct MemberDetailView: View {
    var memberData : newJeansMemberDetail
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                Image(memberData.coverMember)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                VStack(alignment:.leading, spacing: 20) {
                    Text(memberData.nameDebut)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                    Text(memberData.biography)
                        .multilineTextAlignment(.leading)
                    MoreAboutMemberView(member: memberData)
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 15)
                HeadingView(icons: "photo.on.rectangle", text: "Gallery")
                    .foregroundColor(.accentColor)
                GalleryMemberView(memberData: memberData)
                    .padding(.bottom,30)
            }
            .navigationBarTitle("Detail Member", displayMode: .inline)
        }
    }
}

#Preview {
    MemberDetailView(memberData: memberData[0])
}
