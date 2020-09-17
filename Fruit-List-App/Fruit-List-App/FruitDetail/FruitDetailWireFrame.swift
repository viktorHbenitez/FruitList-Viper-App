//
//  FruitDetailWireFrame.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class FruitDetailWireFrame: FruitDetailWireFrameProtocol {
    
    class func createFruitDetail(_ objFruit : Fruit, from view : FruitDetailView){
        let presenter = FruitDetailPresenter()
        presenter.objFruit = objFruit
        view.presenter = presenter
        view.presenter?.wireframe = FruitDetailWireFrame()
        view.presenter?.view = view
    }
    
    
    func goBackToFruitListView(from view: UIViewController) {
        
    }
    
    
    deinit {
        print("FruitDetailWireFrame removed")
    }


}
