//
//  ArticleRowView.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import SwiftUI

struct ArticleRowView: View {
    let new: News
    var body: some View {
        HStack {
            RemoteImage(url: new.photo)
                     .scaledToFill()
                     .frame(width: 100, height: 120)
                     .clipped()
                     .cornerRadius(12)
                 
                 
                 VStack(alignment: .leading, spacing: 8) {
                     Text(new.title)
                         .font(.headline)
                     
                     Text(new.article)
                         .font(.subheadline)
                         .opacity(0.7)
                         .lineLimit(2)

                     Text("Mooxalinsky")
                         .font(.system(size: 13, weight: .medium, design: .rounded))
                         .multilineTextAlignment(.leading)
                 }
             }
     
    }
}

struct NewsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRowView(new: News.example)
    }
}
