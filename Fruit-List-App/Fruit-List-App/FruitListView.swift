//
//  FruitListView.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class FruitListView: UIViewController, FruitListViewProtocol {
   
    var presenter : FruitListPresenterProtocol?
    var arrFruitList : [Fruit] = [Fruit]()
    
    @IBOutlet weak var tblView : UITableView!{
        didSet{
            tblView.delegate = self
            tblView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FruitListWireFrame.createFruitListModule(self)
        presenter?.viewDidLoad()
    }
    
    func updateFruitList(_ objFruitList: [Fruit]) {
        arrFruitList = objFruitList
        tblView.reloadData()
    }
}

extension FruitListView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "fruitCell", for: indexPath)
        let fruit = arrFruitList[indexPath.row]
        cell.textLabel?.text = fruit.name
        cell.detailTextLabel?.text = fruit.vitamin
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFruitList.count
    }
    
}
