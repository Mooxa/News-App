//
//  GetNewsListUseCase.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import Foundation

class GetNewsListUseCase {
    
    private let repository: NewsRepository
    
    required init(repository: NewsRepository) {
        self.repository = repository
    }
    
    func execute(completion: @escaping (Result<[News], NetworkingErrors>) -> Void) {
        self.repository.getNewsList(completion: completion)
    }
}
