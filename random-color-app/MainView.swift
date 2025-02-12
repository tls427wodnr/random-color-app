//
//  MainView.swift
//  random-color-app
//
//  Created by tlswo on 2/12/25.
//

import UIKit

class MainView: UIView {

        let titleLabel = UILabel()
        let changeColorButton = UIButton()
        let resetButton = UIButton()

        override init(frame: CGRect) {
            super.init(frame: frame)
            setupView()
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        private func setupView() {
            backgroundColor = .white

            titleLabel.text = "R: 255, G: 255, B: 255"
            titleLabel.textColor = .black
            titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
            titleLabel.textAlignment = .center
            titleLabel.translatesAutoresizingMaskIntoConstraints = false

            changeColorButton.setTitle("Change Color", for: .normal)
            changeColorButton.setTitleColor(.white, for: .normal)
            changeColorButton.backgroundColor = .systemBlue
            changeColorButton.layer.cornerRadius = 10
            changeColorButton.translatesAutoresizingMaskIntoConstraints = false

            resetButton.setTitle("Reset", for: .normal)
            resetButton.setTitleColor(.white, for: .normal)
            resetButton.backgroundColor = .systemGray
            resetButton.layer.cornerRadius = 10
            resetButton.translatesAutoresizingMaskIntoConstraints = false

            addSubview(titleLabel)
            addSubview(changeColorButton)
            addSubview(resetButton)

            NSLayoutConstraint.activate([
                titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),

                changeColorButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                changeColorButton.centerYAnchor.constraint(equalTo: centerYAnchor),
                changeColorButton.widthAnchor.constraint(equalToConstant: 150),
                changeColorButton.heightAnchor.constraint(equalToConstant: 50),

                resetButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                resetButton.topAnchor.constraint(equalTo: changeColorButton.bottomAnchor, constant: 50),
                resetButton.widthAnchor.constraint(equalToConstant: 150),
                resetButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        }

}
