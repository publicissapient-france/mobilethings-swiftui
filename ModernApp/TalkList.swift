import SwiftUI

extension Talk: Identifiable { }

struct TalkList: View {
    @State var talks: [Talk]
    var body: some View {
        NavigationView {
            List(talks.indices) { index in
                NavigationLink(destination: TalkDetail(talk: self.$talks[index])) {
                    TalkRow(talk: self.talks[index])
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
