//
//  CellView.swift
//  Bitspark
//
//  Created by Vikhyath on 17/07/19.
//  Copyright © 2019 Vikhyath. All rights reserved.
//

import UIKit

class CellView: UIView {
    
    let titleView: TitleView = {
        
        let t = TitleView()
        t.translatesAutoresizingMaskIntoConstraints = false
        t.backgroundColor = UIColor(red: 215/255, green: 215/255, blue: 218/255, alpha: 1)
        t.clipsToBounds = true
        t.layer.cornerRadius = t.frame.height / 2
        
        return t
    }()
    
    let amountLabel: UILabel = {
        
        let a = UILabel()
        a.translatesAutoresizingMaskIntoConstraints = false
        a.text = "0.00"
        a.font = UIFont.systemFont(ofSize: 35, weight: .medium)
        
        return a
    }()
    
    let footerTitle: UILabel = {
        
        let a = UILabel()
        a.translatesAutoresizingMaskIntoConstraints = false
        a.text = "Bitcoin"
        a.textColor = UIColor(red: 215/255, green: 215/255, blue: 218/255, alpha: 1)
        a.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        
        return a
    }()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        addSubview(titleView)
        addSubview(amountLabel)
        addSubview(footerTitle)
        setupView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupView() {
        
        titleView.anchor(top: titleView.superview?.topAnchor, bottom: nil, leading: titleView.superview?.leadingAnchor, trailing: nil, padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 0), size: CGSize(width: 100, height: 35))
        titleView.layer.cornerRadius = titleView.frame.height/2
        amountLabel.leadingAnchor.constraint(equalTo: titleView.leadingAnchor).isActive = true
        amountLabel.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 20).isActive = true
        footerTitle.anchor(top: nil, bottom: footerTitle.superview?.bottomAnchor, leading: footerTitle.superview?.leadingAnchor, trailing: nil, padding: UIEdgeInsets(top: 0, left: 24, bottom: 20, right: 0))
    }
}
