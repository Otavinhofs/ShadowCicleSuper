//
//  SecondScreenViewController.swift
//  FluxoSuper
//
//  Created by Otávio da Silva on 14/03/23.
//

import UIKit

class SecondScreenViewController: UIViewController {
    
    var viewModel: TutorialViewModel?
    
    private var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Voltar", for: .normal)
        button.backgroundColor = .yellow
        button.addTarget(self, action: #selector(BackAction), for: .touchUpInside)
        return button
    }()
    
    @objc func BackAction() {
        viewModel?.transitionNavigationForFirstViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        SetupContrains()
    }
    
    init(_ viewModel: TutorialViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
