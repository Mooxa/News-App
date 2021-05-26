//
//  MacArticleDetail.swift
//  Xibaar (macOS)
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import SwiftUI

struct MacArticleDetailView: View {
    
    let new: News
    @State var name: String = ""
    
    
    var body: some View {
        VStack {
            ScrollView{
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
                .frame(height: 200)
                Text(new.article)
                    .padding(8)
                    .font(.body)
                
                Text("Comment(s) \(new.comments.count)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(new.comments) { comment in
                    CommentRowView(comment: comment)
                }
            }
            
            
            HStack {
                Image("demon-slayer-thumb")
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                TextField("Please enter", text: $name)
                    .frame(height: 50)
                    .textFieldStyle(PlainTextFieldStyle())
                    // Text alignment.
                    .multilineTextAlignment(.leading)
                    // Cursor color.
                    .accentColor(.white)
                    // Text color.
                    .foregroundColor(.blue)
                    // Text/placeholder font.
                    .font(.title.weight(.semibold))
                    // TextField spacing.
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                           .foregroundColor(.clear)
                            .border(Color.white, width: 2))
                
            }
            .padding(8)
        }
        .navigationTitle("Title")
        
        
        
    }
}

struct MacArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
        MacArticleDetailView(new: News.example)
    }
}
