//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Jatin Singh on 08/03/25.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [self] in
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .InvalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .InvalidURL:
                        alertItem = AlertContext.invalidURL
                    case .InvalidData:
                        alertItem = AlertContext.invalidData
                    case .UnableToComplete:
                        alertItem = AlertContext.unableToComplete
                    
                    }
                }
            }
        }
    }
}

