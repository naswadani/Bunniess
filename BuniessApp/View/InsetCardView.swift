//
//  InsetCardView.swift
//  BuniessApp
//
//  Created by naswakhansa on 09/12/23.
//

import SwiftUI

struct InsetCardView: View {
    var member = memberData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment : .center){
                ForEach(member, id: \.self){item in
                    NavigationLink(destination : MemberDetailView(memberData: item)){
                        Image(item.coverMember)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .cornerRadius(15)
                            .padding(.horizontal, 10)
                    }
                }
            }
        }
    }
}

#Preview {
    InsetCardView()
}
