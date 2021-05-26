//
//  ArticleRowView.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import SwiftUI

struct ArticleRowView: View {
    let new: News
    @State var showSheetView = false
    @State var showSheetArticleDetailView: Int? = nil
    @State var selection: Int? = nil
    var body: some View {
        HStack {
            NavigationLink(destination:  ArticleDetailView(new: new), tag: 2, selection: $selection) {
                EmptyView()
                
            }.frame(width: 0).opacity(0.0)
            NavigationLink(destination:  WebViewContent(showSheetView: self.$showSheetView, url: new.link), tag: 1, selection: $selection) {
                EmptyView()
                
            }
            .frame(width: 0).opacity(0.0)
            
            
            RemoteImage(url: new.photo)
                .scaledToFill()
                .frame(width: 100, height: 120)
                .clipped()
                .cornerRadius(12)
                .onTapGesture {
                    self.selection = 1
                }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(new.title)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                Text(new.article)
                    .font(.subheadline)
                    .opacity(0.7)
                    .lineLimit(2)
                Text("Mooxalinsky")
                    .font(.system(size: 13, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.leading)
            }
            .onTapGesture {
                self.selection = 2
            }
            
        }
        
    }
}

struct NewsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRowView(new: News.example)
    }
}
