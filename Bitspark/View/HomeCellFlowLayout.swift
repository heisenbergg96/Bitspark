//
//  HomeCellFlowLayout.swift
//  Bitspark
//
//  Created by Vikhyath on 17/07/19.
//  Copyright © 2019 Vikhyath. All rights reserved.
//

//
//  StretchHeaderLayout.swift
//  Stretch Header
//
//  Created by Vikhyath on 25/01/19.
//  Copyright © 2019 Vikhyath. All rights reserved.
//

import UIKit

class HomeCellLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        minimumLineSpacing = 30
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
