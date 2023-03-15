//
//  SecondScreenViewController.swift
//  FluxoSuper
//
//  Created by Otávio da Silva on 14/03/23.
//

import UIKit

class SecondScreenViewController: UIViewController {
    
    var tutorialCoordinator: TutorialCoordinator?
    
    private var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Voltar", for: .normal)
        button.backgroundColor = .yellow
        button.addTarget(self, action: #selector(BackAction), for: .touchUpInside)
        return button
    }()
    
    @objc func BackAction() {
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        SetupContrains()
    }

    private func setupUI() {
        view.backgroundColor = .systemBlue
        view.addSubview(backButton)
    }
    
    private func SetupContrains() {
        NSLayoutConstraint.activate([
            backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
}
