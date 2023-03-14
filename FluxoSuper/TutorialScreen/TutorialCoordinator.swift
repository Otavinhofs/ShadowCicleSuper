//
//  TutorialCoordinator.swift
//  FluxoSuper
//
//  Created by Otávio da Silva on 13/03/23.
//

import Foundation
import UIKit

class TutorialCoordinator {
    var mainNavigation: UINavigationController?
    var loansNavigation: UINavigationController?

    init(_ mainNavigation: UINavigationController) {
        self.mainNavigation = mainNavigation
    }
    
    func start(viewController: TutorialViewController) {
        let navigation = UINavigationController(rootViewController: viewController)
        loansNavigation = navigation
        mainNavigation?.present(loansNavigation!, animated: false)
        
        exitLoansNavigation()
    }
    
    func exitLoansNavigation () {
        mainNavigation?.dismiss(animated: false)
    }
    
    deinit {
        print("deinit Coordinator")
    }
}
