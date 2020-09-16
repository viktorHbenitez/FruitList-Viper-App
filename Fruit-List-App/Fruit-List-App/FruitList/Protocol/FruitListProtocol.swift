//
//  FruitListProtocol.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation
import UIKit

protocol FruitListViewProtocol : class {
    func updateFruitList(_ objFruitList : [Fruit])
}

protocol FruitListPresenterProtocol: class {
    // reference of the layer
    var interactor : FruitListInputInteractorProtocol?{get set}
    var view : FruitListViewProtocol? {get set}
    var wireframe : FruitListWireFrameProtocol? {get set}
    // invoke interactor
    func viewDidLoad()
    
    func showFruitSelection(with fruit : Fruit, from view : UIViewController)
}

protocol FruitListInputInteractorProtocol : class {
    var presenter : FruitListOutputInteractorProtocol? {get  set }
    func getFruitListFromClient()
}

protocol FruitListOutputInteractorProtocol : class {
    func fruitListDidFech(_ fruitList : [Fruit])
}

protocol FruitListWireFrameProtocol : class{
    static func createFruitListModule(_ vwFruitList : FruitListView)
    
    func pushToFruitDetail( with fruit : Fruit, from view : UIViewController)
}

