//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Jatin Singh on 23/02/25.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    
    private let appetizerULR = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(completed: @escaping(Result<[Appetizer], APError>) -> Void){
        guard let url = URL(string: appetizerULR) else {
            completed(.failure(.InvalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.UnableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.InvalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.InvalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
             }
            catch {
                completed(.failure(.InvalidData))
            }
        }
        
        task.resume()
        
    }
}
