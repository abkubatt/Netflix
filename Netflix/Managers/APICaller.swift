//
//  APICaller.swift
//  Netflix
//
//  Created by Abdulmajit Kubatbekov on 26.11.22.
//

import Foundation

enum APIError: Error {
    case failedToGetData
}

struct Constant {
    static let API_KEY = "697d439ac993538da4e3e60b54e762cd"
    static let baseURL = "https://api.themoviedb.org"
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constant.baseURL)/3/trending/all/day?api_key=\(Constant.API_KEY)") else {return}
     
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            guard let data = data, error == nil else{
                return
            }
      
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }catch{
                completion(.failure(error))
            }
        }
        
        
        task.resume()
    }
}



//let task = URLSession.shared.dataTask(with: URLRequest(url: url)), completionHandler: {
//    data, _ , error in guard let data = data, error == nil else{
//        return
//    }
