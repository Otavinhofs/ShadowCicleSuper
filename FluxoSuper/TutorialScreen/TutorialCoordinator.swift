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
    
    func popFirstScreen() {
        let viewModel: TutorialViewModel = TutorialViewModel(self)
        let firstScreenViewController = TutorialViewController(viewModel)
        loansNavigation?.popViewController(animated: true)
    }
    
    func nextScreen() {
        let viewModel: TutorialViewModel = TutorialViewModel(self)
        let secondScreenViewController = SecondScreenViewController(viewModel)
        loansNavigation?.pushViewController(secondScreenViewController, animated: true)
    }
    
    deinit {
        print("deinit Coordinator")
    }
}
