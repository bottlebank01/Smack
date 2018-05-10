//
//  GradientView.swift
//  Smack
//
//  Created by Keith Smith on 10/05/2018.
//  Copyright © 2018 Slooks Ltd. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable var bottomColor: UIColor = UIColor.green {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable var middleColor: UIColor = UIColor.red {
        didSet {
            self.setNeedsLayout()
        }
    }

    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor ]
        //gradientLayer.startPoint = CGPoint( x: 0, y: 0 )
        //gradientLayer.endPoint = CGPoint( x: 1, y: 1 )
        gradientLayer.startPoint = CGPoint( x: 0.0, y: 0.0 )
        gradientLayer.endPoint = CGPoint( x: 1.0, y: 1.0 )
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer( gradientLayer, at: 0 )
    }
}
