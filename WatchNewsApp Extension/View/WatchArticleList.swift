//
//  WatchArticleList.swift
//  WatchNewsApp Extension
//
//  Created by Mouhamed Dieye on 24/05/2021.
//

import SwiftUI

struct WatchArticleList: View {
    @EnvironmentObject var viewModel:  NewsViewModel
    var body: some View {
        NavigationView{
            List(viewModel.news, id: \.self) { article in
                NavigationLink(destination: WatchArticleDetailView(new: article)) {
                    // existing contents…
                    WatchArticleRow(new: article)
                }
                
            }
            .navigationBarTitle(Text("News App"))
        }
        
    }
}

struct WatchArticleList_Previews: PreviewProvider {
    static var previews: some View {
        WatchArticleList()
    }
}
