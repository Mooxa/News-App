//
//  MacCommentView.swift
//  Xibaar (macOS)
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import SwiftUI

struct MacCommentView: View {
    let new: News
    @State var name: String = ""

    var body: some View {
        VStack{
            Text("Comment(s) \(new.comments.count)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(8)
                .frame(maxWidth: .infinity, alignment: .center)
            
            
            List {
                ForEach(new.comments) { comment in
                    CommentRowView(comment: comment)
                }
            }
            HStack {
                Image("demon-slayer-thumb")
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                
                TextField("Please enter", text: $name)
                    .frame(height: 70)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            .padding(8)
        }
    }
}

struct MacCommentView_Previews: PreviewProvider {
    static var previews: some View {
        MacCommentView(new: News.example)
    }
}
