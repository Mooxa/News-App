//
//  NewsListDataSource.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import Foundation

protocol NewsListDataSource {
    func getNewsList(completion: @escaping (Result<[News], NetworkingErrors>) -> Void)

}


struct NewsListDataSourceImpl: NewsListDataSource {
    func getNewsList(completion: @escaping (Result<[News], NetworkingErrors>) -> Void) {
//        let news = Bundle.main.decode([News].self, from: "xibaar.json")
//      completion(.success(news))
        
    }
}
