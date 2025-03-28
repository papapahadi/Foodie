//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Jatin Singh on 23/02/25.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
                .navigationTitle("🍔 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.message, message: alertItem.message, dismissButton: alertItem.dismissButtom)
        }
    }
    
}

#Preview {
    AppetizerListView()
}
