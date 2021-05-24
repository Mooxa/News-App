//
//  WatchArticleRow.swift
//  WatchNewsApp Extension
//
//  Created by Mouhamed Dieye on 24/05/2021.
//

import SwiftUI

struct WatchArticleRow: View {
    @EnvironmentObject var viewModel:  NewsViewModel
    let new: News
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            RemoteImage(url: new.photo)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .frame(width: 100, height: 100)
            
            Text(new.title)
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(2)
                .frame(maxWidth: .infinity,alignment: .center)
        }
        
    }
}

struct WatchArticleRow_Previews: PreviewProvider {
    static var previews: some View {
        WatchArticleRow(new: News.example)
    }
}
