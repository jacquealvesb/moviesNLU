//
//  ViewController+Constraints.swift
//  moviesNLU
//
//  Created by Jacqueline Alves on 16/09/19.
//  Copyright © 2019 jacqueline.alves.moviesNLU. All rights reserved.
//

import UIKit

extension ViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        self.updateConstraints()
    }
    
    func getOrientation() -> UIDeviceOrientation {
        return UIDevice.current.orientation
    }
    
    func updateConstraints() {
        let orientation = self.getOrientation()
        
        self.lineViewConstraints(orientation)
        self.analyzeButtonConstraints(orientation)
        self.movieTextFieldConstraints()
    }
    
    func analyzeButtonConstraints(_ orientation: UIDeviceOrientation) {
        var constraints: [NSLayoutConstraint] = []
        
        self.analyzeButton.removeFromSuperview()
        self.view.addSubview(analyzeButton)
        
        self.analyzeButton.translatesAutoresizingMaskIntoConstraints = false
        
        if orientation == .portrait || orientation == .faceUp || orientation == .faceDown {
            constraints.append( // Leading constraint
                NSLayoutConstraint(item: self.analyzeButton,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .leading,
                                   multiplier: 1,
                                   constant: 100)
            )
            constraints.append( // Trailing constraint
                NSLayoutConstraint(item: self.analyzeButton,
                                   attribute: .trailing,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .trailing,
                                   multiplier: 1,
                                   constant: -100)
            )
            constraints.append( // Height constraint - aspect ratio 3:1 with itself
                NSLayoutConstraint(item: self.analyzeButton,
                                   attribute: .height,
                                   relatedBy: .equal,
                                   toItem: nil,
                                   attribute: .notAnAttribute,
                                   multiplier: 1,
                                   constant: 56)
            )
            constraints.append( // Align Y
                NSLayoutConstraint(item: self.analyzeButton,
                                   attribute: .centerY,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .centerY,
                                   multiplier: 1,
                                   constant: 0)
            )
            
        } else if orientation == .landscapeLeft || orientation == .landscapeRight {
            constraints.append( // Leading constraint
                NSLayoutConstraint(item: self.analyzeButton,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: self.lineView,
                                   attribute: .trailing,
                                   multiplier: 1,
                                   constant: 50)
            )
            constraints.append( // Trailing constraint
                NSLayoutConstraint(item: self.analyzeButton,
                                   attribute: .trailing,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .trailing,
                                   multiplier: 1,
                                   constant: -50)
            )
            constraints.append( // Height constraint - aspect ratio 3:1 with itself
                NSLayoutConstraint(item: self.analyzeButton,
                                   attribute: .height,
                                   relatedBy: .equal,
                                   toItem: nil,
                                   attribute: .notAnAttribute,
                                   multiplier: 1,
                                   constant: 56)
            )
            constraints.append( // Align Y
                NSLayoutConstraint(item: self.analyzeButton,
                                   attribute: .centerY,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .centerY,
                                   multiplier: 1,
                                   constant: 0)
            )
        }
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    func lineViewConstraints(_ orientation: UIDeviceOrientation) {
        var constraints: [NSLayoutConstraint] = []
        
        self.lineView.removeFromSuperview()
        self.view.addSubview(lineView)
        
        self.lineView.translatesAutoresizingMaskIntoConstraints = false
        
        if orientation == .portrait || orientation == .faceUp || orientation == .faceDown {
            constraints.append( // Leading constraint
                NSLayoutConstraint(item: self.lineView,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .leading,
                                   multiplier: 1,
                                   constant: 50)
            )
            constraints.append( // Trailing constraint
                NSLayoutConstraint(item: self.lineView,
                                   attribute: .trailing,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .trailing,
                                   multiplier: 1,
                                   constant: -50)
            )
            constraints.append( // Height constraint - aspect ratio 3:1 with itself
                NSLayoutConstraint(item: self.lineView,
                                   attribute: .height,
                                   relatedBy: .equal,
                                   toItem: nil,
                                   attribute: .notAnAttribute,
                                   multiplier: 1,
                                   constant: 2)
            )
            constraints.append( // Align Y
                NSLayoutConstraint(item: self.lineView,
                                   attribute: .centerY,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .centerY,
                                   multiplier: 0.5,
                                   constant: 0)
            )
            
        } else if orientation == .landscapeLeft || orientation == .landscapeRight {
            constraints.append( // Leading constraint
                NSLayoutConstraint(item: self.lineView,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .leading,
                                   multiplier: 1,
                                   constant: 50)
            )
            constraints.append( // Width constraint
                NSLayoutConstraint(item: self.lineView,
                                   attribute: .width,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .width,
                                   multiplier: 0.5,
                                   constant: 0)
            )
            constraints.append( // Height constraint - aspect ratio 3:1 with itself
                NSLayoutConstraint(item: self.lineView,
                                   attribute: .height,
                                   relatedBy: .equal,
                                   toItem: nil,
                                   attribute: .notAnAttribute,
                                   multiplier: 1,
                                   constant: 2)
            )
            constraints.append( // Align Y
                NSLayoutConstraint(item: self.lineView,
                                   attribute: .centerY,
                                   relatedBy: .equal,
                                   toItem: self.view,
                                   attribute: .centerY,
                                   multiplier: 1,
                                   constant: 0)
            )
        }
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    func movieTextFieldConstraints() {
        var constraints: [NSLayoutConstraint] = []
        
        self.movieTextField.removeFromSuperview()
        self.view.addSubview(movieTextField)
        
        self.movieTextField.translatesAutoresizingMaskIntoConstraints = false
        
        constraints.append( // Leading constraint
            NSLayoutConstraint(item: self.movieTextField,
                               attribute: .leading,
                               relatedBy: .equal,
                               toItem: self.lineView,
                               attribute: .leading,
                               multiplier: 1,
                               constant: 0)
        )
        constraints.append( // Trailing constraint
            NSLayoutConstraint(item: self.movieTextField,
                               attribute: .trailing,
                               relatedBy: .equal,
                               toItem: self.lineView,
                               attribute: .trailing,
                               multiplier: 1,
                               constant: 0)
        )
        constraints.append( // Height constraint - aspect ratio 3:1 with itself
            NSLayoutConstraint(item: self.movieTextField,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: 56)
        )
        constraints.append( // Align Y
            NSLayoutConstraint(item: self.movieTextField,
                               attribute: .bottom,
                               relatedBy: .equal,
                               toItem: self.lineView,
                               attribute: .top,
                               multiplier: 1,
                               constant: 0)
        )
        
        NSLayoutConstraint.activate(constraints)
        
    }
}

