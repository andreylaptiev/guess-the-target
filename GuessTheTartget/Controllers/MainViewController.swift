//
//  MainViewController.swift
//  GuessTheTartget
//
//  Created by Andrii Laptiiev on 03.09.2022.
//

import UIKit

class MainViewController: UIViewController {
    let mainView = MainView()


    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setConstraints()
    }

    func setupViews() {
        view.addSubview(mainView)
    }
}

extension MainViewController {
    func setConstraints() {
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }
}
