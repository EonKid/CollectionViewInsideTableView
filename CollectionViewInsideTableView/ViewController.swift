//
//  ViewController.swift
//  CollectionViewInsideTableView
//
//  Created by Dhruv Singh on 07/12/16.
//  Copyright © 2016 Dhruv Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let arrMain = NSMutableArray()
    
    @IBOutlet weak var tblVW: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        let arr1 = [1,2,3,4,5,6,7,8,9,10]
        let arr2 = [1,2,3,4,5,6,7,8,9,10]
        let arr3 = [1,2,3,4,5,6]
        let arr4 = [1,2,3,4,5,6,7,8,9,10]
        let arr5 = [1,2,3,4,5,6,7,8]
        arrMain.add(arr1)
        arrMain.add(arr2)
        arrMain.add(arr3)
        arrMain.add(arr4)
        arrMain.add(arr5)
        tblVW.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
      
        
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return arrMain.count
        
    }
    
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellTV", for: indexPath) as! MyTableViewCell
        let arr = arrMain.object(at: indexPath.row)
      cell.reloadCollectionView(arrData: arr as! NSArray)
        return cell
        
    }

    
}

