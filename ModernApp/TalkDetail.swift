//
//  TalkDetail.swift
//  ModernApp
//
//  Created by Simone Civetta on 15/01/2020.
//  Copyright © 2020 Xebia. All rights reserved.
//

import SwiftUI

struct TalkDetail: View {
    @Binding var talk: Talk
    @EnvironmentObject var session: Session
    var body: some View {
        VStack(alignment: .leading) {
            Text(talk.title)
                .font(.largeTitle)
            if session.isUserLogged {
                Toggle(isOn: $talk.isFavorite) {
                    Text("Favorite?")
                }
            } else {
                Text("Please login to add to favorites")
            }
            Spacer()
        }
        .padding()
    }
}

struct TalkDetail_Previews: PreviewProvider {
    static var previews: some View {
        TalkDetail(talk: .constant(Talk.sample))
            .environmentObject(Session())
    }
}
