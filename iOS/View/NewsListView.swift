//
//  NewsListView.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import SwiftUI

struct NewsListView: View {
    let viewModel = NewsViewModel()
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.news) { article in
//                    NavigationLink(destination: ArticleDetailView(new: article)) {
                        // existing contents…
                        ArticleRowView(new: article)
//                    }
                    
                }
            }
            .navigationBarTitle(Text("News App"), displayMode: .automatic)
        }
        .listStyle(InsetGroupedListStyle())
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
