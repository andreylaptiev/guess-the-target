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
        layer.backgroundColor = UIColor.red.cgColor
        translatesAutoresizingMaskIntoConstraints = false

        addSubview(titleLabel)
    }

    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
