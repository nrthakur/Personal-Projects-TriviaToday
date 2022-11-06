//
//  ContentView.swift
//  TriviaGame
//
//  Created by Nikunj Thakur on 2022-11-06.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
    NavigationView {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("Trivia Today")
                    .lilacTitle()
                    
                    Text("Test your general knowledge today!")
                        .foregroundColor(Color("AccentColor"))
                }
                
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "Play Now!")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
