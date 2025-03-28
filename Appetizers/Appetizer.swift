//
//  Appetizer.swift
//  Appetizers
//
//  Created by Jatin Singh on 23/02/25.
//

import Foundation

struct Appetizer : Decodable, Identifiable {
    let id : Int
    let name : String
    let description : String
    let price: Double
    let imageURL : String
    let calories :Int
    let protein : Int
    let carbs : Int
}

struct AppetizerResponse: Decodable {
    let request : [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 01, name: "Chicken", description: "spicy non veg food", price: 200, imageURL: "", calories: 4, protein: 10, carbs: 2)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
