//
//  ContentView.swift
//  TriviaGame
//
//  Created by Nikunj Thakur on 2022-11-06.
//


import Foundation

struct Answer: Identifiable {
    var id = UUID() // Setting the UUID ourselves inside of the model, because API doesn't return a unique ID for each answer
    var text: AttributedString
    var isCorrect: Bool
}
