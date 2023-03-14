//
//  TutorialViewModel.swift
//  FluxoSuper
//
//  Created by Otávio da Silva on 13/03/23.
//

import Foundation

class TutorialViewModel {
    var coordinator: TutorialCoordinator?
    
    init(_ coordinator: TutorialCoordinator) {
        self.coordinator = coordinator
    }
    
    deinit {
        print("deinit ViewModel")
    }
}
