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
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return 10
        
    }
    
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellTV", for: indexPath) as! MyTableViewCell
      cell.reloadCollectionView()
        return cell
        
    }

    
}

