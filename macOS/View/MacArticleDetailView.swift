//
//  MacArticleDetail.swift
//  Xibaar (macOS)
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import SwiftUI

struct MacArticleDetailView: View {
    
    let new: News

    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                RemoteImage(url: new.photo)
                Text(new.title)
                    .font(.subheadline)
                    .fontWeight(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.white)
                    .background(Color.black.opacity(0.2))
            }
            Text(new.article)
                .padding(8)
                .font(.body)
            
        }
        
    }
}

struct MacArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
        MacArticleDetailView(new: News.example)
    }
}
