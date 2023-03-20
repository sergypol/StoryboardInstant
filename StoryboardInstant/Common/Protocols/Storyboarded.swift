//
//  Storyboarded.swift
//  StoryboardInstant
//
//  Created by Sergey Polkovnikov.
//

import Foundation
import UIKit

// TODO: step 3. Create Storyboarded protocol.

protocol Storyboarded {
    static func containingStoryboard() -> Storyboard
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let controller: Self = containingStoryboard().viewController()
        return controller
    }
}
