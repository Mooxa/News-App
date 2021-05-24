//
//  XibaarApp.swift
//  WatchNewsApp Extension
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import SwiftUI

@main
struct XibaarApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
