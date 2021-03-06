//
//  ViewController.swift
//  CenteredLayoutCollectionView
//
//  Created by akatsuki174 on 2017/06/17.
//  Copyright © 2017年 akatsuki174. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let items = ["ああああああああああああああああ", "いいいいいい", "う", "ええええ", "おお", "かかかか", "ききき", "くくくくくく", "け", "こ", "さささささささ", "しししししししししし", "すすすすすすす", "せせせ", "そそ", "たたた", "ちち", "つつつつつつつ", "ててててて", "と", "ななななななな", "にに", "ぬぬ", "ねねねねね", "ののの", "は", "ひひひ", "ふふふふふふふ", "へへへへへ", "ほほほ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.configureCell()
        cell.keywordLabel.text = items[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if let cell = cell as? CustomCell {
            cell.setupAlignment(index: indexPath.row)
        }
    }

}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width / 2 - 20, height: 40.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }

}

