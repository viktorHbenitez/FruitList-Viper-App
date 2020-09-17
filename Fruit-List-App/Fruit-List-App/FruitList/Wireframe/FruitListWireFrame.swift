//
//  FruitListWireFrame.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation
import UIKit

class FruitListWireFrame: FruitListWireFrameProtocol {
    func pushToFruitDetail(with fruit: Fruit, from view: UIViewController) {
        
        // instance viewController with its WireFrame
        if let fruitDetailViewController = view.storyboard?.instantiateViewController(identifier: "FruitDetailView") as? FruitDetailView{
            // intance the layer in the Viper architectural
            FruitDetailWireFrame.createFruitDetail(fruit, from: fruitDetailViewController)
            view.navigationController?.pushViewController(fruitDetailViewController, animated: true)
            
        }
    }
    
    
    
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
