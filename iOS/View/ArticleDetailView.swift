//
//  ArticleDetailView.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import SwiftUI

struct ArticleDetailView: View {
    let new: News
    @State var name: String = ""
    @ObservedObject var webViewStateModel: WebViewStateModel = WebViewStateModel()
    @State var showSheetView = false
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ZStack(alignment: .bottomTrailing){
                        RemoteImage(url: new.photo)
                        Text(new.title)
                            .font(.subheadline)
                            .fontWeight(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color.white)
                            .background(Color.black.opacity(0.2))
                    }.frame(width: .infinity, height: 300)
                    
                    Spacer()
                    Text(new.article)
                        .padding(8)
                        .font(.subheadline)
                        .opacity(0.7)
                    
                    
                    Text("Comment(s) \(new.comments.count)")
                        .padding(8)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
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
                        .padding(6)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }
                .padding(8)
                .background(Color.gray)
            }
            .navigationBarTitle(Text("Detail"), displayMode: .inline)
            .navigationBarItems(trailing:
                                    HStack {
                                        Button(action: {
                                            self.showSheetView = false
                                        }) {
                                            Text("Done")
                                        }
                                        
                                    }
            )
        }
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ArticleDetailView(new: News.example)
        }
    }
}
