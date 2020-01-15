//
//  TalkRow.swift
//  ModernApp
//
//  Created by Simone Civetta on 15/01/2020.
//  Copyright © 2020 Xebia. All rights reserved.
//

import SwiftUI

struct TalkRow: View {
    let talk: Talk
    var body: some View {
        HStack {
            Text(talk.title)
            Spacer()
            ZStack {
                Circle()
                    .stroke(lineWidth: 4)
                    .frame(width: 20, height: 20)
                if talk.isFavorite {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 18, height: 18)
                }
            }
        }
    }
}

struct TalkRow_Previews: PreviewProvider {
    static var previews: some View {
        TalkRow(talk: Talk.sample)
    }
}
