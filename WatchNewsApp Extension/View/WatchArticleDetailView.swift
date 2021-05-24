//
//  WatchArticleDetailView.swift
//  WatchNewsApp Extension
//
//  Created by Mouhamed Dieye on 24/05/2021.
//

import SwiftUI

struct WatchArticleDetailView: View {
    
    let new: News
    var body: some View {
        ScrollView{
            VStack{
                ZStack(alignment: .bottomTrailing){
                    RemoteImage(url: new.photo)
                        .frame(width: .infinity, height: 100)
                    Text(new.title)
                        .font(.subheadline)
                        .fontWeight(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.white)
                        .background(Color.black.opacity(0.2))
                }
                
                Spacer()
                Text(new.article)
                    .padding(8)
                    .font(.footnote)
                    .opacity(0.7)
            }
        }
        
    }
}

struct WatchArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WatchArticleDetailView(new: News.example)
    }
}
