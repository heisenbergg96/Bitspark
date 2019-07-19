//
//  TitleView.swift
//  Bitspark
//
//  Created by Vikhyath on 17/07/19.
//  Copyright © 2019 Vikhyath. All rights reserved.
//

import UIKit

class TitleView: UIView {
    
    let imageView: UIImageView = {
        
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = true
        iv.backgroundColor = .black
        
        return iv
    }()
    
    fileprivate func setupConstraints() {
        
//        imageView.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2))
//        imageView.fillSuperView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        
        setupConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        imageView.fillSuperView()
        layer.cornerRadius = frame.height/2
        imageView.layer.cornerRadius = imageView.frame.height/2
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
