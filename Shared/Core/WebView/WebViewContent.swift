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
                 .navigationBarItems(leading:
                             HStack {
                                Button(action: {
                                    self.webViewStateModel.goBack.toggle()
                                }) {
                                    Image(systemName: "chevron.left")
                                }.disabled(!webViewStateModel.canGoBack)
                                Button(action: {
                                    self.webViewStateModel.goBack.toggle()
                                }) {
                                    Image(systemName: "chevron.right")
                                }.disabled(!webViewStateModel.canGoBack)
                             }, trailing:
                             HStack {
                                Button(action: {
                                    self.webViewStateModel.loading.toggle()
                                }) {
                                    Image(systemName: "arrow.clockwise")
                                }
                                
                                Button(action: {
                                    self.showSheetView = false
                                }) {
                                    Text("Done")
                                }

                             }
                         )
//                 .navigationBarItems(trailing:
//                     Button("Last Page") {
//                         self.webViewStateModel.goBack.toggle()
//                     }.disabled(!webViewStateModel.canGoBack)
//                 )
//                 .navigationBarItems(leading:
//                     Button("Last Page") {
//                         self.webViewStateModel.goBack.toggle()
//                     }.disabled(!webViewStateModel.canGoBack)
//                 )
             
          }
             
         }
    
}

struct WebViewContent_Previews: PreviewProvider {
    static var previews: some View {
        WebViewContent(showSheetView:  .constant(true), url: "https://www.google.com")
    }
}
