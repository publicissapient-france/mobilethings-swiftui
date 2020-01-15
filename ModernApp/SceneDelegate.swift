import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            // TODO: Uncomment this line
            window.rootViewController = UIHostingController(rootView:
                TalkList(talks: Talk.sampleList)
                    .environmentObject(Session())
            )
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

