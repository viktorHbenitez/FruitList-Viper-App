//
//  FruitDetailProtocols.swift
//  Fruit-List-App
//
//  Created by Victor Hugo Benitez Bosques on 9/15/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

protocol FruitDetailPresenterProtocol: class {
    
    var wireframe: FruitDetailWireFrameProtocol? {get set}
    var view: FruitDetailViewProtocol? {get set}
    
    //View -> Presenter
    func viewDidLoad()
    func backButtonPressed(from view: UIViewController)
    
}

protocol FruitDetailViewProtocol: class {
    //Presenter -> View
    func showFruitDetail(with fruit: Fruit)
}

protocol FruitDetailWireFrameProtocol: class {
    func goBackToFruitListView(from view: UIViewController)
}

