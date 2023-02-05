//
//  APICall.swift
//  Tinkoff_test
//
//  Created by Григорий Койнаш on 04.02.2023.
//

import Foundation

final class APicaller {
//    Create one instanse of class to access
    static let shared = APicaller()
    
    struct Constansts {
        static let topHeadlinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&apiKey=a41098d92611441da895dcf4c463a668")
    }
    private init() {}
    
    public func getTopStories(completion: @escaping (Result<[Article], Error>) -> Void) {
        guard let url = Constansts.topHeadlinesURL else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    print("It's working, number of artciles \(result.articles.count), and the first article is about \(result.articles[0].description)")
                    completion(.success(result.articles))
                }
                catch {
                    completion(.failure(error))
                }
            }
        }
        task.resume()
    }
}
    

