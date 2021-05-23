//
//  MacArticleDetail.swift
//  Xibaar (macOS)
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import SwiftUI

struct MacArticleDetail: View {
    @EnvironmentObject var vm: NewsViewModel
    
    let new: News
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                RemoteImage(url: new.photo)
                    .aspectRatio(contentMode: .fit)
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
        MacArticleDetail(new: News.example)
    }
}
