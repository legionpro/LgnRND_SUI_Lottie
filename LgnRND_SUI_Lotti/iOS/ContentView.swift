//
//  ContentView.swift
//  LgnRND_SUI_Lotti
//
//  Created by Oleh Poremskyy on 14.06.2024.
//

import SwiftUI
import Lottie


struct MainView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.green).zIndex(1)
                Text("working spac").zIndex(2)
            }
            .navigationTitle("Main Screen")
        }
    }
}

struct ContentView {
    
    @State private var splashScreenFlag = true
    private let backSlideTransition = AnyTransition.asymmetric( insertion: .move(edge: .trailing), removal: .move(edge: .leading))
}

extension ContentView: View {
    
    var body: some View {
        ZStack{
            if !splashScreenFlag {
                MainView()
                    .transition(backSlideTransition)
                    .zIndex(2)
            } else {
                SplashScreen( completionHandler: {
                        withAnimation{
                            splashScreenFlag.toggle()
                        }
                })
                .foregroundColor(.blue)
                .transition(backSlideTransition)
                .zIndex(1)
            }
            
        }
    }
}
