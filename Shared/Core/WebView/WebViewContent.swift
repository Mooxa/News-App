//
//  WebViewContent.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import SwiftUI

struct WebViewContent: View {
    @Binding var showSheetView: Bool
    let url: String
    @ObservedObject var webViewStateModel: WebViewStateModel = WebViewStateModel()
    var body: some View {
        
        NavigationView {
            LoadingView(isShowing: .constant(webViewStateModel.loading)) {
                WebView(url: URL(string: url)!, webViewStateModel: self.webViewStateModel)
            }
            .navigationBarTitle(Text(webViewStateModel.pageTitle), displayMode: .inline)
            .navigationBarItems(trailing: HStack {
                                        Button(action: {
                                            self.webViewStateModel.loading.toggle()
                                        }) {
                                            Image(systemName: "arrow.clockwise")
                                        }  })
            
            
        }
        
    }
    
}

struct WebViewContent_Previews: PreviewProvider {
    static var previews: some View {
        WebViewContent(showSheetView:  .constant(true), url: "https://www.google.com")
    }
}
