//
//  TutorialViewModel.swift
//  FluxoSuper
//
//  Created by Otávio da Silva on 13/03/23.
//

import Foundation
import UIKit

class TutorialViewModel {
    var coordinator: TutorialCoordinator
    
    init(_ coordinator: TutorialCoordinator) {
        self.coordinator = coordinator
    }
    
    func transitionNavigationForFirstViewController() {
        coordinator.popFirstScreen()
    }
    
    func nextScreen() {
        coordinator.nextScreen()
    }
    
    deinit {
        print("deinit ViewModel")
    }
}
