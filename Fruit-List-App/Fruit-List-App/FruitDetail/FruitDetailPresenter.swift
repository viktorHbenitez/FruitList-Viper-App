//
//  FruitDetailPresenter.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class FruitDetailPresenter: FruitDetailPresenterProtocol {
    var wireframe: FruitDetailWireFrameProtocol?
    weak var view: FruitDetailViewProtocol?
    var objFruit : Fruit?
    
    
    func viewDidLoad() {
        view?.showFruitDetail(with: objFruit!)
    }
    
    func backButtonPressed(from view: UIViewController) {
        
    }
}
