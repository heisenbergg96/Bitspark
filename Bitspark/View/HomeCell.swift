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
       
    fileprivate func setupCell() {
        
        layer.borderColor = UIColor.clear.cgColor
        layer.cornerRadius = 6
        backgroundColor = .white
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        dropShadow(color: .black, opacity: 0.5, offSet: CGSize(width: 0, height: 0), radius: 6, scale: false)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(view)
        view.fillSuperView()
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
    }
}
