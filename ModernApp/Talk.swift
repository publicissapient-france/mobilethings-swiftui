import Foundation

struct Talk {
    let id: UUID
    let title: String
    let description: String
    var isFavorite: Bool = false
}

extension Talk {
    static let sample = Talk(id: UUID(), title: "Understanding SwiftUI", description: "Lorem ipsum dolor")
    static let sampleFavorite = Talk(id: UUID(), title: "Understanding SwiftUI", description: "Lorem ipsum dolor", isFavorite: true)
    static let sampleList = [
        Talk(id: UUID(), title: "Understanding SwiftUI", description: "Lorem ipsum dolor"),
        Talk(id: UUID(), title: "Understanding Combine", description: "Lorem ipsum dolor"),
        Talk(id: UUID(), title: "What is UIKit will never die", description: "Lorem ipsum dolor"),
        Talk(id: UUID(), title: "Swift 5.2 in practice", description: "Lorem ipsum dolor")
    ]
}
