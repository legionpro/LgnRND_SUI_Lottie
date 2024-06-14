//
//  LottieAnimationView.swift
//  iOS
//
//  Created by Oleh Poremskyy on 14.06.2024.
//

import SwiftUI
import Lottie

struct LottieAnimationView: View {
    private var animationName = "splashAnimation.json"
    private var playMode: LottieLoopMode = .playOnce
    private var contentMode: UIView.ContentMode = .scaleAspectFit
    private var animationRepeatTime = 3
    private var completionHandler: CompletionHandler? = nil

    init(animationName: String = "splashAnimation.json", playMode: LottieLoopMode = .playOnce, contentMode: UIView.ContentMode = .scaleAspectFit, animationRepeatTime: Int = 3, completionHandler: CompletionHandler? = nil) {
        self.animationName = animationName
        self.playMode = playMode
        self.contentMode = contentMode
        self.animationRepeatTime = animationRepeatTime
        self.completionHandler = completionHandler
    }
}

extension LottieAnimationView {
    
    var body: some View {
                LottieView(animation:.named("splashAnimation.json" ))
                    .configure{animationView in
                        animationView.contentMode = .scaleAspectFit
                    }
                    .playbackMode(.playing(.toProgress(1, loopMode: .repeat(3))))
                    .animationDidFinish{completion in
                        guard let handler = completionHandler else { return }
                        handler()
                    }
                    .frame(width: 300, height: 300, alignment: .center)
    }
}
