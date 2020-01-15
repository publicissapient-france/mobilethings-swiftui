import SwiftUI

extension Talk: Identifiable { }

struct TalkList: View {
    let talks: [Talk]
    var body: some View {
        NavigationView {
            List(talks) { talk in
                NavigationLink(destination: TalkDetail(talk: talk)) {
                    TalkRow(talk: talk)
                }
            }
            .navigationBarTitle("FrenchKit")
        }
    }
}

struct TalkList_Previews: PreviewProvider {
    static var previews: some View {
        TalkList(talks: Talk.sampleList)
    }
}
