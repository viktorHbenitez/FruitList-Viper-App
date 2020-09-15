//
//  FruitListInteractor.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation

class FruitListInteractor: FruitListInputInteractorProtocol {
    var presenter: FruitListOutputInteractorProtocol?
    
    func getFruitListFromClient() {
        // Present -> Interactor
        presenter?.fruitListDidFech(allFruitDetailFromCliente())
    }
    
    func allFruitDetailFromCliente() -> [Fruit]{
        var fruitList = [Fruit]()
        let allFruitDetail = Common.generateDataList()
        for item in allFruitDetail {
            fruitList.append(Fruit(attributes: item))
        }
        return fruitList
    }
    
    
}
