//
//  ContentView.swift
//  Shared
//
//  Created by Mouhamed Dieye on 21/05/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: NewsViewModel
    #if os(iOS)
    var body: some View {
        NewsListView()
    }
    #else
    var body: some View {
        NavigationView {
            Sidebar()
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button(action: {
                            NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
                        }) {
                            Image(systemName: "sidebar.left")
                        }
                        .keyboardShortcut("S", modifiers: .command)
                    }
                }
            MacArticleDetailView(new: viewModel.selectedItem ?? News.example)
                .environmentObject(self.viewModel)
          MacCommentView(new: viewModel.selectedItem ?? News.example)
            .environmentObject(self.viewModel)
        }
        .navigationTitle("News App")
    }
    #endif
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NewsViewModel())
    }
}
