//
//  HomeCell.swift
//  Bitspark
//
//  Created by Vikhyath on 17/07/19.
//  Copyright © 2019 Vikhyath. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    let view: CellView = {
        
        let v = CellView()
        v.translatesAutoresizingMaskIntoConstraints = false
        
        return v
    }()
    
    let shadow: ShadowView = {
        
        let v = ShadowView()
        v.translatesAutoresizingMaskIntoConstraints = false
        
        return v
    }()
    
    fileprivate func setupCell() {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2.0)
        layer.shadowRadius = 2.0
        layer.shadowOpacity = 0.5
        layer.masksToBounds = false
        layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
        layer.masksToBounds = true
        layer.cornerRadius = 6
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupCell()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(shadow)
        contentView.addSubview(view)
        shadow.fillSuperView()
        view.fillSuperView()
        setupCell()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
