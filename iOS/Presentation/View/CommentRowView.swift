//
//  CommentRowView.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import SwiftUI

struct CommentRowView: View {
    let comment: Comment
    var body: some View {
            VStack(alignment: .leading){
                HStack{
                    RemoteImage(url: comment.user.photo)
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                    VStack(alignment: .leading) {
                        Text(comment.user.username)
                            .font(.headline)
                            .padding(4)
                        Text(comment.publishDate.stringToDate())
                            .font(.footnote)
                    }
                }
                .padding(4)
                
                Text(comment.comment)
                    .font(.body)
                
                
            }
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: 150,
                  alignment: .topLeading
                )
            
        
        
    }
}

struct CommentRowView_Previews: PreviewProvider {
    static var previews: some View {
        CommentRowView(comment: News.example.comments[0])
    }
}
