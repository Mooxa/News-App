//
//  WatchArticleRow.swift
//  WatchNewsApp Extension
//
//  Created by Mouhamed Dieye on 24/05/2021.
//

import SwiftUI

struct WatchArticleRow: View {
    let new: News
    var body: some View {
        HStack(alignment: .center, spacing: 8){
            RemoteImage(url: new.photo)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .frame(width: 50, height: 50)
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
