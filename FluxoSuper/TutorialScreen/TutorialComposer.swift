//
//  TutorialComposer.swift
//  FluxoSuper
//
//  Created by Otávio da Silva on 13/03/23.
//

import Foundation
import UIKit

class TutorialComposer {
    static func startScene(_ mainNavigation: UINavigationController) {
        var coordinator: TutorialCoordinator? = TutorialCoordinator(mainNavigation)
        var viewModel: TutorialViewModel? = TutorialViewModel(coordinator!)
        var viewController: TutorialViewController? = TutorialViewController(viewModel!)
        
        coordinator?.start(viewController: viewController!)
    }
}
