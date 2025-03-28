//
//  LoadingView.swift
//  Appetizers
//
//  Created by Jatin Singh on 13/03/25.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
    
    
    func makeUIView(context: Context) -> some UIView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor(named: "brandPrimary")
        
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
}
