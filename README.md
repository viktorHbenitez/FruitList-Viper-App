# FruitList Viper App

### Description: 
A small app that will show a list of fruit that we will have in our diet plan with the vitamins that they provide to us  

![Version 1](https://github.com/viktorHbenitez/FruitList-Viper-App/blob/master/sketch/version1.png)  

## Guide steps: 
1. Fruit List View
   - Get data from output interactor and show in the tableviewController

2. Fruit Presenter
   - referecen to view, interactor, wireframe
   - invoke method to get fruit from interactor
   - implement output fruit interactor and pass to view
   
   3. Fruit Interactor
   - input
      -  output protocol reference presenter : output
      -  get fruit data from client
   - output protocol
      -  pass data to presenter

4. WireFrame
   - Init list-View
   - push Detail ViewController


### References:
 Installing the clean Swift templates  [medium](https://medium.com/swift2go/installing-the-clean-swift-template-in-xcode-6b4367006827)  
VIPER Design Pattern in iOS  [medium](https://medium.com/swift-india/viper-architecture-example-in-ios-in-swift-4-6f656a441f7c)  

