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
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(viewModel.news, id: \.self) { article in
                    WatchArticleRow(new: article)
                }
            }
        }
    }
}

struct WatchArticleList_Previews: PreviewProvider {
    static var previews: some View {
        WatchArticleList()
    }
}
