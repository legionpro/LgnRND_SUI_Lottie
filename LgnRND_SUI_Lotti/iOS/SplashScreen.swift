//
//  SplashScreen.swift
//  iOS
//
//  Created by Oleh Poremskyy on 14.06.2024.
//

import SwiftUI


struct SplashScreen {
    private var completionHandler: CompletionHandler? = nil
    
    init(completionHandler: CompletionHandler? = nil) {
        self.completionHandler = completionHandler
    }
}

extension SplashScreen: View {
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .zIndex(1)
            LottieAnimationView(completionHandler: completionHandler )
                .zIndex(2)
        }
        
    }
}
