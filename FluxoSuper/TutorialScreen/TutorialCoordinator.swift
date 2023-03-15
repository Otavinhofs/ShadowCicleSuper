//
//  TutorialCoordinator.swift
//  FluxoSuper
//
//  Created by Otávio da Silva on 13/03/23.
//

import Foundation
import UIKit

class TutorialCoordinator {
    weak var mainNavigation: UINavigationController?
    weak var loansNavigation: UINavigationController?

    init(_ mainNavigation: UINavigationController) {
        self.mainNavigation = mainNavigation
    }
    
    func start(viewController: UIViewController) {
        let navigation = UINavigationController(rootViewController: viewController)
        navigation.isNavigationBarHidden = true
        navigation.modalPresentationStyle = .overFullScreen
        mainNavigation?.present(navigation, animated: false)
        loansNavigation = navigation

    }
    
    func exitLoansNavigation () {
        mainNavigation?.dismiss(animated: false)
    }
    
    deinit {
        print("deinit Coordinator")
    }
}
