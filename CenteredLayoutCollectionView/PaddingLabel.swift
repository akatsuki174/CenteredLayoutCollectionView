//
//  PaddingLabel.swift
//  CenteredLayoutCollectionView
//
//  Created by akatsuki174 on 2017/06/25.
//  Copyright © 2017年 akatsuki174. All rights reserved.
//

import UIKit

class PaddingLabel : UILabel {
    var insets = UIEdgeInsetsMake(0, 0, 0, 0)
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
    
    override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.height += insets.top + insets.bottom
        contentSize.width += insets.left + insets.right
        return contentSize
    }
}
