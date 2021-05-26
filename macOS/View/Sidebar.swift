//
//  SideBar.swift
//  Xibaar (macOS)
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import SwiftUI
enum NavigationItem {
  case all
  case favorites
}

struct Sidebar: View {
    @EnvironmentObject var viewModel: NewsViewModel
    
    @State var selection: NavigationItem? = .all

    var sideBar: some View {
      List(selection: $selection) {
        NavigationLink(
          destination: MacArticleListView(),
          tag: NavigationItem.all,
          selection: $selection
        ) {
          Label("All", systemImage: "list.bullet")
        }
        .tag(NavigationItem.all)
        NavigationLink(
          destination: MacFavoritesListView(),
          tag: NavigationItem.favorites,
          selection: $selection
        ) {
          Label("Favorites", systemImage: "heart")
        }
        .tag(NavigationItem.favorites)
      }
//      // 3
//      .navigationTitle("News")
                 //Set Sidebar Width (and height)
                 .frame(minWidth: 150, idealWidth: 250, maxWidth: 300)
      .listStyle(SidebarListStyle())
      .toolbar {
        // 4
        ToolbarItem {
          Button(action: toggleSideBar) {
            Label("Toggle Sidebar", systemImage: "sidebar.left")
          }
        }
      }
    }

    var body: some View {
      NavigationView {
        sideBar
            .navigationTitle("News")
        Text("Select a category")
          .foregroundColor(.secondary)
        Text("Select an Article")
          .foregroundColor(.secondary)
      }
    }

    func toggleSideBar() {
      NSApp.keyWindow?.firstResponder?.tryToPerform(
        #selector(NSSplitViewController.toggleSidebar),
        with: nil)
    }

}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
            .environmentObject(NewsViewModel())
    }
}


