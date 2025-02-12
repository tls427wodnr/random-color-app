//
//  ViewController.swift
//  random-color-app
//
//  Created by tlswo on 2/12/25.
//

import UIKit

class MainScreen: UIViewController {
    
    let titleLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        titleLabel.text = "R: 255, G: 255, B: 255"
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let changeColorButton = UIButton()
        changeColorButton.setTitle("Change Color", for: .normal)
        changeColorButton.setTitleColor(.white, for: .normal)
        changeColorButton.backgroundColor = .systemBlue
        changeColorButton.layer.cornerRadius = 10
        changeColorButton.translatesAutoresizingMaskIntoConstraints = false
        changeColorButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        
        let resetButton = UIButton()
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(.white, for: .normal)
        resetButton.backgroundColor = .systemGray
        resetButton.layer.cornerRadius = 10
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.addTarget(self, action: #selector(resetColor), for: .touchUpInside)
        
        view.addSubview(titleLabel)
        view.addSubview(changeColorButton)
        view.addSubview(resetButton)
    
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            changeColorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeColorButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            changeColorButton.widthAnchor.constraint(equalToConstant: 150),
            changeColorButton.heightAnchor.constraint(equalToConstant: 50),
            
            resetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resetButton.topAnchor.constraint(equalTo: changeColorButton.bottomAnchor,constant: 50),
            resetButton.widthAnchor.constraint(equalToConstant: 150),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    @objc func changeColor() {
        let randomRed = Int.random(in: 0...255)
        let randomGreen = Int.random(in: 0...255)
        let randomBlue = Int.random(in: 0...255)
        let randomColor = UIColor(
            red: CGFloat(randomRed) / 255.0,
            green: CGFloat(randomGreen) / 255.0,
            blue: CGFloat(randomBlue) / 255.0,
            alpha: 1.0
        )
        titleLabel.text = "R: \(randomRed), G: \(randomGreen), B: \(randomBlue)"
        view.backgroundColor = randomColor
    }
    
    @objc func resetColor() {
        titleLabel.text = "R: 255, G: 255, B: 255"
        view.backgroundColor = .white
    }

}

