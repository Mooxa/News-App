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
    @State var showSheetArticleDetailView = false
    var body: some View {
        HStack {
            Button(action: {
                self.showSheetView.toggle()
            }) {
                RemoteImage(url: new.photo)
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .clipped()
                    .cornerRadius(12)
            }
            .buttonStyle(BorderlessButtonStyle())
            .sheet(isPresented: $showSheetView) {
                WebViewContent(showSheetView: self.$showSheetView, url: new.link)
            }
            
            Button(action: {
                self.showSheetArticleDetailView.toggle()
                
            }) {
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
            }
            .buttonStyle(BorderlessButtonStyle())
            .sheet(isPresented: $showSheetArticleDetailView) {
                ArticleDetailView(new: new)
            }
        }
        
    }
}

struct NewsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRowView(new: News.example)
    }
}
