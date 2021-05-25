//
//  SideBar.swift
//  Xibaar (macOS)
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import SwiftUI

struct Sidebar: View {
  @EnvironmentObject var viewModel: NewsViewModel
  var body: some View {
    List(viewModel.news, id: \.self, selection: $viewModel.selectedItem) { article in
        MacArticleRowView(new: article)
    }.listStyle(SidebarListStyle())
  }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
            .environmentObject(NewsViewModel())
    }
}


