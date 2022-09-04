//
//  MainView.swift
//  GuessTheTartget
//
//  Created by Andrii Laptiiev on 03.09.2022.
//

import UIKit

class MainView: UIView {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Choose your game"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    static let buttonConfiguration: UIButton.Configuration = {
        var configuration = UIButton.Configuration.gray()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10.0, leading: 15.0, bottom: 10.0, trailing: 15.0)
        configuration.cornerStyle = .capsule
        return configuration
    }()

    let guessTheNumberButton: UIButton = {
        let button = UIButton(configuration: MainView.buttonConfiguration, primaryAction: nil)
        button.setTitle("Guess the number", for: .normal)
        button.tintColor = .purple
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let guessTheColorButton: UIButton = {
        let button = UIButton(configuration: MainView.buttonConfiguration, primaryAction: nil)
        button.setTitle("Guess the color", for: .normal)
        button.tintColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        titleLabel.font = UIFont(name: "Avenir Next Bold", size: frame.size.width * 0.045)
    }

    func setupView() {
        layer.backgroundColor = UIColor.white.cgColor
        translatesAutoresizingMaskIntoConstraints = false

        addSubview(titleLabel)
        addSubview(guessTheNumberButton)
        addSubview(guessTheColorButton)
    }
}

extension MainView {
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),

            guessTheNumberButton.trailingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: -20),
            guessTheNumberButton.centerYAnchor.constraint(equalTo: centerYAnchor),

            guessTheColorButton.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 20),
            guessTheColorButton.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
