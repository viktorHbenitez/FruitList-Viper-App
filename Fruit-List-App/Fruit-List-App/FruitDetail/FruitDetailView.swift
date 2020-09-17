//
//  FruitDetailView.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class FruitDetailView: UIViewController, FruitDetailViewProtocol {
    
    @IBOutlet private weak var vwImage : UIImageView!
    @IBOutlet private weak var lblFruitName : UILabel!
    @IBOutlet private weak var lblFruitVitamin : UILabel!
    
    
    var presenter : FruitDetailPresenterProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    func showFruitDetail(with fruit: Fruit) {
        navigationItem.title = fruit.name
        vwImage.image = UIImage(named: fruit.name)
        lblFruitName.text = fruit.name
        lblFruitVitamin.text = fruit.vitamin
    }
    
}


