//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Jatin Singh on 23/02/25.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer : Appetizer
    
    var body: some View {
        HStack {
            Image(.chicken)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
