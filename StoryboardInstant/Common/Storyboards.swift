//
//  Storyboards.swift
//  StoryboardInstant
//
//  Created by Sergey Polkovnikov.
//

import Foundation
import UIKit

// TODO: step 2. Create Storyboard shortcuts.

enum Storyboard: String {
    case Selection
    case Dogs
    case Cats
    
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T: UIViewController>() -> T {
        let identifier = String(describing: T.self)
        guard let viewController = self.instance.instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("Failed to instantiate view controller with identifier \(identifier)")
        }
        return viewController
    }
}
