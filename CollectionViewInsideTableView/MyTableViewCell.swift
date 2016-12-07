//
//  MyTableViewCell.swift
//  CollectionViewInsideTableView
//
//  Created by Dhruv Singh on 07/12/16.
//  Copyright © 2016 Dhruv Singh. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource{

    var arrTemp = NSArray()
    @IBOutlet weak var cv: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func reloadCollectionView(arrData:NSArray) {
        arrTemp = arrData
        cv.delegate = self
        cv.dataSource = self
        cv.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //MARK: - COLLECTIONVIEW DELEGATE AND DATASOURCE
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
    
        //YOU CAN FIRE DELEGATE 
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return arrTemp.count
        
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
     {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCV", for: indexPath) as! InsideCollectionViewCell
    cell.lblNumber.text = "\(indexPath.row+1)"
        return cell
    }

}
