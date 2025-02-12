//
//  ViewController.swift
//  random-color-app
//
//  Created by tlswo on 2/12/25.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()

     override func loadView() {
         view = mainView
     }
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         mainView.changeColorButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
         mainView.resetButton.addTarget(self, action: #selector(resetColor), for: .touchUpInside)
     }

     @objc private func changeColor() {
         let randomRed = Int.random(in: 0...255)
         let randomGreen = Int.random(in: 0...255)
         let randomBlue = Int.random(in: 0...255)

         let randomColor = UIColor(
             red: CGFloat(randomRed) / 255.0,
             green: CGFloat(randomGreen) / 255.0,
             blue: CGFloat(randomBlue) / 255.0,
             alpha: 1.0
         )

         mainView.titleLabel.text = "R: \(randomRed), G: \(randomGreen), B: \(randomBlue)"
         mainView.backgroundColor = randomColor
     }
     
     @objc private func resetColor() {
         mainView.titleLabel.text = "R: 255, G: 255, B: 255"
         mainView.backgroundColor = .white
     }

}
