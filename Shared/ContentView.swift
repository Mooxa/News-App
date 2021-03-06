//
//  ContentView.swift
//  Shared
//
//  Created by Mouhamed Dieye on 21/05/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: NewsViewModel
    #if os(iOS)
    var body: some View {
        NewsListView()
    }
    #else
    var body: some View {
            Sidebar()
    }
        
    
    #endif
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NewsViewModel())
    }
}
