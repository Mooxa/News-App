//
//  WebViewModel.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import SwiftUI


///// Implementaton
class WebViewStateModel: ObservableObject {
    @Published var pageTitle: String = "Web View"
    @Published var loading: Bool = false
    @Published var canGoBack: Bool = false
    @Published var goBack: Bool = false
}
