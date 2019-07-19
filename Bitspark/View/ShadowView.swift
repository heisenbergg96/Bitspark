//
//  ShadowView.swift
//  Bitspark
//
//  Created by Vikhyath on 17/07/19.
//  Copyright © 2019 Vikhyath. All rights reserved.
//
import UIKit

class ShadowView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = .yellow
    }
    
    
    
    override var bounds: CGRect {
        didSet {
            setupShadow()
        }
    }
    
    private func setupShadow() {
        
        layer.cornerRadius = 4
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 3
        layer.shadowOpacity = 0
        layer.shadowPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: 8, height: 8)).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
    }
}
