//
//  Alert.swift
//  Appetizers
//
//  Created by Jatin Singh on 13/03/25.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButtom: Alert.Button
}

struct AlertContext {
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                       message: Text("the data received from the server was invalid. please contact support"),
                                       dismissButtom: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                           message: Text("invalid response from the server"),
                                           dismissButtom: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                      message: Text("there was an issue connecting to the server."),
                                      dismissButtom: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("unable to complete your request at this time."),
                                            dismissButtom: .default(Text("OK")))
}
