//
//  MacArticleListView.swift
//  Xibaar (macOS)
//
//  Created by Mouhamed Dieye on 25/05/2021.
//

import SwiftUI

struct MacArticleListView: View {
    
    @EnvironmentObject var viewModel: NewsViewModel
    
    var body: some View {
        
        List {
            ForEach(viewModel.news) { article in
                NavigationLink(destination: MacArticleDetailView(new: article).environmentObject(NewsViewModel())) {
                    MacArticleRowView(new: article)
                }
            }
        }
        .frame(width: 300)
        .navigationTitle("All")
        
        
    }
}

struct MacArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        MacArticleListView()
            .environmentObject(NewsViewModel())
    }
}
