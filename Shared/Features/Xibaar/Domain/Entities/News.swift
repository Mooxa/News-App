//
//  News.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 21/05/2021.
//

import Foundation


struct News: Codable, Identifiable , Hashable {
    var id: String
    var title: String
    var photo: String
    var link: String
    var article: String
    var comments: [Comment]
    
    
    #if DEBUG
    static let example = News(id: "qrgthgjgf", title: "adult Labrador retriever", photo: "https://img.dummyapi.io/photo-1564694202779-bc908c327862.jpg", link:  "https://www.instagram.com/teddyosterblomphoto/", article: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…",
                              comments: [Comment(id: "qrgthgjgfffgfgf",comment: "Sweet, fluffy, and served piping hot, our French toast is flown", publishDate: "2021-01-03T00:53:25.492Z", user: User(id: "1pRsh5nXDIH3pjEOZ17A", firstName: "Margarita", lastName: "Vicente", photo: "https://randomuser.me/api/portraits/women/5.jpg", title: "miss", email: "margarita.vicente@example.com")), Comment(id: "sdgfsgdfgf", comment: "Maple French Toast",publishDate: "2021-01-03T00:53:25.492Z", user: User(id: "1pRsh5nXDIH3pjEOZ17A", firstName: "Margarita", lastName: "Vicente", photo: "https://randomuser.me/api/portraits/women/5.jpg", title: "miss", email: "margarita.vicente@example.com"))])
    #endif
}

struct Comment: Codable, Identifiable , Hashable {
    var id: String
    var comment: String
    var publishDate: String
    var user: User
}

struct User:  Codable, Identifiable , Hashable{
    var id: String
    var firstName: String
    var lastName: String
    var photo: String
    var title: String
    var email: String
    var username: String {
        "\(firstName) \(lastName)"
    }
}

