//
//  TalkDetail.swift
//  ModernApp
//
//  Created by Simone Civetta on 15/01/2020.
//  Copyright © 2020 Xebia. All rights reserved.
//

import SwiftUI

struct TalkDetail: View {
    @State var talk: Talk
    var body: some View {
        VStack(alignment: .leading) {
            Text(talk.title)
                .font(.largeTitle)
            Toggle(isOn: .constant(true)) {
                Text("Favorite?")
            }
            Spacer()
        }
        .padding()
    }
}

struct TalkDetail_Previews: PreviewProvider {
    static var previews: some View {
        TalkDetail(talk: Talk.sample)
    }
}
