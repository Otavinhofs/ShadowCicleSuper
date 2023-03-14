//
//  ViewController.swift
//  FluxoSuper
//
//  Created by Otávio da Silva on 13/03/23.
//

import UIKit

class TutorialViewController: UIViewController {


    private var moveScreenButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Troca", for: UIControl.State.normal)

        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        constrains()
    }
    
    var viewModel: TutorialViewModel
    
    init(_ viewModel: TutorialViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("deinit ViewController")
    }

    private func constrains() {
        view.addSubview(moveScreenButton)
        NSLayoutConstraint.activate([
            moveScreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            moveScreenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}

