//
//  NewsRepository.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import Foundation

protocol NewsRepository {
    func getNewsList(completion: @escaping (Result<[News], NetworkingErrors>) -> Void)
}
