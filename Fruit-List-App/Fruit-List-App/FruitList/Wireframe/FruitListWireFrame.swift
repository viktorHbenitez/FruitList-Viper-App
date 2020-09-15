//
//  FruitListWireFrame.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation

class FruitListWireFrame: FruitListWireFrameProtocol {
    
    
    class func createFruitListModule(_ vwFruitList: FruitListView) {
        
        // instance layers
        let presenter : FruitListPresenterProtocol & FruitListOutputInteractorProtocol = FruitListPresenter()
        
        // instance references wiht View
        vwFruitList.presenter = presenter
        vwFruitList.presenter?.wireframe = FruitListWireFrame()
        vwFruitList.presenter?.interactor = FruitListInteractor()
        vwFruitList.presenter?.view = vwFruitList
        vwFruitList.presenter?.interactor?.presenter = presenter
    }
}
