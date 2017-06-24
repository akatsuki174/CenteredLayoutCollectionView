//
//  CustomCell.swift
//  CenteredLayoutCollectionView
//
//  Created by akatsuki174 on 2017/06/17.
//  Copyright © 2017年 akatsuki174. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var keywordLabel: UILabel!    
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCell()
    }
    
    private func configureCell() {
        keywordLabel.backgroundColor = UIColor.gray
        keywordLabel.layer.cornerRadius = 10
        keywordLabel.layer.borderColor = UIColor.black.cgColor
        keywordLabel.layer.borderWidth = 1.0
        keywordLabel.layer.masksToBounds = true
        keywordLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupAlignment(index: Int) {
        keywordLabel.sizeToFit()
        if index % 2 == 0 { // 左側のセル
            leadingConstraint.isActive = false
            trailingConstraint.isActive = true
        } else { // 右側のセル
            leadingConstraint.isActive = true
            trailingConstraint.isActive = false
        }
    }

}
