//
//  ProgressBarView.swift
//  ProgressBarFun
//
//  Created by Murat Kuran on 09/11/2017.
//  Copyright © 2017 Murat Kuran. All rights reserved.
//

import UIKit

class ProgressBarView: UIView {

    private var _innerProgress: CGFloat = 0.0
    
    var progress: CGFloat {
        get {
            return _innerProgress * bounds.width
        }
        set (newProgress){
            if newProgress > 1.0 {
                _innerProgress = 1.0
            } else if newProgress < 0.0 {
                _innerProgress = 0.0
            } else {
                _innerProgress = newProgress
            }
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        ProgressBarViewDraw.drawProgressBar(frame: bounds, progress: progress)
    }

}
