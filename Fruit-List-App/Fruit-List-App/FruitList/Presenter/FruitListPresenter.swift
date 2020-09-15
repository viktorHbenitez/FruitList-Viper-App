//
//  FruitListPresenter.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation

class FruitListPresenter: FruitListPresenterProtocol {
    var interactor: FruitListInputInteractorProtocol?
    weak var view: FruitListViewProtocol?
    var wireframe: FruitListWireFrameProtocol?
    
    func viewDidLoad() {
        didLoadFruitList()
    }
    
    func didLoadFruitList(){
        interactor?.getFruitListFromClient()
    }
}

extension FruitListPresenter: FruitListOutputInteractorProtocol{
    func fruitListDidFech(_ fruitList: [Fruit]) {
        view?.updateFruitList(fruitList)
    }
}
