//
//  NewsViewModel.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import Foundation

class NewsViewModel: ObservableObject  {
    let news = Bundle.main.decode([News].self, from: "news.json")

    @Published var selectedItem: News? = nil

}
