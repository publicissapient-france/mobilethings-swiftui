import SwiftUI

extension Talk: Identifiable { }

struct TalkList: View {
    @State var talks: [Talk]
    @EnvironmentObject var session: Session

    var body: some View {
        NavigationView {
            List(talks.indices) { index in
                NavigationLink(destination: TalkDetail(talk: self.$talks[index])) {
                    TalkRow(talk: self.talks[index])
                }
            }
            .navigationBarTitle("FrenchKit")
            .navigationBarItems(trailing: LoginButton())
        }
    }
}

struct LoginButton: View {
    @EnvironmentObject var session: Session
    var body: some View {
        Button(action: {
            self.session.isUserLogged.toggle()
        }) {
            if session.isUserLogged {
                Text("Logout")
            } else {
                Text("Login")
            }
        }
    }
}

struct TalkList_Previews: PreviewProvider {
    static var previews: some View {
        TalkList(talks: Talk.sampleList)
            .environmentObject(Session())
    }
}
