//
//  ContentView.swift
//  Shared
//
//  Created by Mouhamed Dieye on 21/05/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel:  NewsViewModel
    #if os(iOS)
    var body: some View {
        NewsListView()
            .navigationViewStyle(StackNavigationViewStyle())
    }
    #else
    var body: some View {
        NavigationView {
            Sidebar()
                   .toolbar {
                     ToolbarItem(placement: .automatic) {
                       Button(action: {  }) {
                         Image(systemName: "arrow.clockwise")
                       }
                       .keyboardShortcut("R", modifiers: .command)
                     }
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
            
            MacCommentView(new: viewModel.selectedItem ?? News.example)
             }

    }
    #endif
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
