//
//  DogsViewController.swift
//  StoryboardInstant
//
//  Created by Sergey Polkovnikov.
//

import UIKit

class DogsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension DogsViewController: Storyboarded{
    static func containingStoryboard() -> Storyboard {
        return .Dogs
    }
}
