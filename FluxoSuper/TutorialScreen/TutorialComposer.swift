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
        let coordinator: TutorialCoordinator? = TutorialCoordinator(mainNavigation)
        let viewModel: TutorialViewModel? = TutorialViewModel(coordinator!)
        let viewController: TutorialViewController? = TutorialViewController(viewModel!)
        
        coordinator?.start(viewController: viewController!)
    }
}
